<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>
 	<!-- breadcrumb start -->
 	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/index.jsp">홈</a></li>
	    <li class="breadcrumb-item">공지사항</a></li>
	  </ol>
	</nav>
	<!-- breadcrumb end -->
  	<!-- container start -->
  	<div class="container">
		<!-- col start -->
		<div class="row">
			<div class="col-md-12">
				<h5>공지사항 글쓰기</h5>
				<%-- form start --%>
				<form name="noticeForm" method="post" action="saveDb.jsp">
				  <div class="form-group">
				    <label for="writer">작성자</label>
				    <input type="text" class="form-control" id="writer" name="writer" placeholder="작성자를 입력하세요">
				  </div>
					<div class="form-group">
				    <label for="title">제목</label>
				    <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
				  </div>
					<div class="form-group">
				    <label for="content">내용</label>
				    <textarea class="form-control" id="content" name="content" placeholder="내용을 입력하세요" rows="10"></textarea>				  
				    </div>
				</form>
				<%-- form end --%>
				<div class="text-right">
					<a class="btn btn-light" href="list.jsp" role="button">리스트</a>
					<a class="btn btn-primary" id="saveNotice" role="button">저장</a>
				</div>
			</div>
		</div>
		<!-- col end -->
  	</div>
  	<!-- container end -->
 <%@ include file="../inc/footer.jsp" %>
  	