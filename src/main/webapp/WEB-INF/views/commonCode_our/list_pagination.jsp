<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />

<div class="container">
<%-- Form list --%>
<div class="row">
	<div class="col">
		<form action ="/commonCodeOur/form" method="get"> 
			<button class="btn btn-info"
			>Form(Insert)</button>
		</form>
	</div>
	<div class="col">
		<form action ="/commonCodeOur/formMulti" method="get"> 
			<button class="btn btn-info"
			>FormMulti(Insert)</button>
		</form>
	</div>
</div>

<%-- Pagination --%>
<nav aria-label="Page navigation example">
  <c:set var="_pagination" value="${resultMap.paginations}" />
  <%-- <span>총 개수 : ${resultMap.paginations.totalCount}</span> --%>
  <span>총 개수 : ${_pagination.totalCount}</span>
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
	<%-- for(i=1; i>?; i++)    forEach 안에서 i로 선언 == var--%>
	<c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}">
    <li class="page-item"><a class="page-link" href="/commonCodeOur/listPagination/${i}">${i}</a></li>
	</c:forEach>
	<%-- 이걸  forEach 사용해서 하는걸 위에 했다.  --%>
	<%-- <li class="page-item"><a class="page-link" href="/commonCodeOur/listPagination/1">1</a></li>
    <li class="page-item"><a class="page-link" href="/commonCodeOur/listPagination/11">2</a></li>
    <li class="page-item"><a class="page-link" href="/commonCodeOur/listPagination/21">3</a></li> --%>

    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>

<form action="/commonCodeOur/deleteMulti" method="post">
	<button class="btn btn-info"> delete Multi</button>
<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr class="text-center">
			<th><input type="checkbox" id="selectall" /></th>
			<th>코드 ID</th>
			<th>코드 ID with Files</th>
			<th>코드명</th>
			<th>부모코드 ID</th>
			<th>delete</th>
		</tr>
	</thead>
	<tbody>
	<%-- row단위로 나온다는데 ??? --%>
	<%-- resultMap에 현재 total과 resultList가 들어 있음.  그래서 resultMap을 그대로 뽑으면 안되고
	여기서는 resultMap.resultList라고 키를 넣어서 list만 뽑아 줘야한다. --%>
		<c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
			<tr>
				<td class="text-center"><input type="checkbox" class="checkbox"
					name="COMMONCODE_ID" value="${resultData.COMMON_CODE_ID}" /></td>
				<td>
					<form action ="/commonCodeOur/edit/${resultData.COMMON_CODE_ID}" method="get"> 
					<%-- action 주소에 uid를 담아 보냄 --%>
					<button class="btn btn-link viewPopup"
						>${resultData.COMMON_CODE_ID}</button>
					</form>
				</td>
				<td>
					<form action ="/commonCodeOur/editMulti/${resultData.COMMON_CODE_ID}" method="get"> 
					<%-- action 주소에 uid를 담아 보냄 --%>
					<button class="btn btn-link viewPopup"
						>${resultData.COMMON_CODE_ID} Multi</button>
					</form>
				</td>
				<td>${resultData.NAME}</td>
				<td class="text-center">
					<div class="btn-group">
						<button class="btn btn-outline-info"
							 name="PARENT_COMMONCODE_ID" > 
							 ${resultData.PARENT_COMMON_CODE_ID}
						</button>
					</div>
				</td>
				<td>
					<form action ="/commonCodeOur/delete/${resultData.COMMON_CODE_ID}" method="post"> 
					<%-- action 주소에 uid를 담아 보냄 --%>
					<button class="btn outline-info"
						>Delete</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</form>
</div>
<!-- /.table-responsive -->
