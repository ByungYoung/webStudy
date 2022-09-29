# servlet = Server + Applet

* 데이터 전송방식
```
get : 데이터 조회 요청
post : 데이터 생성 요청
put : 데이터 수정 요청
delete : 데이터 삭제 요청
```

* get 방식
```
1. URL에 데이터를 포함시켜 요청 (Query string 방식)
2. 데이터를 패킷의 Header에 포함하여 전송
3. 전송하는 데이터의 길이에 한계 (1024 Byte)
4. 캐싱 가능함 (보안에 취약함)
```

