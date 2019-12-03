## 클래스

> - **C**lass(대문자): Object의 Type
>
> - obj = Cal() **생성자함수, 속성 변수 초기화 =>\_\_init\_\_**
>
> > **_\_init\_\_ **: 변수를 초기화 

<br>

![class1](https://user-images.githubusercontent.com/57430754/72130824-f75b1b00-33bd-11ea-8b7e-f78c5861d7a7.png)

<br>

---

## 객체지향 프로그래밍

> ### 1. 객체 추출 = 역할 정하기
>
> ### 2. Class 표현

<br>

![class2](https://user-images.githubusercontent.com/57430754/72130832-fa560b80-33bd-11ea-9682-5eff9070af8d.png)

<br>

### 예제

![class3](https://user-images.githubusercontent.com/57430754/72130835-fb873880-33bd-11ea-87a4-8851f4669a16.png)

![class4](https://user-images.githubusercontent.com/57430754/72130843-fd50fc00-33bd-11ea-82a3-d5196a26919e.png)

<br>

---

| **Enemy**         | 클래스명 |
| ----------------- | -------- |
| **x: inty: 정수** | 속성명   |
| **+display()**    | 메소드명 |

<br>

![class5](https://user-images.githubusercontent.com/57430754/72131112-a7308880-33be-11ea-9008-d9c08ee4f223.png)

<br>

---

<br>

## 클래스의 상속

> - 상속은 부모 코드를 물려받지만,  카피하 듯 자식 코드에게 물려주지 않고, **변경 가능한(삭제X) 코드** 전달.
>
> - 삭제X, 변경O, 추가O

"클래스에 기능을 추가하고 싶으면 기존 클래스를 수정하면 되는데 왜 굳이 상속을 받아서 처리해야 하지?" 라는 의문이 들 수도 있다.

하지만

***기존 클래스가 (남이 준)라이브러리 형태로 제공되거나 수정이 허용되지 않는 상황이라면 상속을 사용해야 한다. (일부만 마음에 드는 경우, 처음부터 짜기 싫으면 상속 받고 변경하면 됨!)**

<br>

![inheritance1](C:\Users\student\Desktop\inheritance1.png)

<br>

![inheritance2](C:\Users\student\Desktop\inheritance2.png)

<br>

---

