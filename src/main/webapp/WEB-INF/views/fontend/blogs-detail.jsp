<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<section id="aa-catg-head-banner"
	style="display: flex; justify-content: center; background-color: white;">
	<img src="<c:url value="/assets/user/images/archive-banner.png"/>"
		alt="banner blog">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Chi tiết bài viết</h2>
				<ol class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ</a></li>
					<li style="color: #fff">Bài viết</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- Blog Archive -->
<section id="aa-blog-archive">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-blog-archive-area">
					<div class="row">
						<div class="col-md-9">
							<!-- Blog details -->
							<div class="aa-blog-content aa-blog-details">
								<article class="aa-blog-content-single">
									<h2>
										<a href="#">${blogbyid.title}</a>
									</h2>
									<div class="aa-article-bottom">
										<div class="aa-post-author">
											Đăng bởi <a href="#">${blogbyid.author}</a>
										</div>
										<div class="aa-post-date">${blogbyid.created}</div>
									</div>
									<figure class="aa-blog-img">
										<a href=""><img
											src="<c:url value="/assets/user/images/news/${blogbyid.image_link}"/>"
											alt="fashion img"></a>
									</figure>
									<p>${blogbyid.content}</p>

								</article>
							</div>
						</div>
						<!-- blog sidebar -->
						<div class="col-md-3">
							<aside class="aa-blog-sidebar">

								<div class="aa-sidebar-widget">
									<h3>Bài đăng gần đây</h3>
									<div class="aa-recently-views">
										<ul>
											<c:forEach items="${blogs}" var="bl" end="2">
												<li><a class="aa-cartbox-img"
													href="<c:url value="/blogs/${bl.id}"/>"><img
														src="<c:url value="/assets/user/images/news/${bl.image_link}"/>"
														alt="img bài viết"></a>
													<div class="aa-cartbox-info">
														<h4>
															<a href="<c:url value="/blogs/${bl.id}"/>"><b>${bl.title }</b></a>
														</h4>
														<p>${bl.created }</p>
													</div></li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</aside>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>