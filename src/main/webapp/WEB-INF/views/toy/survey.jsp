<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/commons.css" />
  </head>
  <body>
    <%@ include file= "header.jsp" %>
  
  <% ArrayList<HashMap<String, Object>> question_list =  (ArrayList<HashMap<String, Object>>)request.getAttribute("question_list"); %>
  <% ArrayList<HashMap<String, Object>> answer_list =  (ArrayList<HashMap<String, Object>>)request.getAttribute("answer_list"); %>
 
  <% HashMap<String, Object> question_bundle = new HashMap<>(); %>
  <% HashMap<String, Object> answer_bundle = new HashMap<>(); %>

  <% String question; %>
  <% String question_uid; %>
  <% String answer; %>
  <% String answer_uid; %>

  <% String order_question; %>

  <%-- 선언 끝 --%>

<div style="margin : 0% 10%">

  <form action="/surveyResultServlet" method="post" class="border border-3 m-5 container">

    <%-- 질문 출력 --%>
    <div class="container" style="margin : 0% 30%">
    <%-- 텍스트센터안되고있음 --%>
    <div class="justify-content-center">
    <p class="fs-2 mt-5">설문 페이지</p>
    <p class="mb-5">(하나의 질문에 한 가지 답항만 선택 가능합니다.)</p>
    <div>
    <% for(int i=0; i<question_list.size(); i++) { %>
      <% question_bundle = question_list.get(i); %>
      <% question = (String)question_bundle.get("QUESTION"); %>
      <% question_uid = (String)question_bundle.get("QUESTION_UID"); %>

      <% order_question = (String)question_bundle.get("ORDERS"); %>
      <div class="mb-3"> <%= order_question%>. <%= question %> </div>  
      </div>
    <%-- 여기까지가 질문 --%>

      <div>
    <%-- 1번질문일경우 이어폰 헤드셋 출력 --%>
      <% if(i==0){ %>

        <% for(int j=5; j<answer_list.size(); j++) { %>
          <% answer_bundle = answer_list.get(j); %>
          <% answer = (String)answer_bundle.get("ANSWER"); %>
          <% answer_uid = (String)answer_bundle.get("ANSWER_UID"); %>
            <% if(j==5){ %>
          <input type="radio" class="form-check-input mb-5" name="<%= question_uid %>" value="<%= answer_uid %>" id="<%= question_uid + answer_uid %>">
            <% } else{ %>
          <input type="radio" class="form-check-input mb-5" name="<%= question_uid %>" value="<%= answer_uid %>" id="<%= question_uid + answer_uid %>">
            <% } %>
          <label for="<%= question_uid + answer_uid %>" class="form-check-label me-3"> <%= answer %> &nbsp</label>
        <% } %>

      <% }else { %>
      <%-- 1번이 아닌경우/ 2번부터는 아니다 그렇다 출력 --%>
        <% for(int j=0; j<answer_list.size()-3; j++) { %>  

          <% answer_bundle = answer_list.get(j); %>
          <% answer = (String)answer_bundle.get("ANSWER"); %>
            <% answer_uid = (String)answer_bundle.get("ANSWER_UID"); %>
          <%-- ID를 QUESTION의 UID로 맞춰서 같은 질문끼리 중복 선택 안되도록 --%>
            <% if(j==0){ %>
            <input type="radio" class="form-check-input mb-5" name="<%= question_uid %>" value="<%= answer_uid %>" id="<%= question_uid + answer_uid %>">
            <% } else{ %>
            <input type="radio" class="form-check-input mb-5" name="<%= question_uid %>" value="<%= answer_uid %>" id="<%= question_uid + answer_uid %>">
            <% } %>
          <label for="<%= question_uid + answer_uid %>" class="form-check-label me-3"> <%= answer %> &nbsp</label>
        <% } %>
      <% } %>
    <% } %>
    </div>

    </div>
    </div>
  <%-- 여기서 for 끝 --%>


  <%-- submit 버튼 --%>

        <div class="row mt-5">
          <div class="col-5"></div>
          <button type="submit" class="btn btn-primary mb-5 col-2" 
          onclick="if(confirm('제출하시겠습니까?')) return true; 
          else return false;">작성 완료</button>
        </div>

  </form>
</div>





<%-- ---------------------------------------------------------------------------------- --%>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <%@ include file= "footer.jsp" %>
  </body>
</html>