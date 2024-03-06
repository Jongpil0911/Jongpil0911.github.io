---
layout: post
title : Filter Study
category: Blog
tags: SoC
---
# Filter Study
## 1. 기본 개념<br/>
### 1) 필터의 종류<br/>
   &emsp;&emsp;&emsp;&emsp; 1) FIR (Finite Impulse Response)<br/>
      &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;필터의 길이가 한정적이고 설계가 쉬우며, 신호를 쉽게 처리 할 수 있다. 영상처리에서는 FIR을 주로 사용한다<br/>
   &emsp;&emsp;&emsp;&emsp; 2) IIR (Infinite Imapuls Response)<br/>
      &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;필터의 길이가 무한하며 필터의 특성이 좋다. 하지만 설계가 어렵고, 신호를 처리하기 힘들다.<br/>
      
### 2) 공간 필터링 (Spatial filtering)<br/>
   &emsp;&emsp;&emsp;&emsp;공간 필터링이란 영상에 있는 주파수 대역을 제거하거나 강조하는 필터 처리를 말한다.<br/>
   
### 3) 주파수(High frequency, Low freqeuncy)<br/>
   &emsp;&emsp;&emsp;&emsp; 1) Spatial frequency : 공간적으로 얼마나 자주 밝기 또는 색상이 변하는가를 말한다. 또한 공간주파수가 클수록 밝기 또는 색상이 자주 변하는것이고, 공간주파수가 작을수록 밝기 또는 색상이 드물게 바뀌는 것이다.<br/>
   &emsp;&emsp;&emsp;&emsp; 2) High frequency : 밝기의 변화가 빠르거나 색의 변화가 급격한 곳<br/>
   &emsp;&emsp;&emsp;&emsp; 3) Low frequency : 밝기의 변화가 느리거나 색의 변화가 적은 곳<br/>

### 4) 주파수 응답 (Frequency response)<br/>
   &emsp;&emsp;&emsp;&emsp; 주파수응답이란