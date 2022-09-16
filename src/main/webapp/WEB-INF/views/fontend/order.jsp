<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section id="aa-catg-head-banner"
	style="display: flex; justify-content: center; background-color: white;">
	<img src="<c:url value="/assets/user/images/banner-cart.png"/>"
		alt="banner giỏ hàng">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Giỏ hàng</h2>
				<ol class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ </a></li>
					<li style="color: #fff">Đặt hàng thành công</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- start contact section -->
<section id="aa-contact">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-contact-area">
					<div class="aa-contact-top">
						<h2>Quỹ khách đã đặt hàng thành công</h2>
						<p>
							“ Xin cảm ơn quý khách, chúng tôi sẽ liên lạc để xác nhận đơn
							hàng và giao hàng trong thời gian sớm nhất.” - <i>Thanks You</i>
						</p>
						<a class="btn btn-primary" href="<c:url value="/"/>">VỀ TRANG
							CHỦ</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>