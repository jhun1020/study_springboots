<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
<div class="container">
<c:set var="form_action" value="update"/>
<c:if test="${empty resultMap}"> 
<%-- 조건 : resultMap이 비어있다면  --%>
	<c:set var="form_action" value="insert"/>
</c:if>

<%-- resultMap값이 비어있다면 insert 아니라면 update --%>
<form action="/toy/${form_action}" method="post">


<%-- <input type="hidden" name="REGISTER_SEQ" value="UUID-1111-1111111" >
<input type="hidden" name="MODIFIER_SEQ" value="UUID-1111-1111111" >
<%-- ??? --%>
<%--  --%>
<%-- <input type="hidden" name="PARENT_COMMONCODE_CODE_ID" value="${resultMap.PARENT_COMMONCODE_CODE_ID}"> --%>

<%-- UID --%>
<div class="form-group form-row">
	<div class="col">
		<label>USER_UID</label> <input class="form-control" type="text"
			name="USER_UID" value="${resultMap.USER_UID}"
			required ${form_action == "update" ? "readonly" : ""} />
            <%-- 폼액션이 UPDATE라면 UID를 변경할 수 없게 READONLY로 지정하는 FUNC --%>
	</div>
</div>
<%-- NAME --%>
<div class="form-group form-row">
	<div class="col">
		<label>이름 </label> <input class="form-control" type="text"
			name="NAME" value="${resultMap.NAME}" placeholder="이름을 작성하세요" required ${statusDisabled}/>
	</div>
</div>

<%-- ID --%>
<div class="form-group form-row">
	<div class="col">
		<label>ID</label>
        <input class="form-control" type="text"
            name="ID" value="${resultMap.ID}" required ${statusDisabled}/>
	</div>
</div>

<%-- PASSWORD --%>
<div class="form-group form-row">
	<div class="col">
		<label>PASSWORD</label>
        <input class="form-control" type="text"
            name="PASSWORD" value="${resultMap.PASSWORD}" required ${statusDisabled}/>
	</div>
</div>

<%-- PHONE_NUMBER --%>
<div class="form-group form-row">
	<div class="col">
		<label>PHONE_NUMBER</label>
        <input class="form-control" type="text"
            name="PHONE_NUMBER" value="${resultMap.PHONE_NUMBER}" required ${statusDisabled}/>
	</div>
</div>
<%-- BIRTHDAY --%>
<div class="form-group form-row">
	<div class="col">
		<label>BIRTHDAY</label>
        <input class="form-control" type="text"
            name="BIRTHDAY" value="${resultMap.BIRTHDAY}" required ${statusDisabled}/>
	</div>
</div>
<%-- EMAIL --%>
<div class="form-group form-row">
	<div class="col">
		<label>EMAIL</label>
        <input class="form-control" type="text"
            name="EMAIL" value="${resultMap.EMAIL}" required ${statusDisabled}/>
	</div>
</div>
<%-- SMS_AD --%>
<div class="form-group form-row">
	<div class="col">
		<div class="form-check">
			<input type="checkbox" class="form-check-input" name="SMS_AD"
				
				${resultMap.SMS_AD == 'true' ? 'checked' : ''}
				${statusDisabled}> <label class="form-check-label">SMS 수신 여부</label>
		</div>
	</div>
</div>
<%-- EMAIL_AD --%>
<div class="form-group form-row">
	<div class="col">
		<div class="form-check">
			<input type="checkbox" class="form-check-input" name="EMAIL_AD"
				
				${resultMap.EMAIL_AD == 'true' ? 'checked' : ''}
				${statusDisabled}> <label class="form-check-label">EMAIL 수신 여부</label>
		</div>
	</div>
</div>

<div class="row justify-content-between">
	<div class="col">
		
		<button class="btn btn-primary"
			> ${form_action}
		</button>


	</div>

</div>
</form>
<form action="/toy/list">
		<button class="btn btn-outline-info"
			> List
		</button>
</form>
</div>