---
layout: post
title: Peplography—a passive 3D photon counting imaging through scattering media
category: lablog
tags: DA
---
# [Peplography—a passive 3D photon counting imaging through scattering media](https://opg.optica.org/ol/abstract.cfm?uri=ol-41-22-5401)
This paper is written by Prof. Myungjin Cho, and Prof. Bahram Javidi at Hankyung National University and University of Connecticut, respectively.<br/>
This review consists of [Theory](#Theory), [Result](#Result), and codes. <br/>
The paper is written in a simple structure, so everyone can easily follow. <br/>

## Introduction
To overcome the harsh visible conditions, several methods have been proposed. <br/>
This paper assumed more hazy images than other papers. <br/>

## Theory
This method is consistent with the two theories, the [Fog Estimation Method](#fog-estimation-method) and the [Restore the decreased intensity through the Photon counting detection model](#restore-the-decreased-intensity-through-the-photon-counting-detection-model).


### Fog Estimation Method
In this theory, we learned the novel dynamic passive imaging technique through scattering media by directly detecting ballistic photons emanating from objects based on statistical optics. <br/>
It is assumed that the intensity and phase of the light propagating through scattering media are randomized.<br/>
To estimate scattering media from a single peplogram, we apply a statistical estimation method, such as maximum likelihood estimation(MLE). <br/>
We assume that the scattering media are composed of many scattering parts with dimensions of $$w_x \times w_y$$ . <br/>
The scattering media is modeled by a **Gaussian distribution** with a sample mean $$\mu_{ij}$$ and variance $$\sigma^2_{ij}$$, where $$i$$ and $$j$$ are the indices of each scattering part in the $$x$$ and $$y$$ directions, respectively.<br/>
The random variables are denoted as:<br/>
$$
X_{ij}(m,n) = I_p(i+m-1, j+n-1),
$$
$$
\begin{aligned}
i &= 1, 2, 3, ..., N_x - w_x + 1 ,\\
j &= 1, 2, 3, ..., N_y - w_y + 1 ,
\end{aligned}
$$
$$
\begin{aligned}
for \\
m &= 1, 2, 3, ..., w_x ,\\
n &= 1, 2, 3, ..., w_y ,
\end{aligned}
$$
where $$X_{ij}$$ is a $$i$$th column and $$j$$th row local area of a peplogram, $$I_p$$ is the pixel intensity of the peplogram, and $$N_x$$, $$N_y$$ are the total number of pixels i the $$x$$ and $$y$$ directions of the peplogram, respectively.
We estimate the scattering media by finding the unknown parameter $$\mu_{ij}$$ (Sample mean) of a Gaussian distribution using the MLE method as follows:
$$
\begin{aligned}
L(X_{ij}(m,n)|\mu_{ij}, \sigma^2_{ij})
&= \prod^{w_x}_{m=1}\prod^{w_y}_{n=1}\frac{1}{\sqrt{2\pi \sigma^2_{ij}}}exp\left[-\frac{\{x_{ij}(m,n)-\mu_{ij}\}^2}{2\sigma^2_{ij}}\right],
\\
&= \frac{1}{\sqrt{2\pi \sigma^2_{ij}}}exp\left[-\sum^{w_x}_{m=1}\sum^{w_y}_{n=1}\frac{\{x_{ij}(m,n)-\mu_{ij}\}^2}{2\sigma_{ij}}\right].
\end{aligned}
$$
After applying the log transform, we obtain as follows:
$$
l\left\{X_{ij}(m,n)|\mu_{ij},\sigma^2_{ij}\right\}=log\left(\frac{1}{\sqrt{2\pi \sigma^2_{ij}}}\right) - \sum^{w_x}_{m=1}\sum^{w_y}_{n=1}\frac{\{x_{ij}(m,n)-\mu_{ij}\}^2}{2\sigma^2},
$$
The estimated scattering medium is
$$
\begin{aligned}
\hat{\mu}_{ij} &= arg \left[max_{\mu_{ij}}l\{X_{ij}(m,n)|\mu_{ij}\}\right], \\
&=\frac{1}{w_xw_y}\sum^{w_x}_{m=1}\sum^{w_y}_{n=1}x_{ij}(m,n),
\end{aligned}
$$
The peplogram $$I'_p$$ after removing the scattering media is expressed by the following equation:


### Restore the decreased intensity through the Photon counting detection model.

## Result


