# SafetyTrip_Spring

##동작 방법

1. 먼저 table.sql을 돌려 DB를 세팅해준다.
2. api 패키지에 있는 ApiExplorer.java와 GoogleMapAPI.java 자바프로그램을 동작시켜준다.
3. 서버를 실행한다.

Spring version

- com.config

DB와 연동되는 정보를 가지고 있는 jdbc.properties와 DB의 정보를 sql문을 사용해 제어하는 Mapper.xml로 구성 되어있다.

- com.controller

API 서버, 도시/국가 정보 검색, 도시/국가별 상세페이지의 정보, 각 도시/국가별 호텔 정보, 각 도시/국가별 안정 정보 등을 제공해주는 기능을 한다. 게시판 형태로 볼 수 있도록 데이터를 재가공해서 보내준다.

- com.dao

MyBatis를 사용해 DB 연동작업을 할 때 service와 mapper.xml 사이에서 연동 역할을 해준다. 트랜잭션 단위로 mapper를 통해 DB의 데이터를 제어하고 결과값을 service로 넘겨준다.

- com.dto

도시, 국가, 호텔, 유저, 안전 정보 등 웹 서비스에서 필요한 정보를 객체로 저장하고 사용하게 해준다. class 형태로, 생성자를 사용해 객체를 생성하며 getter, setter 메서드로 해당 객체에 데이터를 저장하고 사용한다.

- com.exception

임의로 만들어낸 excption class이다. 발생한 에러를 캐치하여 message로 전달하는 기능을 수행한다.

- com.filter

클라이언트에서 서버로 요청이 올 때 filter의 역할을 수행하며, UTF-8을 사용해 한글 깨짐을 방지한다.

- com.service

controller와 dao 사이에서 DB 연동 작업을 수행하며, 제어할 내용과 데이터에 관한 사항을 dao로 전달하고 리턴값을 받아 controller로 수행 결과를 알려준다.
