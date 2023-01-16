<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>home</title>
  </head>

  <body>
    <div>jstl form</div> <%-- 37p~~ --%>
    <%-- fmt ==> 원하는 데이터 형식으로 바꿔줌 --%>
    2023.01.16 10:18.50  -> 2023 1 16   <%-- 여러 단계를 거쳐야 함.  이것을 한번에 해줌. --%>
    <hr>
    <div>&nbsp jstl Formats - Number</div>
    <%-- 변수이름은 var 값은 value --%>
     <c:set var="num_first" value="1234567.89"/>
    <div>num_first = ${num_first}</div>
    <div>세자리 구분 : <fmt:formatNumber value="${num_first}" type="number" /> </div>
    <div>백분율 표시 : <fmt:formatNumber value="${num_first}" type="percent" /> </div> 
    <%--계산은 모두 하고 넘겨야함--%>
     <c:set var="num_second" value="0.1234"/>
    <div>백분율 표시2 : <fmt:formatNumber value="${num_second}" type="percent" /> </div> 
    <hr/>
    <div>&nbsp jstl Formats - Date</div>
    <%-- Date date_first = new java.util.Date() 이것과 같은 형식 --%>
    <c:set var="date_first" value="<%= new java.util.Date() %>"  />
    <div>값 출력 : ${date_first} </div>
    <div>time 출력 : <fmt:formatDate value="${date_first}" type="time"  /> </div> <%--type 말고도 여러 타입이 있음--%>
    <div>date 출력 : <fmt:formatDate value="${date_first}" type="date"  /> </div>
    <div>date and time 출력 : <fmt:formatDate value="${date_first}" type="both"  />  </div>
   
    <div>&nbsp jstl Formats - Location</div>
    <div>Local code : http://www.lingoes.net/en/translator/langcode.htm </div>
     <c:set var="num_third" value="1234567.89" />
     <c:set var="date_third" value="<%= new java.util.Date() %>" />

<%-- 인터넷 브라우저의 버전 문제로 코드는 맞지만 적용은 안됨. --%>
    <div>대한민국 : <fmt:setLocale value="ko-KR" scope="session"/><%=response.getLocale() %> </div> <%-- 셋 로컬 : 나라 설정 --%>
    <div>통화 : <fmt:formatNumber value="${num_third}" type="currency"  /> </div>
    <div>날짜 : <fmt:formatDate value="${date_third}" type="both"  /> </div>
        <div>&nbsp</div>
    <div>미국 : <fmt:setLocale value="en-US" scope="session" /> <%=response.getLocale() %> </div>
    <div>통화 : <fmt:formatNumber value="${num_third}" type="currency"  /> </div>
    <div>날짜 : <fmt:formatDate value="${date_third}" type="both"  /> </div>
        <div>&nbsp</div>
    <div>일본 : <fmt:setLocale value="js-JP" scope="session" /> <%=response.getLocale() %> </div>
    <div>통화 : <fmt:formatNumber value="${num_third}" type="currency"  /> </div>
    <div>날짜 : <fmt:formatDate value="${date_third}" type="both"  /> </div>


  </body>
</html>
