<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section id="aa-product-category"
	style="display: flex; justify-content: center; background-color: white;">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
				<div class="aa-product-catg-content">

					<div class="aa-product-catg-body">
						<ul class="aa-product-catg">
							<!-- start single product item -->
							<c:if test="${empty pro}">
								<h3 style="margin-left: 30px; text-align: center">Không tìm
									thấy sản phẩm có tên như trên!</h3>
							</c:if>
							<c:forEach items="${pro}" var="product">
								<li>
									<figure>
										<a class="aa-product-img"
											href="<c:url value="/shop-detail/${product.id}"/>"><img
											src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
											alt="${product.name}"></a>
										<a class="aa-add-card-btn"
											href="<c:url value="/AddCart/${product.id}"/>"><span
											class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
										<figcaption>
											<h4 class="aa-product-title">
												<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name}</a>
											</h4>
											<span class="aa-product-price"><fmt:formatNumber
													value="${product.price}" type="number" /> VNĐ</span>

										</figcaption>
									</figure>

								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
				<aside class="aa-sidebar">
					<!-- single sidebar -->
					<div class="aa-sidebar-widget">
						<h3>Danh mục sản phẩm</h3>
						<ul class="aa-catg-nav">
							<c:forEach items="${category}" var="cate">
								<li><a href="<c:url value="/shop/${cate.id}"/>">${cate.name}</a></li>
							</c:forEach>
						</ul>
					</div>
				</aside>
			</div>

		</div>
	</div>
</section>