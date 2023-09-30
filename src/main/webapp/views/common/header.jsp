<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" data-bs-theme="white">
<head>
<meta charset="UTF-8">
<title>SIK</title>
<!-- 남의꺼 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/headers/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
<!-- 내꺼 -->
<script src="/sik/resources/common/js/jquery-3.7.0.min.js"></script>
<link href="/sik/resources/common/css/font.css" rel="stylesheet">
<link href="/sik/resources/common/css/header.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.btn-bd-primary { -
	-bd-violet-bg: #712cf9; -
	-bd-violet-rgb: 112.520718, 44.062154, 249.437846; -
	-bs-btn-font-weight: 600; -
	-bs-btn-color: var(- -bs-white); -
	-bs-btn-bg: var(- -bd-violet-bg); -
	-bs-btn-border-color: var(- -bd-violet-bg); -
	-bs-btn-hover-color: var(- -bs-white); -
	-bs-btn-hover-bg: #6528e0; -
	-bs-btn-hover-border-color: #6528e0; -
	-bs-btn-focus-shadow-rgb: var(- -bd-violet-rgb); -
	-bs-btn-active-color: var(- -bs-btn-hover-color); -
	-bs-btn-active-bg: #5a23c8; -
	-bs-btn-active-border-color: #5a23c8;
}

.bd-mode-toggle {
	z-index: 1500;
}

.nav-link {
	text-decoration: none;
	color: black;
}

.dropdown-menu {
	position: absolute;
	z-index: 99;
}
</style>



</head>
<body>
	<header class="p-3 mb-3 border-bottom small shadow">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"
				style="gap: 50px">
				<a href="/"
					class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
					<img src="/sik/resources/common/images/siklogo.png" width="40"
					style="magin-left: 30px">
				</a>
				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasSupport">지원</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasInventory">재고</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasFranchisee">관리</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasPromotion">홍보</a>
						
					<li class="nav-item"><a class="nav-link" href="#"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasAdmin">admin</a>
				</ul>

				<c:import url="/views/common/profile.jsp"/>
				<%-- <%@ include file="./profile.jsp"%> --%>

			</div>
		</div>
	</header>

	<!-- canvas 생성 -->
	<!-- 지원 -->
	<div class="offcanvas offcanvas-start small shadow"
		data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1"
		id="offcanvasSupport" aria-labelledby="offcanvasSupportLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasSupportLabel">지원</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<div class="dropdown mt-3">
				<c:import url="/views/common/sidebar-support.jsp"/>
				<%-- <%@ include file="./sidebar-support.jsp"%> --%>
			</div>
		</div>
	</div>
	<!-- 재고 -->
	<div class="offcanvas offcanvas-start small shadow"
		data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1"
		id="offcanvasInventory" aria-labelledby="offcanvasInventoryLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasInventoryLabel">재고</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<div class="dropdown mt-3">
				<c:import url="/views/common/sidebar-inventory.jsp"/>
				<%-- <%@ include file="./sidebar-inventory.jsp"%> --%>
			</div>
		</div>
	</div>
	<!-- 관리 -->
	<div class="offcanvas offcanvas-start small shadow"
		data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1"
		id="offcanvasFranchisee" aria-labelledby="offcanvasFranchiseeLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasFranchiseeLabel">관리</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<div class="dropdown mt-3">
				<c:import url="/views/common/sidebar-franchisee.jsp"/>
				<%-- <%@ include file="./sidebar-franchisee.jsp"%> --%>
			</div>
		</div>
	</div>
	<!-- 홍보 -->
	<div class="offcanvas offcanvas-start small shadow"
		data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1"
		id="offcanvasPromotion" aria-labelledby="offcanvasPromotionLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasPromotionLabel">홍보</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<c:import url="/views/common/sidebar-promotion.jsp"/>
			<%-- <%@ include file="./sidebar-promotion.jsp"%> --%>
		</div>
	</div>
	<!-- admin -->
	<div class="offcanvas offcanvas-start small shadow"
		data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1"
		id="offcanvasAdmin" aria-labelledby="offcanvasAdminLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasAdminLabel">admin</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<c:import url="/views/common/sidebar-admin.jsp"/>
			<%-- <%@ include file="./sidebar-admin.jsp"%> --%>
		</div>
	</div>
</body>
</html>