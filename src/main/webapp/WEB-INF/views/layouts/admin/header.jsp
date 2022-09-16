<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="dec"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title><dec:title /></title>
<link href="<c:url value="/assets/admin/css/pace.min.css"/>"
	rel="stylesheet" />
<script src="<c:url value="/assets/admin/js/pace.min.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="/assets/admin/plugins/summernote/dist/summernote-bs4.css"/>" />
<link rel="icon"
	href="<c:url value="/assets/admin/images/favicon.ico"/>"
	type="image/x-icon">
<link
	href="<c:url value="/assets/admin/plugins/vectormap/jquery-jvectormap-2.0.2.css"/>"
	rel="stylesheet" />
<link
	href="<c:url value="/assets/admin/plugins/simplebar/css/simplebar.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/bootstrap.min.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/animate.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/admin/css/icons.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/admin/css/sidebar-menu.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/app-style.css"/>"
	rel="stylesheet" />


</head>

<body class="bg-theme bg-theme1">


	<!-- start loader -->
	<div id="pageloader-overlay" class="visible incoming">
		<div class="loader-wrapper-outer">
			<div class="loader-wrapper-inner">
				<div class="loader"></div>
			</div>
		</div>
	</div>
	<div id="wrapper">

		<%@include file="/WEB-INF/views/layouts/admin/l-sidebar.jsp"%>

		<header class="topbar-nav">
			<nav class="navbar navbar-expand fixed-top">
				<ul class="navbar-nav mr-auto align-items-center">
					<li class="nav-item"><a class="nav-link toggle-menu"
						href="javascript:void();"> <i class="icon-menu menu-icon"></i>
					</a></li>
				</ul>

				<ul style="list-style-type: none">
					<li style="text-align: center;">
						<h5 style="margin-top: 20px">Xin chào:
							${pageContext.request.userPrincipal.name}</h5> <a
						style="background-color: red; color: white; font-weight: bold; padding: 5px; border-radius: 20px"
						href="<c:url value="/j_spring_security_logout" />"><i
							class="icon-power mr-2 mt-2"></i>Đăng xuất </a>
					</li>
				</ul>

			</nav>
		</header>

		<div class="clearfix"></div>
	</div>