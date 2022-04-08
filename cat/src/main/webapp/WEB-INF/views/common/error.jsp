<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>My Cat</title>
        <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/assets/favicon.ico" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${ pageContext.servletContext.contextPath }/resources/css/styles.css" rel="stylesheet" />
        
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${ pageContext.servletContext.contextPath }/resources/js/scripts.js"></script>
    
    </head>
    <body>
    	<c:import url="/WEB-INF/views/common/loginSession.jsp" />
		<c:import url="/WEB-INF/views/common/menubar.jsp" />
        
        <section class="page-section clearfix">
            <h1>에러 페이지</h1>
			<c:if test="${ !empty e }">
				<h3>jsp 페이지 오류 발생 : ${ message }</h3>
			</c:if>
			<c:if test="${ empty e }">
				<h3>컨트롤러 요청 실패 메세지 : ${ message }</h3>
			</c:if>
			<!-- 컨트롤러 호출은 루트에서 실행시키도록 함 -->
			<c:url var="movemain" value="/main.do"/>
			<a href="${ movemain }">시작페이지로 이동</a>
        </section>
        
        
        <c:import url="/WEB-INF/views/common/footer.jsp" />
    </body>
</html>
