# 변수 (Variable)
# 어떤 값(Literal) 하나를 담기 위한 이름 지어진 메모리 공간
date = 250819
name = '이주원'

print(date)
print(name)

# 대입연산자 : 좌항의 공간에 우항의 값을 대입
num = 10
num = 50
print(num)

# 10 = num (X)
# num + 1 = 20 (X)
m = 100
n = m + 10
m = 200
print(n)

'''
변수명 작성요령
1. 대소문자를 구분한다.
2. 변수명은 snake casing을 사용한다. (단어와 단어사이를 _로 연결)
3. 한글 변수명을 지정할 수 있다. (하지만 인코딩 등의 문제를 야기할 수 있으므로 사용을 지양한다.)
4. 언더바(_)를 제외한 특수문자를 사용할 수 없고, 숫자로 시작할 수 없다.
5. 파이썬 예약어(if, elif, else, for, while, …)를 사용할 수 없다.
6. **직관적인 변수명**을 사용한다. 짧고 간편하다고, a, b, c와 같은 변수명을 사용하지 않는다.
'''

team_name = "Ohgiraffers"
Team_name = "오지라퍼스"
print(team_name, Team_name)

역이름 = '독산역'
print(역이름)

# 사용자 아이디
user_id = 'rabbit'

# 상품 가격
product_price = 10000