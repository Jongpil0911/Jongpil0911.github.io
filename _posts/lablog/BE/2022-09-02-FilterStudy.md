---
layout: post
title : Filter Study
category: lablog
tags: SoC
---
# Filter Study
## 1. 기본 개념
### &emsp;1) 필터의 종류
   &emsp;&emsp;&emsp; 1) FIR (Finite Impulse Response)<br/>
      &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;필터의 길이가 한정적이고 설계가 쉬우며, 신호를 쉽게 처리 할 수 있다. 영상처리에서는 FIR을 주로 사용한다<br/>
   &emsp;&emsp;&emsp; 2) IIR (Infinite Imapuls Response)<br/>
      &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;필터의 길이가 무한하며 필터의 특성이 좋다. 하지만 설계가 어렵고, 신호를 처리하기 힘들다.<br/>
      
### &emsp; 2) 공간 필터링 (Spatial filtering)
   &emsp;&emsp;&emsp; 공간 필터링이란 영상에 있는 주파수 대역을 제거하거나 강조하는 필터 처리를 말한다.<br/>
   
### 3) 주파수(High frequency, Low freqeuncy)
   &emsp;&emsp;&emsp; 1) Spatial frequency : 공간적으로 얼마나 자주 밝기 또는 색상이 변하는가를 말한다. 또한 공간주파수가 클수록 밝기 또는 색상이 자주 변하는것이고, 공간주파수가 작을수록 밝기 또는 색상이 드물게 바뀌는 것이다.<br/>
   &emsp;&emsp;&emsp; 2) High frequency : 밝기의 변화가 빠르거나 색의 변화가 급격한 곳<br/>
   &emsp;&emsp;&emsp; 3) Low frequency : 밝기의 변화가 느리거나 색의 변화가 적은 곳<br/>
   ![img](https://github.com/Jongpil0911/Jongpil0911.github.io/assets/141693086/b25cf535-9e79-4c99-9062-324b6cee2958)

### 4) 주파수 응답 (Frequency response)
   &emsp;&emsp;&emsp; 주파수응답이란 진폭이 일정한 다양한 주파수의 입력신호가 어떤 시스템에 들어왔을때, 어떤 응답을 내는지 측정하는것.<br/>
   필터의 주파수 응답을 확인함으로써 필터의 계수에 따라 서로 다른 필터 특성을 확인할 수 있다. 예를 들어 
