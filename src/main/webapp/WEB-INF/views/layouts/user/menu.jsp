<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section id="menu">
	<div class="container">
		<div class="menu-area">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<!-- Left nav -->
					<ul class="nav navbar-nav">
						<li><a href="<c:url value="/"/>"><tag:message code="home"
									text="Home" /></a></li>
						<li><a href="<c:url value="/shop"/>"><tag:message
									code="shop" text="Shop" /></a>
						<li><a href="<c:url value="/about"/>"><tag:message
									code="about" text="About" /></a></li>
						<li><a href="<c:url value="/blogs"/>"><tag:message
									code="blogs" text="Blogs" /></a></li>
						<li><a href="<c:url value="/contact"/>"><tag:message
									code="contact" text="Contact" /></a></li>
						<li class="aa-search">
							<!-- search box --> <a class="aa-search-box">
								<form action="search-product" " method="GET">
									<input type="text" name="name" id=""
										placeholder="<tag:message code="search"
									text="What do you need ?..." />">
									<button class="serach-box">
										<span class="fa fa-search"></span>
									</button>
								</form>
						</a> <!-- / search box -->
						</li>
					</ul>
				</div>
				<!--/.nav-collapse -->

			</div>
		</div>
	</div>
</section>