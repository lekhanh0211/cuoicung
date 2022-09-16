<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div id="sidebar-wrapper" data-simplebar=""
	data-simplebar-auto-hide="true">
	<div class="brand-logo">
		<a href="<c:url value="/assets/admin/homepage"/>"> <img
			src="<c:url value="/assets/admin/images/logo-icon.png"/>"
			class="logo-icon" alt="logo icon">
			<h4 class="logo-text">ADMIN ZLATAN</h4>
		</a>
	</div>
	<ul class="sidebar-menu do-nicescrol">
		<li class="sidebar-header">MENU ADMIN</li>
		<li><a href="<c:url value="/admin/home"/>"> <i
				class="zmdi zmdi-view-dashboard"></i> <span>Tổng quan</span>
		</a></li>

		<%-- <li><a href="<c:url value="/admin/user"/>"> <i
				class="zmdi zmdi-account-box"></i> <span>Quản lí Admin</span>
		</a></li> --%>
		<li><a href="<c:url value="/admin/customer"/>"> <i
				class="zmdi zmdi-accounts"></i> <span>Quản lí Khách Hàng</span>
		</a></li>
		<li><a href="<c:url value="/admin/category"/>"> <i
				class="zmdi zmdi-grid"></i> <span>Quản lý Danh Mục</span>
		</a></li>
		<li><a href="<c:url value="/admin/product"/>"> <i
				class="zmdi zmdi-widgets"></i> <span>Danh Sách Sản Phẩm</span>
		</a></li>
		<li><a href="<c:url value="/admin/bill"/>"> <i
				class="zmdi zmdi-shopping-cart"></i> <span>Đơn Hàng</span>
		</a></li>

		<li><a href="<c:url value="/admin/bill-detail"/>"> <i
				class="zmdi zmdi-shopping-cart"></i> <span>Chi Tiết Đơn Hàng</span>
		</a></li>
		<li><a href="<c:url value="/admin/comment"/>"> <i
				class="zmdi zmdi-calendar-check"></i> <span>Bình luận</span>
		</a></li>
		<li><a href="<c:url value="/admin/blogs"/>"> <i
				class="icon-envelope-open"></i> <span>Tin tức</span>
		</a></li>
	</ul>
</div>