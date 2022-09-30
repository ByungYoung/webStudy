# JSP (Java Server Page)
* Servlet의 단점 보안 -> html에 Java코드 작성
* 로직구현 : Servlet / HTML중심의 코드 : JSP
```
* 자바를 기반한 스크립드 언어
* jsp파일 컴파일 시 java(Servlet 형식) -> class 변환 후 html파일로 변환한다.
```
```
C:\Users\{Username}\Documents\{ProjectName}\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\{}\org\apache\jsp\.java .class
```
* 구성요소
```
1. 지시자 : Directive (<%@)
2. 선언문 : Declaration (<%!)
  - 변수, 메소드 선언에 사용됨
3. 스크립트릿 : Scriptlet (<%)
4. 표현식 (<%=)
```

* 지시자
```
page : JSP페이지의 전체적인 환경설정, Java의 import 설정
taglib : 라이브러리를 가져와서 사용하기 위함
include : 구성요소의 포함을 알려주기 위함
```
