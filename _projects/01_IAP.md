---
layout: page
title: "The future of poultry:"
description: Introduction to the In-Ovo Sexing Project
img: assets/img/HSC/NHK.jpg
importance: 1
category:
  - Academic-Industrial
  - Graduate
related_publications: true
tags:
  - "#HSC"
  - "#NARO"
  - "#KIT"
---
# Introduction: Ethical In-Ovo Sexing
In the modern poultry industry, the traditional practice of culling day-old male chicks has become a major ethical and environmental burden.
European countries, such as Germany, have already begun prohibiting this practice, pushing the industry toward **in-ovo sexing**—determining the sex before hatching.





# The Core Technology: Non-destructive Optical Analysis
The system utilizes advanced computer vision and deep learning to analyze the internal state of the egg without causing any damage.
- **Early Detection**: The analysis is performed on the 3rd day of incubation, significantly reducing resource waste.
- **High Precision**: The AI model achieves a discrimination accuracy of up to **97%**
- **Zero Damage**: Using



### Related Organization:

- [HITACHI Solutions Create, Ltd.](https://www.hitachi-solutions-create.co.jp) (HSC)
- [National Agriculture and Food Research Organization](https://www.naro.go.jp/english/index.html) (NARO)
- [Kyushu Institute of Technology](https://www.kyutech.ac.jp/english/) (Kyutech)

### Related Articles and Patents:

- AI Identifies Chicken Embryo Gender with 97% Accuracy to Cut Costs: Hitachi Affiliate and Partners Developed New Technology [Link](https://news.web.nhk/newsweb/na/na-k10015034661000) [pdf](https://www.kyutech.ac.jp/archives/025/202601/press260122.pdf)
- Joint Development of Technology by HSC, NARO, and Kyushu Institute of Technology (Kyutech) for Nondestructive Pre-hatching Sex Determination for Eggs on the 3 Day of Incubation [Link](https://www.nikkei.com/article/DGXZQOSG2245J0S6A120C2000000/)
- 雌雄判定システム及び雌雄判定方法 (Sex Identification service provision system and sex identification service provision method)<br/>Japan Patent Application No. 2025-154965
---
# Disclaimer
This post is based on publicly available information reported by [NHK](https://news.web.nhk/newsweb/na/na-k10015034661000) and [Nikkei](https://www.nikkei.com/article/DGXZQOSG2245J0S6A120C2000000/), and academic trends cited from [Corion et al. (2023)](https://link.springer.com/article/10.1186/s40104-023-00898-1).
Specific proprietary model architectures and internal datasets are omitted to comply with the **N**on-**D**isclosure **A**greement (NDA).
%% 
Every project has a beautiful feature showcase page.
It's easy to include images in a flexible 3-column grid format.
Make your photos 1/3, 2/3, or full width.

To give your project a background in the portfolio page, just add the img tag to the front matter like so:

    ---
    layout: page
    title: project
    description: a project with a background image
    img: /assets/img/12.jpg
    ---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Caption photos easily. On the left, a road goes through a tunnel. Middle, leaves artistically fall in a hipster photoshoot. Right, in another hipster photoshoot, a lumberjack grasps a handful of pine needles.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    This image can also have a caption. It's like magic.
</div>

You can also put regular text between your rows of images, even citations {% cite einstein1950meaning %}.
Say you wanted to write a bit about your project before you posted the rest of the images.
You describe how you toiled, sweated, _bled_ for your project, and then... you reveal its glory in the next row of images.

<div class="row justify-content-sm-center">
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    You can also have artistically styled 2/3 + 1/3 images, like these.
</div>

The code is simple.
Just wrap your images with `<div class="col-sm">` and place them inside `<div class="row">` (read more about the <a href="https://getbootstrap.com/docs/4.4/layout/grid/">Bootstrap Grid</a> system).
To make images responsive, add `img-fluid` class to each; for rounded corners and shadows use `rounded` and `z-depth-1` classes.
Here's the code for the last row of images above:

{% raw %}

```html
<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/6.jpg" title="example image"
    class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm-4 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/11.jpg" title="example image"
    class="img-fluid rounded z-depth-1" %}
  </div>
</div>
```

{% endraw %}
 %%