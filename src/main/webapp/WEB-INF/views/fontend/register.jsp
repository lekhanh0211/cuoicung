<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<section id="aa-catg-head-banner"
	style="display: flex; justify-content: center; background-color: white;">
	<img src="<c:url value="/assets/user/images/archive-banner.png"/>"
		alt="banner blog">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Đăng ký</h2>
				<ol class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ</a></li>
					<li style="color: #fff">Đăng ký tài khoản</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="aa-myaccount">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-myaccount-area">
					<div class="row">

						<div class="col-md-8 col-md-push-2">
							<div class="aa-myaccount-register">
								<h4 style="text-align: center;">Đăng ký</h4>
								<c:if test="${not empty success }">
									<h5
										style="color: orange; font-weight: bold; text-align: center;">${success }</h5>
								</c:if>
								<c:if test="${not empty error }">
									<h5 style="color: red; font-weight: bold; text-align: center;">${error }</h5>
								</c:if>
								<form:form class="aa-login-form" method="post" action="dangky"
									modelAttribute="cus">
									<label for="">Họ tên<span>*</span></label>
									<input type="text" placeholder="Họ tên" name="name" required>
									<label for="">Hòm thư <span>*</span>
									</label>
									<input type="text" placeholder="Địa chỉ hòm thư" name="email"
										required>
									<label for="">Số điện thoại<span>*</span>
									</label>
									<input type="text" placeholder="Số điện thoại" name="phone"
										required>
									<label for="">Tài khoản<span>*</span></label>
									<input type="text" placeholder="Tên tài khoản" name="username"
										required>
									<label for="">Mật khẩu<span>*</span></label>
									<input type="password" placeholder="Password" name="password"
										required>
									<input type="date" style="display: none" placeholder="Mật khẩu"
										name="created" id="the-date">

									<p style="color: red; display: block;"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></p>
									<p style="color: red; display: block;"><%=(request.getAttribute("Message") == null) ? "" : request.getAttribute("Message")%></p>
									<button type="reset" class="aa-browse-btn" value="Reset">Đặt
										lại</button>
									<button type="submit" class="aa-browse-btn">Đăng ký</button>
								</form:form>

							</div>
							<a class="btn btn-success"
								style="margin-top: 20px; text-align: center;"
								href="<c:url value="/dangnhap"/>">ĐĂNG NHẬP NGAY</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->

<!--  end content-->
<script>
	var date = new Date();

	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();

	if (month < 10)
		month = "0" + month;
	if (day < 10)
		day = "0" + day;

	var today = year + "-" + month + "-" + day;

	document.getElementById('the-date').value = today;
</script>