---
layout: post
title : Filter Study
category: lablog
tags: SoC, filter
---
# Filter Study
## 1. 기본 개념
---
### 필터의 종류
1. FIR (Finite Impulse Response)
   필터의 길이가 한정적이고 설계가 쉬우며, 신호를 쉽게 처리 할 수 있다. **영상처리에서는 FIR**을 주로 사용한다<br/>
2. IIR (Infinite Imapuls Response)
   필터의 길이가 무한하며 필터의 특성이 좋다. 하지만 설계가 어렵고, 신호를 처리하기 힘들다.<br/>

### 공간 필터링 (Spatial filtering)
   공간 필터링이란 영상에 있는 주파수 대역을 제거하거나 강조하는 필터 처리를 말한다.<br/>
   
### 주파수(High frequency, Low freqeuncy)
   1. Spatial frequency : 공간적으로 얼마나 자주 밝기 또는 색상이 변하는가를 말한다. 또한 공간주파수가 클수록 밝기 또는 색상이 자주 변하는것이고, 공간주파수가 작을수록 밝기 또는 색상이 드물게 바뀌는 것이다.<br/>
   2. High frequency : 밝기의 변화가 빠르거나 색의 변화가 급격한 곳<br/>
   3. Low frequency : 밝기의 변화가 느리거나 색의 변화가 적은 곳<br/>
   ![img](https://github.com/Jongpil0911/Jongpil0911.github.io/assets/141693086/b25cf535-9e79-4c99-9062-324b6cee2958)

### 주파수 응답 (Frequency response)
주파수응답이란 진폭이 일정한 다양한 주파수의 입력신호가 어떤 시스템에 들어왔을때, 어떤 응답을 내는지 측정하는것. <br/>
필터의 주파수 응답을 확인함으로써 필터의 계수에 따라 서로 다른 필터 특성을 확인할 수 있다. <br/>
예를 들어 저주파를 통과시키는 LPF(Low Pass Filter)의 주파수 응답은 주파수가 커질수록 낮아진다.<br/>
반면 고주파를 통과시키는 HPF(High Pass Filter)의 주파수 응답은 주파수가 커질수록 높아진다.

### Group delay
Group Delay란 신호가 필터 내부를 통과하면서 발생한 Time delay을 말한다.<br/>
필터를 설계할 때, Group Delay를 보는 이유는 **필터의 안정성을 보기 위함**이다.<br/>
예를 들어, 필터의 Group Delay가 모든 주파수 영역에서 동일하게 나온다면 **모든 신호가 동일한 지연을 가진다**고 할 수 있고, 이는 **신호의 왜곡이 생기지 않음**을 의미한다.<br/>
따라서 Group Delay가 모든 주파수 영역에서 일정하다는 것은 필터가 안정하다는 말과 같다.<br/>
그러므로 필터를 설계할 때는 Group Delay를 작게 만드는 것이 중요하다.

### CZP (Circular Zone Plate)
Zone Plate란 빛을 포함한 **파동의 초점**을 맞추는데 사용되는 장치이며, CZP (Circular Zone Plate) 또한



