# Servlet
* Web Dynamic Project
```
* target runtime 이 설정한 server 확인
```

* Servlet lifetime
```
1. Servlet(.java -> class file) HttpServlet상속 받는 클래스
2. 상속받음 (부모 클래스가 가지고 있는 메소드 재사용, 재정의)
3. 생성자 -> init -> service(like : java main methoa) -> destroy
4. Request 발생시 Service만 동작
```

* Servlet output
```
1. return response
2. 응답 객체 : response
3. 응답과 관련된 객체 안에서 PrintWriter 객체를 가져옴
-> PrintWriter out = response.getWriter()
4. 한글 인코딩 : response.setContentType("text/html; charset = UTF-8"
5. out.print(html 태그 작성 가능)
```

* Servlet (Why to use?)
```
1. Static page 가 아닌 Dynamic page를 만들어야 한다.
-> 사용자, 시간, 장소에 따른 다른 결과값을 보여주기 위함이다,
2. java 언어의 다양한 문법을 사용할 수 있다.
```

* html to Servlet
```
1. html에서 Servlet 데이터 전송 : Form 태그
2. 전송 3가지 조건 : action, name, submit
* action : servlet url mapping 값을 넣는다.
```

* 데이터 전송방식
```
get : 데이터 조회 요청
post : 데이터 생성 요청
put : 데이터 수정 요청
delete : 데이터 삭제 요청
```

* Get 방식 (Default)
```
1. URL에 데이터를 포함시켜 요청 (Query String 방식)
2. 데이터를 패킷의 Header에 포함하여 전송
3. 전송하는 데이터의 길이에 한계
-> Google Chrome allows the maximum length of the URL to be of the size 2MB (2,097,152 characters)
4. 캐싱 가능함 (보안에 취약함)
```

* Post 방식
```
1. Url에 데이터를 노출하지 않고 요청
2. 데이터를 패킷의 Body에 담아 전송
3. 전송하는 데이터의 길이에 제한이 없음
4. 캐싱할 수 없음 (보안에 강함)
```

* Servlet에서 요청 값을 가져오는 방법
```
1. 요청과 관련된 데이터 객체 : request
2. post 방식으로 한글값을 받아오는 경우 한글 인코딩
-> request.setCharacterEncoding("UTF-8")
3. 값 꺼내오기
-> String name = request.getParameter("name값");
4. 숫자 값변환
-> Integer.parseInt(name)
5. checkbox와 같이 동일한 name값을 갖는 여러개의 데이터를 받아오는 방법
-> String[] hobby = request.getParamterValues("hobby")
```
