---
layout: post
title: Peplography—a passive 3D photon counting imaging through scattering media
category: lablog
tags: Dehaze, review
---
# [Peplography—a passive 3D photon counting imaging through scattering media](https://opg.optica.org/ol/abstract.cfm?uri=ol-41-22-5401)
This paper is written by Prof. Myungjin Cho, and Prof. Bahram Javidi at Hankyung National University and University of Connecticut, respectively.<br/>
This review consists of [Theory](#Theory), [Result](#Result), and codes. <br/>
The paper is written in a straightforward structure, making it easy for everyone to follow. <br/>

## Introduction
To overcome the harsh visible conditions, several methods have been proposed. <br/>
This paper assumed more hazy images than other papers. <br/>

## Theory
This method is consistent with the two theories, the [Fog Estimation Method](#fog-estimation-method) and the [Restore the decreased intensity through the Photon counting detection model](#restore-the-decreased-intensity-through-the-photon-counting-detection-model).<br/>

| ![Reference image](/assets/img/Peplography/2K_DCI_0030.png) | ![Hazy image](/assets/img/Peplography/2K_DCI_0039.png) |
|:---:|:---:|
|Reference image|Hazy image|
### Fog Estimation Method
In this theory, we learned the novel dynamic passive imaging technique through scattering media by directly detecting ballistic photons emanating from objects based on statistical optics. <br/>
It is assumed that the intensity and phase of the light propagating through scattering media are randomized.<br/>
To estimate scattering media from a single peplogram, we apply a statistical estimation method, such as **m**aximum **l**ikelihood **e**stimation(MLE). <br/><br/>
![Hazy image](/assets/img/Peplography/2K_DCI_0039.png)

We assume that the scattering media are composed of many scattering parts with dimensions of $w_x \times w_y$ . <br/>
The scattering media is modeled by a **Gaussian distribution** with a sample mean $\mu_{ij}$ and variance $\sigma^2_{ij}$ , where $i$ and $j$ are the indices of each scattering part in the $x$ and $y$ directions, respectively.<br/>
The random variables are denoted as:<br/>

$$
\begin{aligned}
X_{ij}(m,n) &= I_p(i+m-1, j+n-1),\\

i &= 1, 2, 3, ..., N_x - w_x + 1 ,\\
j &= 1, 2, 3, ..., N_y - w_y + 1 ,\\

for \\
m &= 1, 2, 3, ..., w_x ,\\
n &= 1, 2, 3, ..., w_y ,
\end{aligned}
$$

where $X_{ij}$ is a $i$th column and $j$th row local area of a peplogram, $I_p$ is the pixel intensity of the peplogram, and $N_x$ , $N_y$ are the total number of pixels i the $x$ and $y$ directions of the peplogram, respectively. <br/><br/>
We estimate the scattering media by finding the unknown parameter $\mu_{ij}$ (Sample mean) of a Gaussian distribution using the MLE method as follows:<br/>

$$
\begin{aligned}
L(X_{ij}(m,n)|\mu_{ij}, \sigma^2_{ij})
&= \prod^{w_x}_{m=1}\prod^{w_y}_{n=1}\frac{1}{\sqrt{2\pi \sigma^2_{ij}}}exp\left[-\frac{\{x_{ij}(m,n)-\mu_{ij}\}^2}{2\sigma^2_{ij}}\right],
\\
&= \frac{1}{\sqrt{2\pi \sigma^2_{ij}}}exp\left[-\sum^{w_x}_{m=1}\sum^{w_y}_{n=1}\frac{\{x_{ij}(m,n)-\mu_{ij}\}^2}{2\sigma_{ij}}\right].
\end{aligned}
$$

After applying the log transform, we obtain as follows:<br/>

$$
l\left\{X_{ij}(m,n)|\mu_{ij},\sigma^2_{ij}\right\}=log\left(\frac{1}{\sqrt{2\pi \sigma^2_{ij}}}\right) - \sum^{w_x}_{m=1}\sum^{w_y}_{n=1}\frac{\{x_{ij}(m,n)-\mu_{ij}\}^2}{2\sigma^2},
$$

The estimated scattering medium is<br/>

$$
\begin{aligned}
\hat{\mu}_{ij} &= arg \left[max_{\mu_{ij}}l\{X_{ij}(m,n)|\mu_{ij}\}\right], \\
&=\frac{1}{w_xw_y}\sum^{w_x}_{m=1}\sum^{w_y}_{n=1}x_{ij}(m,n),
\end{aligned}
$$

![Estimated scattering media](/assets/img/Peplography/Estimated_haze.png)

The peplogram $I'_p$ after removing the scattering media is expressed by the following equation:<br/>

$$
I'_p(i,j)=I_p(i,j)-\hat{\mu}_{ij}
$$

![Removed hazy image](/assets/img/Peplography/Removed_haze.png)
### Restore the decreased intensity through the Photon counting detection model.

To recover the dropped intensity in reconstruction image, we use the Photon counting detection model. <br/>
A Photon counting model is expressed as follows:<br/>

$$
\widetilde{I}_p(i,j)=\frac{I'_p(ij)}{\sum_i\sum_jI'_p(i,j)}
$$

where $I'_p$ is the processed peplogram and $$(w_x, w_y)$$ are the scattering windows local dimensions used in the previous estimation, respectively. <br/>
The reconstructed peplogram using photon counting model is<br/>

$$
\hat{I}_p(i,j)|\widetilde{I}_p(i,j) \sim Poisson[\gamma_c N_p \widetilde{I}_p(i,j)],
$$

where $N_p$ , $c$ , and $\gamma_c$ are the expected number of the ballistic photons from the normalized irradiance peplogram, the index of the color channels (R, G, and B) and the coefficient of the ballistic photons from each color channel, respectively.<br/>
Here, several ballistic photons may be extracted at a single pixel by multiplying coefficient $\gamma_c N_p$ with the highest probability of Photon distribution.<br/>
Therefore, the reconstructed image can be obtained.<br/>
For each basic color channel(i.e., R, G, and B), different coefficients should be applied to the normalized irradiance peplogram.<br/>
The coefficients of the ballistic photons $\gamma_c$ can be defined with R, G, and B channels by<br/>

$$
\gamma_c = \frac{\eta}{h\overline{\nu}_c},
$$

where $\eta$ represents the quantum efficiency, which represents the average number of photo-events produced by each incident photon $(\eta \geq 1)$; $h$  represents Planck's constant, and $\overline{\nu}_c$ represents mean optical frequency of the radiation, respectively. <br/>
Thus, they can be set to be 1.4497, 1.1270, and 1, respectively, because we set B channel as the reference and the average wavelengths of each color channel and set to be 685nm (R:620 ~ 750nm), 532.5nm (G:495 ~ 570nm), and 472.5nm (B:450 ~ 495nm), respectively.<br/>

![Reconstructed image](/assets/img/Peplography/Peplography_9.png)

## Result
Compare with the reference image shows below<br/>

| ![Reference image](/assets/img/Peplography/2K_DCI_0030.png) | ![Reconstructed image](/assets/img/Peplography/Peplography_9.png) |
|:---:|:---:|
|Reference image|Reconstructed image|


To more detail comparison we show the all images

| ![Reference image](/assets/img/Peplography/2K_DCI_0030.png) | ![Hazy image](/assets/img/Peplography/2K_DCI_0039.png) | ![Reconstructed image](/assets/img/Peplography/Peplography_9.png) |
|:---:|:---:|:---:|
|Reference image|Hazy image|Reconstructed image|

- [Notebook](https://colab.research.google.com/drive/1msC7tYO8n1hpu7yZarVyYON7iiARgOKh)

## Related  paper
- [Peplography—a passive 3D photon counting imaging through scattering media](https://opg.optica.org/ol/abstract.cfm?uri=ol-41-22-5401)
