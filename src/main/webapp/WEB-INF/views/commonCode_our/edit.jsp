<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
<%-- 0220 추가 코드 --%>
<link href="//cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
<script src="//cdn.quilljs.com/1.3.6/quill.js"></script>


<div class="container">



<c:set var="form_action" value="update"/>
<c:if test="${empty resultMap}"> 
<%-- 조건 : resultMap이 비어있다면  --%>
	<c:set var="form_action" value="insert"/>
</c:if>



<%-- resultMap값이 비어있다면 insert 아니라면 update --%>
<form id="action-form" action="/commonCodeOur/${form_action}" method="post" enctype = “multipart/form-data”>
>
<input type="hidden" name="REGISTER_SEQ" value="UUID-1111-1111111" >
<input type="hidden" name="MODIFIER_SEQ" value="UUID-1111-1111111" >
<%--  --%>
<input type="hidden" name="PARENT_COMMONCODE_CODE_ID" value="${resultMap.PARENT_COMMONCODE_CODE_ID}">

<%-- 파일 업로드하는 코드 --%>
<div class="form-group form-row">
	<label class="form-label">File Upload</label>
	<input type="file" name="file_first" class="form-control">
	<%-- params에  key file_first에 value가 파일이름으로 들어간다. == 파일이름만 올라간다.
	내가 올리려는 동작은 local이고 파일이름만 알려줘서는 remote에서 접근 불가. .  
	덩어리로 올려줘야함.  == enctype = “multipart/form-data” form태그에 이것을 추가해줘야함.>
--%>
</div>
<%--  --%>

<div class="form-group form-row">
	<div class="col">
		<label>코드 ID</label> <input class="form-control" type="text"
			name="COMMONCODE_CODE_ID" value="${resultMap.COMMON_CODE_ID}"
			required ${form_action == "update" ? "readonly" : ""} />
			<%-- var rr = ""
			내가 작성해본 삼항연산자 rr변수 선언하고 form_action이 update라면 rr에 readonly넣어서 사용 아니라면 아무값도 주지 않기.
			form_action.equals("update") ? ${rr = "required readonly"} : "";
			<%-- required readonly이 insert면 안보이고 update면 보이게 하는 삼항연산자 --%>
	<%-- 너무 복잡하게 했네 간단하게 좀 해보자,... --%>
		<div class="invalid-tooltip">
			
		</div>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>코드명 </label> <input class="form-control" type="text"
			name="NAME" value="${resultMap.NAME}" placeholder="임시 코드명" required ${statusDisabled}/>
		<div class="invalid-tooltip">
			
		</div>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>표시 순서 <span class="text-muted">(<spring:message
								code="text.option" />)
		</span></label> 
		<select class="form-control" name="ORDER_NUMBER" ${statusDisabled}>
		<%-- for(int number=1; number <=5; number++) 과 같은 사용법 --%>
			<c:forEach var="number" begin="1" end="5">
				<option 
					${resultMap.ORDER_NUMBER == number ? 'selected' : ''}>${number }</option>
			</c:forEach>
		</select>
	</div>
</div>
<div class="form-group form-row">

	<div class="col">
		<label>설명 <span class="text-muted">(<spring:message
					code="text.option" />)
					
		</span></label>

		<%-- 0220 추가 --%>
		<div id="editor"></div>

		<textarea class="form-control" rows="3" name="DESCRIPTION"
			placeholder=""
			${statusDisabled}>${resultMap.DESCRIPTION }</textarea>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<div class="form-check">
			<input type="checkbox" class="form-check-input" name="SYSTEM_CODE_YN"
				
				${resultMap.SYSTEM_CODE_YN == 'System_Code_Yes' ? 'checked' : ''}
				${statusDisabled}> <label class="form-check-label">시스템 코드
				여부</label>
		</div>
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<div class="form-check">
			<input type="checkbox" class="form-check-input" name="USE_YN"
				 ${resultMap.USE_YN == 'Yes' ? 'checked' : ''}
				${statusDisabled}> <label class="form-check-label">사용 여부</label>
		</div>
	</div>
</div>
<div class="row justify-content-between">
	<div class="col">
		<button class="btn btn-primary" id="submit-button"
			> ${form_action}
		</button>

		<button class="btn btn-outline-info"
			> List
		</button>
	</div>
	<div class="col text-right">
		<%-- <button type="button" class="btn btn-secondary" data-dismiss="modal">
			
		</button> --%>
	</div>

	<%-- 0220 추가 --%>
	<script>
		var editor = new Quill('#editor', {
  		theme: 'snow'
		});

		let submitButton = document.querySelector('#submit-button');
		submitButton.addEventListener("click", function (event){
			let form = document.querySelector("#action-form");
			form.submit();

		});
	</script>

</div>
</form>
</div>