<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>statics</title>
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
  <div class="container-fluid p-4">
    

       <div style="margin : 0% 20%" class="m-5">
      <!-- "INSERT INTO SURVEY_DATA(QUESTION_UID, ANSWER_UID, USER_UID) VALUES( -->
      <div class="mt-3 mb-3 m-3">
    <div>
<%-- 하드코딩으로 일단 해결해두자 --%>
  <% 
   String q1 = request.getParameter("Q1"); //62232
  String q2 = request.getParameter("Q2");
  String q3 = request.getParameter("Q3");
  String q4 = request.getParameter("Q4");
  String q5 = request.getParameter("Q5");
 
  // 무선이어폰
  int a6_q21 = 1, a6_q22 = 1, a6_q23 = 0, a6_q24 = 0, a6_q25 = 0;
  int a6_q31 = 1, a6_q32 = 0, a6_q33 = 1, a6_q34 = 0, a6_q35 = 0;
  int a6_q41 = 1, a6_q42 = 1, a6_q43 = 0, a6_q44 = 0, a6_q45 = 0;
  int a6_q51 = 2, a6_q52 = 0, a6_q53 = 0, a6_q54 = 0, a6_q55 = 0;
 // 헤드셋
  int a7_q21 = 0, a7_q22 = 0, a7_q23 = 0, a7_q24 = 0, a7_q25 = 1;
  int a7_q31 = 0, a7_q32 = 0, a7_q33 = 0, a7_q34 = 1, a7_q35 = 0;
  int a7_q41 = 0, a7_q42 = 0, a7_q43 = 0, a7_q44 = 0, a7_q45 = 1;
  int a7_q51 = 0, a7_q52 = 0, a7_q53 = 0, a7_q54 = 1, a7_q55 = 0;
 //유선이어폰
  int a8_q21 = 0, a8_q22 = 0, a8_q23 = 0, a8_q24 = 1, a8_q25 = 0;
  int a8_q31 = 0, a8_q32 = 0, a8_q33 = 1, a8_q34 = 0, a8_q35 = 0;
  int a8_q41 = 0, a8_q42 = 0, a8_q43 = 0, a8_q44 = 1, a8_q45 = 0;
  int a8_q51 = 0, a8_q52 = 0, a8_q53 = 0, a8_q54 = 0, a8_q55 = 1;
  %> 


  <% 
      if(q1.equals("A6")){
     // 무선이어폰 질문 2
      if(q2.equals("A1")) a6_q21++;
      else if(q2.equals("A2")) a6_q22++;
      else if(q2.equals("A3")) a6_q23++;
      else if(q2.equals("A4")) a6_q24++;
      else if(q2.equals("A5")) a6_q25++;
     //질문 3
      if(q3.equals("A1")) a6_q31++;
      else if(q3.equals("A2")) a6_q32++;
      else if(q3.equals("A3")) a6_q33++;
      else if(q3.equals("A4")) a6_q34++;
      else if(q3.equals("A5")) a6_q35++;
      //질문 4
      if(q4.equals("A1")) a6_q41++;
      else if(q4.equals("A2")) a6_q42++;
      else if(q4.equals("A3")) a6_q43++;
      else if(q4.equals("A4")) a6_q44++;
      else if(q4.equals("A5")) a6_q45++;
      //질문 5 
      if(q5.equals("A1")) a6_q41++;
      else if(q5.equals("A2")) a6_q52++;
      else if(q5.equals("A3")) a6_q53++;
      else if(q5.equals("A4")) a6_q54++;
      else if(q5.equals("A5")) a6_q55++;
    }

          if(q1.equals("A7")){
     // 헤드셋 질문 2
      if(q2.equals("A1")) a7_q21++;
      else if(q2.equals("A2")) a7_q22++;
      else if(q2.equals("A3")) a7_q23++;
      else if(q2.equals("A4")) a7_q24++;
      else if(q2.equals("A5")) a7_q25++;
     //질문 3
      if(q3.equals("A1")) a7_q31++;
      else if(q3.equals("A2")) a7_q32++;
      else if(q3.equals("A3")) a7_q33++;
      else if(q3.equals("A4")) a7_q34++;
      else if(q3.equals("A5")) a7_q35++;
      //질문 4
      if(q4.equals("A1")) a7_q41++;
      else if(q4.equals("A2")) a7_q42++;
      else if(q4.equals("A3")) a7_q43++;
      else if(q4.equals("A4")) a7_q44++;
      else if(q4.equals("A5")) a7_q45++;
      //질문 5 
      if(q5.equals("A1")) a7_q41++;
      else if(q5.equals("A2")) a7_q52++;
      else if(q5.equals("A3")) a7_q53++;
      else if(q5.equals("A4")) a7_q54++;
      else if(q5.equals("A5")) a7_q55++;
    }

           if(q1.equals("A8")){
      //유선이어폰 질문 2
      if(q2.equals("A1")) a8_q21++;
      else if(q2.equals("A2")) a8_q22++;
      else if(q2.equals("A3")) a8_q23++;
      else if(q2.equals("A4")) a8_q24++;
      else if(q2.equals("A5")) a8_q25++;
     //질문 3
      if(q3.equals("A1")) a8_q31++;
      else if(q3.equals("A2")) a8_q32++;
      else if(q3.equals("A3")) a8_q33++;
      else if(q3.equals("A4")) a8_q34++;
      else if(q3.equals("A5")) a8_q35++;
      //질문 4
      if(q4.equals("A1")) a8_q41++;
      else if(q4.equals("A2")) a8_q42++;
      else if(q4.equals("A3")) a8_q43++;
      else if(q4.equals("A4")) a8_q44++;
      else if(q4.equals("A5")) a8_q45++;
      //질문 5 
      if(q5.equals("A1")) a8_q41++;
      else if(q5.equals("A2")) a8_q52++;
      else if(q5.equals("A3")) a8_q53++;
      else if(q5.equals("A4")) a8_q54++;
      else if(q5.equals("A5")) a8_q55++;
    }
  

    %> 



<div style="margin : 5% 20%">
       <table class="table text-center mt-3" border="3">
        <tr class="bg-primary bg-opacity-25">
          <th colspan="6">무선이어폰</th>
        </tr>
        <tr>
          <th>질문</th>
          <th>전혀 아니다</th>
          <th>아니다</th>
          <th>보통이다</th>
          <th>그렇다</th>
          <th>매우 그렇다</th>
        </tr>

        <tr>
          <td>현재 사용중인 제품의 가격이 적당하다고 생각하십니까?</td>
          <td> <%= a6_q21 %> </td> 
          <td> <%= a6_q22 %> </td>
          <td> <%= a6_q23 %> </td>
          <td> <%= a6_q24 %> </td>
          <td> <%= a6_q25 %> </td>
        </tr>
        <tr>
          <td>사용중인 제품의 음향은 만족스러우신가요?</td>
          <td><%= a6_q31 %></td>
          <td><%= a6_q32 %></td>
          <td><%= a6_q33 %></td>
          <td><%= a6_q34 %></td>
          <td><%= a6_q35 %></td>
        </tr>
        <tr>
          <td>사용중인 제품의 음향은 만족스러우신가요?</td>
          <td><%= a6_q41 %></td>
          <td><%= a6_q42 %></td>
          <td><%= a6_q43 %></td>
          <td><%= a6_q44 %></td>
          <td><%= a6_q45 %></td>
        </tr>
        <tr>
          <td>사용중인 제품은 사용이 편리한가요?</td>
          <td><%= a6_q51 %></td>
          <td><%= a6_q52 %></td>
          <td><%= a6_q53 %></td>
          <td><%= a6_q54 %></td>
          <td><%= a6_q55 %></td>
        </tr>

       </table>
      </div>

      <div style="margin : 5% 20%">
       <table class="table text-center" border="3">
        <tr class="bg-primary bg-opacity-25">
          <th colspan="6">헤드셋</th>
        </tr>
        <tr>
          <th>질문</th>
          <th>전혀 아니다</th>
          <th>아니다</th>
          <th>보통이다</th>
          <th>그렇다</th>
          <th>매우 그렇다</th>
        </tr>

        <tr>
          <td>현재 사용중인 제품의 가격이 적당하다고 생각하십니까?</td>
          <td> <%= a7_q31 %> </td>
          <td> <%= a7_q32 %> </td>
          <td> <%= a7_q33 %> </td>
          <td> <%= a7_q34 %> </td>
          <td> <%= a7_q35 %> </td>
        </tr>
        <tr>
          <td>사용중인 제품의 음향은 만족스러우신가요?</td>
          <td> <%= a7_q31 %> </td>
          <td> <%= a7_q32 %> </td>
          <td> <%= a7_q33 %> </td>
          <td> <%= a7_q34 %> </td>
          <td> <%= a7_q35 %> </td>
        </tr>
        <tr>
          <td>사용중인 제품의 디자인은 만족스러우신가요?</td>
          <td> <%= a7_q41 %> </td>
          <td> <%= a7_q42 %> </td>
          <td> <%= a7_q43 %> </td>
          <td> <%= a7_q44 %> </td>
          <td> <%= a7_q45 %> </td>
        </tr>
        <tr>
          <td>사용중인 제품은 사용이 편리한가요?</td>
          <td> <%= a7_q51 %> </td>
          <td> <%= a7_q52 %> </td>
          <td> <%= a7_q53 %> </td>
          <td> <%= a7_q54 %> </td>
          <td> <%= a7_q55 %> </td>
        </tr>
 
       </table>
      </div>
      
      <div style="margin : 0% 20%">
       <table class="table text-center" border="3">
        <tr class="bg-primary bg-opacity-25">
          <td colspan="6">유선이어폰</td>
        </tr>
        <tr>
          <th>질문</th>
          <th>전혀 아니다</th>
          <th>아니다</th>
          <th>보통이다</th>
          <th>그렇다</th>
          <th>매우 그렇다</th>
        </tr>

        <tr>
          <td>현재 사용중인 제품의 가격이 적당하다고 생각하십니까?</td>
          <td> <%= a8_q21 %> </td>
          <td> <%= a8_q22 %> </td>
          <td> <%= a8_q23 %> </td>
          <td> <%= a8_q24 %> </td>
          <td> <%= a8_q25 %> </td>
        </tr>
        <tr>
          <td>사용중인 제품의 음향은 만족스러우신가요?</td>
          <td> <%= a8_q31 %> </td>
          <td> <%= a8_q32 %> </td>
          <td> <%= a8_q33 %> </td>
          <td> <%= a8_q34 %> </td>
          <td> <%= a8_q35 %> </td>
        </tr>
        <tr>
          <td>사용중인 제품의 디자인은 만족스러우신가요?</td>
          <td> <%= a8_q41 %> </td>
          <td> <%= a8_q42 %> </td>
          <td> <%= a8_q43 %> </td>
          <td> <%= a8_q44 %> </td>
          <td> <%= a8_q45 %> </td>
        </tr>
        <tr>
          <td>사용중인 제품은 사용이 편리한가요?</td>
          <td> <%= a8_q51 %> </td>
          <td> <%= a8_q52 %> </td>
          <td> <%= a8_q53 %> </td>
          <td> <%= a8_q54 %> </td>
          <td> <%= a8_q55 %> </td>
        </tr>
 
       </table>
      </div>

    </div>   <%-- 여기까지 table  --%>



  <div> <%-- body의 div--%>
      

<%-- --------------- --%>






<%-- ---------------------- --%>
  <footer class="mt-5 opacity-75">
        <div>
          Git address :
          <a href="https://github.com/keamy-eun/html_ToyTermProject.git"
            >github.com/keamy-eun/html_ToyTermProject.git</a
          >
        </div>
        <div>Email address : anxi0015@gmail.com / eun.wonki014@gmail.com</div>
      </footer>
       <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <hr />
    <a href="./index.html" class="fs-5" target="_self">Index</a>
  </body>
</html>
