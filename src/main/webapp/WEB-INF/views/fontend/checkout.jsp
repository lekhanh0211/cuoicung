<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section id="aa-catg-head-banner"
	style="display: flex; justify-content: center; background-color: white;">
	<img src="<c:url value="/assets/user/images/checkout-banner.png"/>"
		alt="banner thanh toán">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Thanh toán</h2>
				<ol class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ</a></li>
					<li style="color: #fff">Thông tin thanh toán</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="checkout">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="checkout-area">
					<form action="checkout" method="post">
						<div class="row">
							<div class="col-md-8">
								<div class="checkout-left">
									<div class="panel-group">
										<c:if test="${loginInfo.username == null}">
											<p>
												Bạn cần đăng nhập để thanh toán! Đăng nhập <a
													href="<c:url value="/dangnhap"/>" style="color: #754110">tại
													đây!</a>
											</p>
										</c:if>
										<c:if test="${loginInfo.username != null}">
											<!-- Shipping Address -->
											<div class="panel panel-default aa-checkout-billaddress">
												<div class="panel-heading">
													<h4 class="panel-title" style="color: #754110">Địa chỉ
														giao hàng</h4>
												</div>
												<div id="collapseFour">
													<div class="panel-body">
														<div class="row">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<input type="text" placeholder="Họ Tên*"
																		required="required" name="name"
																		value="${loginInfo.name }">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="aa-checkout-single-bill">
																	<input type="email" placeholder="Email*"
																		value="${loginInfo.email }" required="required"
																		name="email">
																</div>
															</div>
															<div class="col-md-6">
																<div class="aa-checkout-single-bill">
																	<input type="tel" placeholder="Số điện thoại*"
																		value="${loginInfo.phone }" required="required"
																		name="phone">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<textarea cols="8" rows="3" required="required"
																		placeholder="Địa chỉ*" name="address"></textarea>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<textarea cols="8" rows="3" placeholder="Ghi chú"
																		name="message"></textarea>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<input type="date" placeholder="Ngày tạo"
																		name="created" id="the-date" style="display: none">
																</div>
															</div>
														</div>

														<div class="row" style="display: none">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<input type="text" placeholder="userid_session"
																		name="cus_id" value="${loginInfo.id }"> <input
																		type="text" placeholder="totalmoney_session"
																		name="total_price" value="${TotalPrice }">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:if>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="checkout-right">
									<h4>Thông tin đơn hàng</h4>
									<div class="aa-order-summary-area">
										<table class="table table-responsive">
											<thead>
												<tr>
													<th>Sản phẩm</th>
													<th>Số tiền</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${Cart}" var="cart">
													<tr>
														<td>${cart.value.product.name }<strong> x
																${cart.value.quantity}</strong></td>
														<td><fmt:formatNumber
																value="${cart.value.totalPrice }" />VNĐ</td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th>Tạm tính</th>
													<td><fmt:formatNumber value="${TotalPrice }" />VNĐ</td>
												</tr>
												<tr>
													<th>Thuế</th>
													<td>0 VNĐ</td>
												</tr>
												<tr>
													<th>Tổng cộng</th>
													<td><strong><fmt:formatNumber
																value="${TotalPrice }" />VNĐ</strong></td>
												</tr>
											</tfoot>
										</table>
									</div>
									<div class="aa-payment-method">
										<input type="submit" value="Đặt hàng" class="aa-browse-btn">
									</div>
									<h4>Hình thức thanh toán</h4>
									<label for="cashdelivery"><input type="radio"
										id="cashdelivery" name="status" checked value="true">
										Thanh toán tiền mặt khi nhận hàng (COD) </label> <label for="paypal"><input
										type="radio" id="paypal" name="status" value="false">
										Thanh toán chuyển khoản ngân hàng (EBank) </label> <img
										src="<c:url value="/assets/user/img/paypal.jpg"/>" border="0"
										alt="PayPal Acceptance Mark">
								</div>
								<%-- <c:if
										test="${loginInfo.username != null && loginInfo.order == null}">
										<br>
										<p style="color: red">Bạn đã đặt hàng thành công!</p>
									</c:if> --%>
							</div>
						</div>
					</form>
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