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
				<h2>Đăng nhập</h2>
				<ol class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ</a></li>
					<li style="color: #fff">Đăng nhập</li>
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
							<div class="aa-myaccount-login">
								<h4 style="text-align: center;">Đăng nhập</h4>
								<h5 style="color: red">${failed }</h5>
								<form:form class="aa-login-form" name="loginform"
									onsubmit="validate();" action="dang-nhap" method="post"
									modelAttribute="cus">
									<label for="">Tài khoản<span>*</span></label>
									<form:input type="text" placeholder="Username" path="username" />
									<label for="">Mật khẩu<span>*</span>
									</label>
									<form:input type="password" placeholder="Password"
										path="password" />
									<form:errors path="username" cssStyle="color:red" />
									<!-- <p class="rememberme" style="display: block">
										<input type="checkbox" id="rememberme"> Ghi nhớ
									</p> -->

									<p style="color: red; display: block">${errorMsg}</p>
									<button type="submit" class="aa-browse-btn">Đăng nhập</button>

								</form:form>
							</div>
							<span style="margin-top: 40px; text-align: right;">BẠN
								CHƯA CÓ TÀI KHOẢN? <a class="btn btn-success"
								style="text-align: center;" href="<c:url value="/dangky"/>">ĐĂNG
									KÝ NGAY</a>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
