<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>식플루언서</title>
<style>
.content-area {
  display: flex;
  justify-content: center;
}
</style>
</head>
<body>
<div class="container-fluid">
	<c:import url="/views/common/header.jsp"/>
	<%-- <%@ include file="../views/common/header.jsp" %> --%>
     <div class="row" style="margin-top:20px;">
        	<!-- 콘텐츠 영역 -->
       <div class="container-fluid pb-3" id="content-area"style="max-width: 100%;">
       <div class="d-grid gap-3" style="grid-template-columns: 0.5fr 0.8fr 0.5fr">
          <div class="bg-body-tertiary border rounded-3" style="visibility: hidden;">
            <br />
          </div>
          <div class="bg-body-tertiary border rounded-3">
          	<c:import url="/views/main/approval.jsp"/>
            <%-- <%@ include file="../views/main/approval.jsp" %> --%>
          </div>
          <div class="bg-body-tertiary border rounded-3" style="visibility: hidden;">
            <br />
          </div>
        </div>
        <Br>
        <div class="d-grid gap-3" style="grid-template-columns: 0.5fr 0.3fr 0.5fr 0.5fr">
          <div class="bg-body-tertiary border rounded-3" style="visibility: hidden;">
            <br />
          </div>
			<c:import url="/views/main/calenda.jsp"/>
            <%-- <%@ include file="../views/main/calenda.jsp" %> --%>

          <div class="bg-body-tertiary border rounded-3">
          	<c:import url="/views/main/notice.jsp"/>
            <%-- <%@ include file="../views/main/notice.jsp" %> --%>
          </div>
          <div class="bg-body-tertiary border rounded-3" style="visibility: hidden;">
            <br />
          </div>
        </div>
      </div>
        
      </div>
    </div>

</body>
</html>