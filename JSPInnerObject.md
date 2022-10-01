# JSP 내장객체 scope (유효할 수 있는 범위)
* 4가지 종류의 Scope가 존재
```
1. pageContext[page] : (하나의 JSP페이지를 처리할 때 사용되는 영역)
2. request : 하나의 요청을 처리할 때 사용하는 영역
3. session : 하나의 브라우저와 관련된 영역
4. application : 하나의 웹 애플리케이션과 관련된 영역
```

* Page Scope
```
요청된 Page 내부
-> Type (page context)
 : 지역 변수처럼 JSP에서 활용 할때
 : JSTL / EL 사용시
```

* Request Scope
```
요청/응답 페이지
-> Type (request : HttpServletRequest)
 : Forward 방식으로 데이터 전달
```

* Session Scope
```
Web Brower 종료 또는 설정 시간 동안
-> Type (session : HttpSession)
 : 사용자 별 정보를 저장할 때
```

* Applicatoin Scope
```
tomcat 실행하는 동안 어디서나 사용가능
-> Type (application : ApplicationContext)
 : 공지 작성용으로 사용
```

* Redirct
```
<URL 주소가 바뀐다.>
1. 요청/응답 2번
2. request 한번 초기화
3. 외부 서버로 요청 가능
```

* Forward
```
<URL 주소가 바뀌지 않는다.>
1. 요청/응답 1번
2. request 유지 가능
3. 프로젝트 내에서만 요청 가능
4. jsp파일명을 감출 수 있다.
```
