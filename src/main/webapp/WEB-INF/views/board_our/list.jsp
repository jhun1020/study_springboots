<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
</head>

<body>
    <div>board/list</div>
    <div>
    <%
       String firstWithRequest = (String)request.getAttribute("firstString");
    %>
        <div>With Request.getAttribute : <%= firstWithRequest %></div>
    </div>
    <div>
        <div>With Get Value on Spring  JSP : ${firstString}, ${boardList}</div>
    </div>

    <%-- <@ if(){} %>  기존에 쓰던 이런 방식이 아니라 JSTL로 할 것임.--%>
    <%-- IF문 사용할 때 주의할 점 그냥 기호 사용하지 말고 EL연산자 기호 사용해야한다. --%>
        <%-- if문 equal  --%>
    <c:if test="${firstString eq 'firstValue'}"> 
        <h3>Matching : String eq 'firstValue</h3>
    </c:if >  

        <%-- if문 변수에 값 넣고 if문 not equal --%>
    <c:set var="firstString" value="good" />
    <c:if test="${firstString ne 'firstValue'}">
        <h3>not Matching : String eq 'good</h3>
    </c:if>
        <%-- 비교 연산자 --%>
    <c:set var="num_first" value="10" />
    <c:if test="${num_first gt 5}">
        <h4> greater than 5 , num_first = ${num_first} </h4>
    </c:if>
<hr>
    <%-- if else 같은 구문 --%>
    <div>JSTL switch</div>
    <c:choose>
        <c:when test="${num_first eq 3}">
            num_first eq 3이다
        </c:when>
        <c:when test="${num_first eq 10}">
            num_first eq 10이다
        </c:when>
        <c:otherwise>
        <%-- switch의 default와 같음 --%>
            num_first 는 default값이다.
        </c:otherwise>
    </c:choose>
    <hr>
    <div>JSTL for</div>
    <%-- boardList 는 datainfors에 어레이리스트로 담아서 넘어온 값. --%>
    <%-- for(int i=0; i<boardList.size(); i++){BoardBean value = boardList.get(i)} --%>
    <%-- var은 내부에서 사용하기 위해 선언한 변수명 --%>
    <c:forEach items="%{boardList}" var="board" varStatus="status">
    <%-- for(BoardBean board : boardList) {}   이 모양과 유사함.--%>
    <%-- <div> ${board.title} : </div> --%>
    <div> ${status.count}, ${status.index}, ${status.first}, ${status.last} </div>
    <%-- count는 1부터 index는 0부터 --%>
     </c:forEach>

    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th scope=>#</th>
                    <th scope=class="">Title</th>
                    <th scope=class="">Title with Path</th>
                    <th scope=>user name</th>
                    <th scope=>date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <%-- view로 넘어가는 서블렛(컨트롤러)의 파라미터에 @RequestParam String uid 추가해야 하낟. --%>
                    <th scope=>1</th>
                    <td><a href="/board_our/view?uid=Hello">Hello</a></td>
                    <td><a href="/board_our/view/Hello">Hello</a></td>
                    <td>Mark</td>
                    <td>22.11.11</td>
                </tr>
                <tr>
                    <th scope=>2</th>
                    <td><a href="/board_our/view?uid=Otto">Otto</a></td>
                    <td><a href="/board_our/view/Otto">Otto</a></td>
                    <td>Mark</td>
                    <td>22.11.11</td>
                </tr>
                <tr>
                    <th scope=>3</th>
                    <td><a href="/board_our/view?uid=Jasco">Jasco</a></td>
                    <td><a href="/board_our/view/Jasco">Jasco</a></td>
                    <td>Mark</td>
                    <td>22.11.11</td>
                </tr>
                
            </tbody>
        </table>

        <div>
            <form action="/board_our/form"><button>form</button></form>
        <div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>
</body>

</html>
