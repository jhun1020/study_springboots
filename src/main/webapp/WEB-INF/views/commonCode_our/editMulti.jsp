<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
<div class="container">
<c:set var="form_action" value="updateMulti"/>
<c:if test="${empty resultMap}"> 
<%-- 조건 : resultMap이 비어있다면  --%>
						<%--@@@@ insert에서 insertMulti로 바꿈 @@@@--%>
	<c:set var="form_action" value="insertMulti"/>
</c:if>

<%-- 파일을 복수로 올리는법을 해보기 위해  --%>

<%-- resultMap값이 비어있다면 insert 아니라면 update --%>
<form action="/commonCodeOur/${form_action}" method="post" enctype = “multipart/form-data”>

<input type="hidden" name="REGISTER_SEQ" value="UUID-1111-1111111" >
<input type="hidden" name="MODIFIER_SEQ" value="UUID-1111-1111111" >
<%--  --%>
<input type="hidden" name="PARENT_COMMONCODE_CODE_ID" value="${resultMap.PARENT_COMMONCODE_CODE_ID}">

<%-- edit엔 없는 부분 .  editMulti에서 추가함 --%>
<%-- 서비스에서 넣어줄 때 넣었던 키로 꺼내야함 앞의 resultMap은 컨트롤러에서 의 키고 뒤의 attachFiles는 서비스에서 넘겨준 키 맵에 맵으로ㅓ 들어잇어서 키의 키로 꺼내야하는 과정이다.--%>
<c:forEach items="${resultMap.attachFiles}" var="resultData" varStatus="loop">
	<div class="form-group form-row">
	<label class="form-label">File Upload</label>
	<input type="file" name="file_${loop.index}" class="form-control">
	<a href="/files/${resultData.PHYSICALFILE_NAME}/ ${resultData.ORGINALFILE_NAME}">${resultData.ORGINALFILE_NAME]}</a>
	<input type="hieedn" name="file_${loop.index}" value="${resultData.ATTACHFILE_SEQ}" />
	</div>
	<%-- <span>${resultData.PHYSICALFILE_NAME}/${resultData.ORGINALFILE_NAME}</span> --%>
	<%-- localhost:8080/files/ 이 뒤에 span태그로 출력될 내용을 넣고 검색했을때 파일이 나온다면 정상작동된것 --%>
</c:forEach>

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

<%-- 복수파일 업로드하는 코드   name을 second로 바꿔서 하나 추가 --%>   
<div class="form-group form-row">
	<label class="form-label">File Upload</label>
	<input type="file" name="file_second" class="form-control">

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
		</span></label> <select class="form-control" name="ORDER_NUMBER" ${statusDisabled}>
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
		<textarea class="form-control" rows="3" name="CONTENT"
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
		
		<button class="btn btn-primary"
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
</div>
</form>
</div>