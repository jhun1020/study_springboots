<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />

<div class="container">
	<form action ="/commonCodeOur/form" method="get"> 
		<button class="btn btn-info"
		>Form(Insert)</button>
	</form>

<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr class="text-center">
			<th><input type="checkbox" id="selectall" /></th>
          <th>사용자고유번호</th>
          <th>이름</th>
          <th>아이디</th>
          <th>비밀번호</th>
          <th>전화번호</th>
          <th>생년월일</th>
          <th>이메일</th>
          <th>문자수신여부</th>
          <th>이메일수신여부</th>
          <th>회원정보수정</th>
          <th>회원삭제</th>
		</tr>
	</thead>
	<tbody>
	<%-- row단위로 나온다는데 ??? --%>
		<c:forEach items="${resultMap}" var="resultData" varStatus="loop">
			<tr>
        <td></td>
				<td>
        <%--사용자고유번호--%>
           ${resultData.USER_UID}
				</td>
				<td>
        <%--이름--%>
          ${resultData.NAME}
        </td> 
				<td>
          ${resultData.ID}
				</td>
				<td>
          ${resultData.PASSWORD}
				</td>
        <td>
          ${resultData.PHONE_NUMBER}
				</td>
        <td>
          ${resultData.BIRTHDAY}
				</td>
        <td>
          ${resultData.EMAIL}
				</td>
        <td>
          ${resultData.SMS_AD}
				</td>
        <td>
          ${resultData.EMAIL_AD}
				</td>
        
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
<!-- /.table-responsive -->