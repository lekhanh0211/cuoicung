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
					<li style="color: #fff">Thông tin giỏ hàng</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Bỏ chọn</th>
										<th>Hình ảnh</th>
										<th>Sản phẩm</th>
										<th>Đơn giá</th>
										<th>Số lượng</th>
										<th>Thành Tiền</th>
										<th>Cập nhật</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${Cart}" var="cart">
										<tr>
											<td><a class="remove"
												onclick="return confirm('Bạn có chắc chắn muốn xóa?')"
												href="<c:url value="/DeleteCart/${cart.key }"/>"><fa
														class="fa fa-close"></fa></a></td>
											<td><a href=""><img
													src=" <c:url value="/assets/user/images/products/img-test/${cart.value.product.image_link}"/>"
													alt="ảnh sản phẩm"></a></td>
											<td><a class="aa-cart-title"
												href="<c:url value="/shop-detail/${cart.value.product.id}"/>">${cart.value.product.name}</a></td>
											<td><fmt:formatNumber
													value="${cart.value.product.price }" type="number" /></td>


											<td><input class="aa-cart-quantity" type="number"
												id="quantityCart-${cart.value.product.id }"
												value="${cart.value.quantity}" min=1></td>


											<td><fmt:formatNumber value="${cart.value.totalPrice }"
													type="number" />VNĐ</td>
											<td><button data-id="${cart.key}" class="edit-cart"
													type="button" value="">
													<fa class="fa fa-edit">
												</button></td>
										</tr>
									</c:forEach>
									<tr>
										<td colspan="6" class=""><strong>TỔNG TIỀN</strong></td>
										<td><strong><fmt:formatNumber
													value="${TotalPrice}" type="number" /> VNĐ</strong></td>
									</tr>
									<%-- <tr>
										<td colspan="7" class="aa-cart-view-bottom"><button
												data-id="${cart.key}" class="aa-cart-view-btn edit-cart"
												type="button" value="">Cập nhật giỏ hàng</button></td>
									</tr> --%>

								</tbody>
							</table>
						</div>
						<!-- Cart Total view -->
						<div class="cart-view-total">
							<h4>Thông tin giỏ hàng</h4>
							<table class="aa-totals-table">
								<tbody>
									<tr>
										<th>Tạm tính</th>
										<td><fmt:formatNumber value="${TotalPrice}" type="number" />VNĐ</td>
									</tr>
									<tr>
										<th>VAT</th>
										<td>0 VNĐ</td>
									</tr>
									<tr>
										<th>Tổng cộng</th>
										<td><strong><fmt:formatNumber
													value="${TotalPrice}" type="number" /> VNĐ</strong></td>
									</tr>
								</tbody>
							</table>
							<a href="<c:url value="checkout"/>" class="aa-cart-view-btn">Thanh
								toán</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<content tag="script"> <script>
	$(".edit-cart").on("click", function() {
		var id = $(this).data("id");
		var quantity = $("#quantityCart-" + id).val();
		window.location = "EditCart/" + id + "/" + quantity;
	});
</script> </content>