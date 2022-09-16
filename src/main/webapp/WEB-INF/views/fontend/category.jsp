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
							<c:if test="${empty probycate}">
								<p style="margin-left: 30px">Chưa có sản phẩm!</p>
							</c:if>
							<c:forEach items="${probycate}" var="product">
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

						<!-- / quick view modal -->
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
					<!-- single sidebar -->

					<%-- <!-- single sidebar -->
					<div class="aa-sidebar-widget">
						<h3>Sản phẩm gần đây</h3>
						<div class="aa-recently-views">
							<ul>
								<c:forEach items="${product}" var="product" end="2">
									<li><a href="<c:url value="/shop-detail/${product.id}"/>"
										class="aa-cartbox-img"><img
											src="<c:url value="assets/user/images/products/img-test/${product.image_link}"/>"
											alt="${product.name}"></a>

										<div class="aa-cartbox-info">
											<h4>
												<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
											</h4>
											<c:choose>
												<c:when test="${product.discount == 0}">
													<p>${product.price}VNĐ</p>
												</c:when>
												<c:otherwise>
													<c:forEach items="${productlist1}" var="product1">
														<c:if test="${product1.id == product.id}">
															<p>${product1.price}VNĐ</p>
														</c:if>
													</c:forEach>
												</c:otherwise>
											</c:choose>

										</div></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<!-- single sidebar -->
 --%>
				</aside>
			</div>

		</div>
	</div>
</section>