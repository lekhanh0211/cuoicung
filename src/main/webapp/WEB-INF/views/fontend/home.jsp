<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section id="aa-slider">
	<div class="aa-slider-area">
		<div id="sequence" class="seq">
			<div class="seq-screen">
				<ul class="seq-canvas">
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq
								src="<c:url value="/assets/user/images/slide_1.jpg"/>"
								alt="Men slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 50%</span>
							<h2 data-seq>Các Loại Hạt Bổ Dưỡng</h2>
							<p data-seq>Các loại hạt tại của hàng luôn luôn được tuyển
								chọn,và các mặt hàng luôn đảm bảo chất lượng.</p>
							<a data-seq href="<c:url value="/shop"/>"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq
								src="<c:url value="/assets/user/images/slide_2.jpg"/>"
								alt="Wristwatch slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 20%</span>
							<h2 data-seq>Rau Củ Quả Xanh Sạch</h2>
							<p data-seq>Rau củ quả được trồng đảm bảo không thuốc hóa học
								, đảm bảo chất lương xanh sạch và an toàn.</p>
							<a data-seq href="<c:url value="/shop"/>"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq
								src="<c:url value="/assets/user/images/slide_3.jpg"/>"
								alt="Women Jeans slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 33%</span>
							<h2 data-seq>Trái Cây Ngon Ngọt</h2>
							<p data-seq>Trái cây tại cửa hàng đa dạng về loại hàng, luôn
								đảm bảo tính an toàn và chất lượng lên hàng đầu.</p>
							<a data-seq href="<c:url value="/shop"/>"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq
								src="<c:url value="/assets/user/images/slide_4.jpg"/>"
								alt="Shoes slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 25%</span>
							<h2 data-seq>Mật Ong Và Tinh Dầu</h2>
							<p data-seq>Là 2 sản phẩm mới bên cửa hàng của chúng tôi,sản
								phẩm đã được kiểm định và cấp phép về an toàn.</p>
							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- slider navigation btn -->
			<fieldset class="seq-nav" aria-controls="sequence"
				aria-label="Slider buttons">
				<a type="button" class="seq-prev" aria-label="Previous"><span
					class="fa fa-angle-left"></span></a> <a type="button" class="seq-next"
					aria-label="Next"><span class="fa fa-angle-right"></span></a>
			</fieldset>
		</div>
	</div>
</section>
<section id="aa-promo">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-promo-area">
					<div class="row">
						<!-- promo left -->
						<div class="col-md-5 no-padding">
							<div class="aa-promo-left">
								<div class="aa-promo-banner">
									<img src="<c:url value="/assets/user/images/section1_tc.jpg"/>"
										alt="dâu tây Đà Lạt">
									<div class="aa-prom-content">
										<span>Giảm giá 35%</span>
										<h4>Dâu tây Đà Lạt</h4>
									</div>
								</div>
							</div>
						</div>
						<!-- promo right -->
						<div class="col-md-7 no-padding">
							<div class="aa-promo-right">
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img
											src="<c:url value="/assets/user/images/section2_tc.jpg"/>"
											alt="hạt tiêu daklak">
										<div class="aa-prom-content">
											<span>Sản Phẩm độc quyền</span>
											<h4>Hạt tiêu DakLak</h4>
										</div>
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img
											src="<c:url value="/assets/user/images/section3_tc.jpg"/>"
											alt="img">
										<div class="aa-prom-content">
											<span>Sản phẩm nhập khẩu</span>
											<h4>Cherry Mỹ</h4>
										</div>
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img
											src="<c:url value="/assets/user/images/section4_tc.jpg"/>"
											alt="img">
										<div class="aa-prom-content">
											<span>Giảm giá 25%</span>
											<h4>Tinh Dầu Sả</h4>
										</div>
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img
											src="<c:url value="/assets/user/images/section5_tc.jpg"/>"
											alt="img">
										<div class="aa-prom-content">
											<span>Sản phẩm độc quyền</span>
											<h4>Mật ong rừng Tây Bắc</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Promo section -->
<!-- Products section -->
<section id="aa-product">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-product-area">
						<div class="aa-product-inner">
							<!-- start prduct navigation -->
							<ul class="nav nav-tabs aa-products-tab">
								<li class="active"><a href="#raucu" data-toggle="tab">Rau
										Củ Quả</a></li>
								<li><a href="#hat" data-toggle="tab">Các Loại Hạt</a></li>
								<li><a href="#traicay" data-toggle="tab">Trái Cây </a></li>
								<li><a href="#matong" data-toggle="tab">Mật Ong & Tinh
										Dầu</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- Start men product category -->
								<div class="tab-pane fade in active" id="raucu">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${p_rau}" var="product">
											<li>
												<figure>
													<a class="aa-product-img"
														href="<c:url value="/shop-detail/${product.id}"/>"><img
														src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="<c:url value="/AddCart/${product.id}"/>"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
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
								<!-- / men product category -->
								<!-- start women product category -->
								<div class="tab-pane fade" id="hat">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${p_hat}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="<c:url value="/shop-detail/${product.id}"/>"><img
														src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="<c:url value="/AddCart/${product.id}"/>"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
														</h4>
														<span class="aa-product-price"><fmt:formatNumber
																value="${product.price}" type="number" /> VNĐ</span>
													</figcaption>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / women product category -->
								<!-- start sports product category -->
								<div class="tab-pane fade" id="traicay">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${p_traicay}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="<c:url value="/shop-detail/${product.id}"/>"><img
														src="<c:url value= "/assets/user/images/products/img-test/${product.image_link}"/>"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="<c:url value="/AddCart/${product.id}"/>"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
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
								<!-- / sports product category -->
								<!-- start electronic product category -->
								<div class="tab-pane fade" id="matong">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${p_tinhdau}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="<c:url value="/shop-detail/${product.id}"/>"><img
														src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="<c:url value="/AddCart/${product.id}"/>"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
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
								<!-- / electronic product category -->
							</div>
							<div class="more-product">
								<a class="aa-browse-btn" href="<c:url value="/shop"/>">Xem
									Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span>
								</a>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Products section -->
<!-- banner section -->
<section id="aa-banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-banner-area">
						<a href="#"><img
							src="<c:url value="/assets/user/images/banner_tc.jpg"/>"
							alt="banner trang chủ"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- popular section -->
<section id="aa-popular-category">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-popular-category-area">
						<!-- start prduct navigation -->
						<ul class="nav nav-tabs aa-products-tab">
							<li class="active"><a href="#sanphammoi" data-toggle="tab">Sản
									Phẩm Mới</a></li>
							<li><a href="#sanphambanchay" data-toggle="tab">Sản Phẩm
									Bán Chạy</a></li>
							<li><a href="#sanphamgiamgia" data-toggle="tab">Sản Phẩm
									Giảm Giá</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<!-- Start men popular category -->
							<div class="tab-pane fade in active" id="sanphammoi">
								<ul class="aa-product-catg aa-popular-slider">
									<!-- start single product item -->
									<c:forEach items="${p_new}" var="product">
										<li>
											<figure>
												<a class="aa-product-img"
													href="<c:url value="/shop-detail/${product.id}"/>"><img
													src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
													alt="polo shirt img"></a>
												<a class="aa-add-card-btn"
													href="<c:url value="/AddCart/${product.id}"/>"><span
													class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
												<figcaption>
													<h4 class="aa-product-title">
														<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
													</h4>
													<span class="aa-product-price"><fmt:formatNumber
															value="${product.price}" type="number" /> VNĐ</span>
												</figcaption>
											</figure>
										</li>
									</c:forEach>
									<!-- start single product item -->
									<!-- start single product item -->

								</ul>

							</div>
							<!-- / popular product category -->

							<!-- start featured product category -->
							<div class="tab-pane fade" id="sanphambanchay">
								<ul class="aa-product-catg aa-popular-slider">
									<!-- start single product item -->
									<c:forEach items="${p_banchay}" var="product">
										<li>
											<figure>
												<a class="aa-product-img"
													href="<c:url value="/shop-detail/${product.id}"/>"><img
													src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
													alt="polo shirt img"></a>
												<a class="aa-add-card-btn"
													href="<c:url value="/AddCart/${product.id}"/>"><span
													class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
												<figcaption>
													<h4 class="aa-product-title">
														<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
													</h4>
													<span class="aa-product-price"><fmt:formatNumber
															value="${product.price}" type="number" /> VNĐ</span>

												</figcaption>
											</figure>
										</li>
									</c:forEach>
									<!-- start single product item -->
									<!-- start single product item -->

								</ul>

							</div>
							<!-- / featured product category -->

							<!-- start latest product category -->
							<div class="tab-pane fade" id="sanphamgiamgia">

								<ul class="aa-product-catg aa-popular-slider">
									<!-- start single product item -->
									<c:forEach items="${p_giamgia}" var="product">
										<li>
											<figure>
												<a class="aa-product-img"
													href="<c:url value="/shop-detail/${product.id}"/>"><img
													src="<c:url value="/assets/user/images/products/img-test/${product.image_link}"/>"
													alt="polo shirt img"></a>
												<a class="aa-add-card-btn"
													href="<c:url value="/AddCart/${product.id}"/>"><span
													class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
												<figcaption>
													<h4 class="aa-product-title">
														<a href="<c:url value="/shop-detail/${product.id}"/>">${product.name }</a>
													</h4>
													<span class="aa-product-price"><fmt:formatNumber
															value="${product.price}" type="number" /> VNĐ</span>

												</figcaption>
											</figure>
										</li>
									</c:forEach>
									<!-- start single product item -->
									<!-- start single product item -->

								</ul>
							</div>
							<!-- / latest product category -->
						</div>
						<div class="more-product">
							<a class="aa-browse-btn" href="<c:url value="/shop"/>">Xem
								Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / popular section -->
<!-- Support section -->
<section id="aa-support">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-support-area">
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-truck"></span>
							<h4>MIỄN PHÍ VẬN CHUYỂN</h4>
							<P>Chúng tôi đã áp dụng gói miễn phí vận chuyển cho đơn hàng
								trên 280.000VNĐ.</P>
						</div>
					</div>
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-clock-o"></span>
							<h4>GIAO HÀNG NHANH</h4>
							<P>Chúng tôi đảm bảo hàng đến tay khách hàng nhanh và đảm bảo
								sản phẩm an toàn.</P>
						</div>
					</div>
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-phone"></span>
							<h4>HỖ TRỢ 24/7</h4>
							<P>Hỗ trợ tư vấn và đặt hàng mọi lúc mọi nơi, đảm bảo thời
								gian cho khách hàng.</P>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Support section -->
<!-- Testimonial -->
<section id="aa-testimonial">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-testimonial-area">
					<ul class="aa-testimonial-slider">
						<!-- single slide -->
						<li>
							<div class="aa-testimonial-single">
								<img class="aa-testimonial-img"
									src="<c:url value="/assets/user/images/avatar.jpg"/>"
									alt="avatar 1"> <span
									class="fa fa-quote-left aa-testimonial-quote"></span>
								<p>Tôi đã mua hàng ở cửa hàng khá nhiều lần rồi, và tôi cảm
									thấy sản phẩm của cửa hàng được giao khá nhanh và sản phẩm thì
									tốt.</p>
								<div class="aa-testimonial-info">
									<p>Ngọc Huy</p>
									<span>Nhân viên kinh doanh</span>
								</div>
							</div>
						</li>
						<!-- single slide -->
						<li>
							<div class="aa-testimonial-single">
								<img class="aa-testimonial-img"
									src="<c:url value="/assets/user/images/avater-2.jpg"/>"
									alt="avatar 2"> <span
									class="fa fa-quote-left aa-testimonial-quote"></span>
								<p>Về chất lượng của sản phẩm thì khỏi phải bàn, rau củ luôn
									tươi xanh nhìn rất thích. Tôi sẽ mua hàng ở đây thường xuyên
								<p>
								<div class="aa-testimonial-info">
									<p>Mỹ Tân</p>
									<span>Diễn Viên</span>
								</div>
							</div>
						</li>
						<!-- single slide -->
						<li>
							<div class="aa-testimonial-single">
								<img class="aa-testimonial-img"
									src="<c:url value="/assets/user/images/avatar-1.jpg"/>"
									alt="avatar 3"> <span
									class="fa fa-quote-left aa-testimonial-quote"></span>
								<p>Nhiều lần đi làm bận rộn, không có thời gian ra siêu thị
									nên tôi thường mua hàng online ở đây. Chất lượng sản phẩm và
									dịch vụ ở đây rất là tốt!</p>
								<div class="aa-testimonial-info">
									<p>Oanh Oanh</p>
									<span>Sinh viên</span>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Testimonial -->

<!-- Latest Blog -->
<section id="aa-latest-blog">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-latest-blog-area">
					<h2>TIN TỨC</h2>
					<div class="row">
						<!-- single latest blog -->
						<c:forEach items="${blogs}" var="bl" end="2">
							<div class="col-md-4 col-sm-4">
								<div class="aa-latest-blog-single">
									<figure class="aa-blog-img">
										<a
											href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${bl.id}"><img
											src="<c:url value= "/assets/user/images/news/${bl.image_link}"/>"
											alt="Tin tức ${bl.title}"></a>
										<figcaption class="aa-blog-img-caption">
											<span href="#"><i class="fa fa-clock-o"></i>${bl.created}</span>
										</figcaption>
									</figure>
									<div class="aa-blog-info">
										<h3 class="aa-blog-title">
											<a
												href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${boardnew.id}">${bl.title}</a>
										</h3>
										<p class="desc-boardnews">${bl.content}</p>
										<a
											href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${bl.id}"
											class="aa-read-mor-btn">Xem thêm<span
											class="fa fa-long-arrow-right"></span></a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



