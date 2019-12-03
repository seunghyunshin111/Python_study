## Web Service

### network = I/O

> 원격으로 떨어져 있는 데이터 이동

---

- Web Service: 24시간 언제 어디서든!

> 24시간 어디서든 서비스 제공하는 서버 하나와,
>
> 누구든지 받을 수 있도록 하는 것이 필요했음

---

<br>

전세계 공통 규격(프로토콜): TCP/IP

웹의 경우: Http

---

html을 써서 페이지를 만들면 화려한 ui, gui 기반의 웹페이지 만들 수 있음

단점은 좀 무거워.

```html
<h1> = 스타일 + 명령어가 같이 있다. (html)
    Needs: "이미지만 빨리 보고 싶어, 텍스트가 뭐가 필요해!"
</h1>
```

```xml
그래서 나온: Xml (그래도 meta 정보가 무겁다)
```

```json
최종 등장: json!!!  (Key:Value 만 있음!)
- 하둡(대용량 데이터), 웹페이지 등에 많이 이용
- 파이어폭스!(크롬 같은 거) 쓰면 제이슨 열면 되게 잘 보임!!
(카테고리별, 계층별)
```

- 개발자 등 크롬이 가장 좋지만, 사실 파이어 폭스도 개발자에게 굉장히 좋다!

<br>

---

## SVM

이상치 하나 버려서 더 정확하게 결정 경계를 찾을 수 있으려면

분포도 봐서 이상치 보는 게 가장 간단!

---

# .pkl

<br>

- AI (Web) server를 구축하고자 한다.
- 페이지 단어로 구분을 두려고 한다. 하나를 html로 만든다.
- 클라이언트가 AI 서비스 받고 싶다고 요청하면
- AI 서버가 clf에 저장되어 있는 파이썬 객체 정보를 요청/응답을 받아와야 하는 상황이다. 이 때,
- 상호작용할 수 있는 페이지가 필요하다. (Html + Python)을 함께 쓸 수있는 페이지가 필요하다. ( *.py) 이다.
- *.py 안에 Html + python 둘 다 구현할 수 있다. 

> ex) lang-Webapp.py

- clf는 다른 페이지에서 구현한 것이기 때문에 다른 페이지의 정보를 가져오는 격. 그래서 clf를 따로 저장해야해. => **pickle** 모듈을 이용해 객체 정보를 저장! (학습 정보를 포함한 모든 정보가 pickle에 저장됨.)

- 언어마다 객체가 저장되는 방식(구조)은 다 다르다.(파이썬, 자바, C++ 등)

  > 파이썬 => 자바로 읽으려면 변환 과정을 거쳐야 한다.

- 최종 모형은 .pkl 안에 저장

<br>

---

https://www.editplus.com/   국내 개발

https://www.w3schools.com/html/default.asp

**HTML 학습툴**

---

Web Page = HTML + CSS + Java Script

html: 구조(tree), text 내용 설계

css: 디자인!, Style

Java Script: 동적인 이벤트 작업, 마우스를 클릭하면 뭐가 뜬다던가 etc.

---

Css와 html은 각각 parser가 다르다.

html에서 css기능인 컬러를 설정하려면 parser 설정해줘야 한다. (자바 스크립트도 마찬가지.) 

---

```html
<!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <style type="text/css">
	h1{
		color: #991199
		border-color: solid
		border-width: 1px
		border-style: red
		<!-- (border: 하위 속성, 테두리)-->
	}
  </style>
```

