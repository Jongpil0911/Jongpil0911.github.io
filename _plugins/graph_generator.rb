require 'json'

module Jekyll
  class GraphGenerator < Generator
    safe true
    priority :low

    def generate(site)
      graph_data = {
        "nodes" => [],
        "links" => []
      }

      site.posts.docs.each do |doc|
        graph_data["nodes"] << {
          "id" => doc.url,
          "title" => doc.data["title"],
          "group" => 1
        }

        content = doc.content
        # Regex to find standard markdown links [text](url)
        content.scan(/\[.*?\]\((.*?)\)/).each do |match|
          link_url = match[0]
          
          # Determine if link is internal
          baseurl = site.config['baseurl'].to_s
          is_internal = false

          if link_url.start_with?("/")
             is_internal = true
          elsif baseurl != "" && link_url.include?(baseurl)
             is_internal = true
          elsif !link_url.start_with?("http") && !link_url.start_with?("https") && !link_url.start_with?("mailto:")
             # Relative link or other internal reference
             is_internal = true
          end

          if is_internal
             # Clean up anchor tags
             target_url = link_url.split('#').first
             
             graph_data["links"] << {
               "source" => doc.url,
               "target" => target_url,
               "value" => 1
             }
          end
        end
      end
      
      # Create a virtual page for the JSON file
      page = PageWithoutAFile.new(site, site.source, "assets/json", "graph.json")
      page.content = JSON.pretty_generate(graph_data)
      page.data["layout"] = nil
      page.data["permalink"] = "/assets/json/graph.json"
      
      site.pages << page
    end
  end
end
