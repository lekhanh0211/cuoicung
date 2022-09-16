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
				<h2>Tin tức</h2>
				<ol class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ</a></li>
					<li style="color: #fff">Tin tức</li>
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
						<div class="col-md-12">
							<div class="aa-blog-content">
								<div class="row">
									<c:forEach items="${blogs}" var="bl">
										<div class="col-md-4 col-sm-4">
											<article class="aa-blog-content-single">
												<h4>
													<a href="<c:url value="/blogs/${bl.id}"/>">${bl.title}</a>
												</h4>
												<figure class="aa-blog-img">
													<a href="<c:url value="/blogs/${bl.id}"/>"><img
														src="<c:url value="/assets/user/images/news/${bl.image_link}"/>"
														alt="farm products" height="180px" width="300px"></a>
												</figure>
												<p class="desc-boardnews">${bl.content}</p>
												<div class="aa-article-bottom">
													<div class="aa-post-author">
														Đăng bởi <a href="#">${bl.author}</a>
													</div>
													<div class="aa-post-date">${bl.created}</div>
												</div>
											</article>
										</div>
									</c:forEach>
								</div>
							</div>
							<!-- Blog Pagination -->

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>