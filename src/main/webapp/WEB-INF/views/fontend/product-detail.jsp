<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section id="aa-catg-head-banner"
	style="display: flex; justify-content: center; background-color: white;">
	<img src="<c:url value="/assets/user/images/banner-product.png"/>"
		alt="banner sản phẩm">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Chi tiết sản phẩm</h2>
				<ol class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ</a></li>
					<li><a href="<c:url value="/shop"/>">Sản phẩm</a></li>
					<li style="color: #fff">${probyid.name }</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- product category -->
<section id="aa-product-details">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-product-details-area">
					<div class="aa-product-details-content">
						<div class="row">
							<!-- Modal view slider -->

							<div class="col-md-5 col-sm-5 col-xs-12">
								<div class="aa-product-view-slider">
									<div id="demo-1" class="simpleLens-gallery-container">
										<div class="simpleLens-container">
											<div class="simpleLens-big-image-container">
												<a
													data-lens-image="<c:url value="/assets/user/images/products/img-test/${probyid.image_link}"/>"
													class="simpleLens-lens-image"><img
													src="<c:url value="/assets/user/images/products/img-test/${probyid.image_link}"/>"
													class="simpleLens-big-image"></a>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- Modal view content -->

							<div class="col-md-7 col-sm-7 col-xs-12">
								<div class="aa-product-view-content">
									<h3>${probyid.name }</h3>
									<div class="aa-price-block">
										<span class="aa-product-price"><fmt:formatNumber
												value="${probyid.price}" type="number" /> VNĐ</span>
										<p class="aa-product-avilability">
											Tình trạng: <span>${probyid.status?"Còn hàng":"Hết hàng"}
											</span>
										</p>
									</div>
									<p>Nội dung: ${probyid.description}</p>
									<div class="aa-prod-quantity">

										<p class="aa-prod-category">
											<strong>Danh mục : </strong><a
												href="<c:url value="/shop/${probyid.objCate.id }"/>">
												${probyid.objCate.name }</a>
										</p>
									</div>
									<div class="aa-prod-view-bottom">
										<a class="aa-add-to-cart-btn"
											href="<c:url value="/AddCart/${probyid.id}"/>">Thêm vào
											giỏ hàng</a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="aa-product-details-bottom">
						<ul class="nav nav-tabs aa-products-tab" id="myTab2">
							<li class="active"><a href="#description" data-toggle="tab"
								class="">Mô tả</a></li>
							<li><a href="#review" data-toggle="tab">Đánh giá</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane fade in active" id="description">
								<p>${probyid.content }</p>
							</div>
							<div class="tab-pane fade " id="review">
								<div class="aa-product-review-area">
									<ul class="aa-review-nav">
										<c:forEach items="${commentbyid}" var="cmt">
											<li>
												<div class="media">
													<div class="media-body">
														<h4 class="media-heading">
															<strong>${cmt.name}</strong> - <span>${cmt.created}</span>
														</h4>
														<div class="aa-product-rating">
															<span class="fa fa-star"></span> <span class="fa fa-star"></span>
															<span class="fa fa-star"></span> <span class="fa fa-star"></span>
															<span class="fa fa-star"></span>
														</div>
														<p>${cmt.content}</p>
													</div>
												</div>
											</li>
										</c:forEach>
									</ul>
									<h4>Thêm đánh giá</h4>

									<!-- review form -->
									<form:form action="addComment" method="post"
										class="aa-review-form" modelAttribute="cmt">
										<div class="form-group">
											<label for="name">Tên</label> <input type="text"
												class="form-control" id="name" placeholder="Name"
												name="name">
										</div>
										<div class="form-group">
											<label for="email">Email</label> <input type="email"
												class="form-control" id="email"
												placeholder="Example@gmail.com" name="email">
										</div>
										<div class="form-group">
											<label for="message">Đánh giá của bạn</label>
											<textarea class="form-control" rows="3" id="content"
												name="content"></textarea>
										</div>

										<button type="submit" class="btn btn-default aa-review-submit">Gửi
											bình luận</button>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					<!-- Related product -->
					<div class="aa-product-related-item">
						<h3>SẢN PHẨM LIÊN QUAN</h3>
						<ul class="aa-product-catg aa-related-item-slider">
							<!-- start single product item -->
							<c:forEach items="${probycatid}" var="product">
								<li>
									<figure>
										<a class="aa-product-img"
											href="<c:url value="/shop-detail/${product.id}"/>"><img
											src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
											alt=""></a>
										<a class="aa-add-card-btn"
											href="<c:url value="/AddCart/${product.id}"/> "><span
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

							<!-- start single product item -->
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>