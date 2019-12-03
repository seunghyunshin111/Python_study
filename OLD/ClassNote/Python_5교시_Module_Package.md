## 모듈

> ### - 다른 사람들이 만들어 놓은 것 '모듈'
>
> ### - 모듈화 function, 객체 지향 가능!
>
> ### - 확장자명 .py

<br>

![module](https://user-images.githubusercontent.com/57430754/72131202-eb238d80-33be-11ea-9509-b15e8be5d130.png)

<br>

### mod1 모듈을 import할 때는 좀 이상한 문제가 생긴다. 명령 프롬프트 창에서 다음을 따라해 보자.

<br>

```python
C:\Users\pahkey> cd C:\doit
C:\doit> python
Type "help", "copyright", "credits" or "license" for more information.
>>> import mod1
5
2
```

> import mod1을 수행하는 순간 mod1.py가 실행되어 결괏값을 출력한다.
>
> 따라서 아래와 같이 변경해야 한다.

<br>

```python
# mod1.py 
def add(a, b): 
    return a+b

def sub(a, b): 
    return a-b

if __name__ == "__main__":
    print(add(1, 4))
    print(sub(4, 2))
```

> `if __name__ == "__main__"`을 사용하면, 직접 파일 실행( `C:\doit>python mod1.py` )처럼 
>
>  `__name__ == "__main__"`이 참이 되어 if문 다음 문장이 수행된다.
>
> 반대로
>
> 대화형 인터프리터나 다른 파일에서 이 모듈을 불러서 사용할 때는 `__name__ == "__main__"`이 거짓이 되어 if문 다음 문장이 수행되지 않는다.

---

**`__name__` 변수란?**

- `__name__` 변수: 파이썬이 내부적으로 사용하는 특별한 변수 이름

- 만약 `C:\doit>python mod1.py`처럼 직접 mod1.py 파일을 실행할 경우 mod1.py의 `__name__` 변수에는 `__main__` 값이 저장
- 하지만 파이썬 셸이나 다른 파이썬 모듈에서 mod1을 import 할 경우에는 mod1.py의 `__name__` 변수에는 mod1.py의 모듈 이름 값 mod1이 저장

<br>

<br>

---

## 패키지

> - 도트(.)를 사용하여 파이썬 모듈을 계층적(디렉터리 구조)으로 관리할 수 있게 해준다.
>
> - 모듈 이름이 A.B   => A: 패키지 이름, B: A 패키지의 B 모듈

---

## 중요한 함수

> ## filter
>
> ## map
>
> ## zip