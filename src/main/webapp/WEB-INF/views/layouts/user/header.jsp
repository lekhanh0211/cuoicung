<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Nông sản 24h - Sự lựa chọn tin cậy</title>

<!-- Font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
<link href="<c:url value="/assets/user/css/font-awesome.css"/>"
	rel="stylesheet">

<!-- Bootstrap -->
<link href="<c:url value="/assets/user/css/bootstrap.css"/>"
	rel="stylesheet">
<link rel="icon" href="<c:url value="/assets/user/images/favicon.png"/>"
	type="image/x-icon">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link
	href="<c:url value="/assets/user/css/jquery.smartmenus.bootstrap.css"/>"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/user/css/jquery.simpleLens.css"/>">
<!-- slick slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/user/css/slick.css"/>">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/user/css/nouislider.css"/>">
<!-- Theme color -->
<link id="switcher"
	href="<c:url value="/assets/user/css/theme-color/default-theme.css"/>"
	rel="stylesheet">

<!-- Top Slider CSS -->
<link
	href="<c:url value="/assets/user/css/sequence-theme.modern-slide-in.css"/>"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="<c:url value="/assets/user/css/style.css"/>"
	rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<header id="aa-header">


		<!-- start header top  -->
		<div class="aa-header-top">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aa-header-top-area">
							<!-- start header top left -->
							<div class="aa-header-top-left">
								<div class="cellphone hidden-xs">
									<p>
										<span class="fas fa-home"></span>
										<tag:message code="title-smalll" text="Vietnamese specialties" />
									</p>
								</div>
								<!-- start language -->
								<div class="aa-language">
									<div class="dropdown">
										<a class="btn dropdown-toggle" href="?lang=vi_VN"> <img
											src="<c:url value="/assets/user/img/flag/vietnam.png"/>"
											alt="english flag"> <tag:message code="vn"
												text="Vietnamese" />
										</a> | <a class="btn dropdown-toggle" href="?lang=en_US"> <img
											src="<c:url value="/assets/user/img/flag/english.jpg"/>"
											alt="english flag"> <tag:message code="en"
												text="English" />
										</a>
										<%-- <a class="btn dropdown-toggle"
											href="<c:url value="?lang=en_US"/>" type="button"
											id="dropdownMenu1" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="true"> <img
											src="<c:url value="/assets/user/img/flag/english.jpg"/>"
											alt="english flag"> <tag:message code="en"
												text="English" />
										</a> --%>
									</div>

								</div>
								<!-- / language -->

								<!-- start cellphone -->
								<!--                <div class="cellphone hidden-xs">
                  <p><span class="fa fa-phone"></span>00-62-658-658</p>
                </div>-->
								<!-- / cellphone -->
							</div>
							<!-- / header top left -->
							<div class="aa-header-top-right">
								<ul class="aa-head-top-nav-right">

									<c:if test="${loginInfo.username != null}">
										<li><a><strong><tag:message code="hello"
														text="Hello" /></strong> ${loginInfo.username }</a></li>
										<li class="hidden-xs"><a
											href="<c:url value="/dangxuat"/>"><tag:message
													code="logout" text="Logout" /></a></li>
									</c:if>

									<c:if test="${loginInfo.username == null}">
										<li class="hidden-xs"><a href="<c:url value="/dangky"/>"><tag:message
													code="register" text="Register" /></a></li>
										<li><a href="<c:url value="/dangnhap"/>"><tag:message
													code="login" text="Login" /></a></li>
									</c:if>

									<!--  data-toggle="
	modal" data-target="#login-modal"-->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / header top  -->
		<!-- start header bottom  -->


		<div class="aa-header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aa-header-bottom-area">
							<!-- logo  -->
							<div class="aa-logo">
								<!-- Text based logo -->
								<!--                <a href="index.jsp">
                  <span class="fa fa-shopping-cart"></span>
                  <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                </a>-->
								<!-- img based logo -->
								<a href="<c:url value="/"/>"><img
									src="<c:url value="/assets/user/images/logo.png"/>"
									alt="logo img" width="100%"></a>
							</div>
							<!-- / logo  -->
							<!-- Shipping service -->

							<div class="aa-shipping-box">
								<a class="aa-shipping-boxsmall"> <span
									class="aa-shipping-boxsmall-icon fas fa-shipping-fast">
								</span> <span class="aa-shipping-box-text">
										<div class="aa-shipping-title">
											<tag:message code="free" text="Free Shipping" />
										</div>
										<div class="">
											<tag:message code="area" text="HANOI city Area" />
										</div>
								</span>

								</a> <a class="aa-shipping-boxsmall"> <span
									class="aa-shipping-boxsmall-icon fas fa-phone"></span> <span
									class="aa-shipping-box-text">
										<div class="aa-shipping-title">
											<tag:message code="phone" text="Support: +84 777.399.333" />
										</div>
										<div class="">
											<tag:message code="help" text="Free 24/7 consultation" />
										</div>
								</span>

								</a> <a class="aa-shipping-boxsmall"> <span
									class="aa-shipping-boxsmall-icon fas fa-shipping-fast"></span>
									<span class="aa-shipping-box-text">
										<div class="aa-shipping-title">
											<tag:message code="ship" text="Nationwide Delivery" />
										</div>
										<div class="">
											<tag:message code="quality"
												text="Guaranteed prestige and quality" />
										</div>
								</span>

								</a>
							</div>




							<!-- cart box -->
							<div class="aa-cartbox">
								<a class="aa-cart-link" href="<c:url value="/cart"/>"><span
									class="fas fa-cart-arrow-down"></span> <span
									class="aa-cart-title"><tag:message code="cart"
											text="Shoping Cart" /></span> <c:if test="${TotalQuantity != NULL}">
										<span class="aa-cart-notify">${TotalQuantity}</span>
									</c:if> </a>
								<div class="aa-cartbox-summary">
									<ul class="scroll-product">
										<c:forEach items="${Cart}" var="cart">
											<li><a class="aa-cartbox-img"
												href="<c:url value="/cart"/>"><img
													src="<c:url value="/assets/user/images/products/img-test/${cart.value.product.image_link}"/>"
													alt="img"></a>
												<div class="aa-cartbox-info">
													<h4>
														<a href="<c:url value="/cart"/>">${cart.value.product.name}</a>
													</h4>
													<p>${cart.value.quantity}x<fmt:formatNumber
															value="${cart.value.product.price}" type="number" />
														VNĐ
													</p>
												</div></li>
										</c:forEach>
									</ul>
									<div class="total-detailproduct">
										<span class="aa-cartbox-total-title"> <b><tag:message
													code="total" text="Total" />:</b>
										</span> <span class="aa-cartbox-total-price"> <fmt:formatNumber
												value="${TotalPrice}" type="number" /> VNĐ
										</span>
									</div>
									<a class="aa-cartbox-checkout aa-primary-btn"
										href="<c:url value="/cart"/> "><tag:message code="detail"
											text="Detail" /> </a> <a
										class="aa-cartbox-checkout aa-primary-btn"
										href="<c:url value="checkout"/> "><tag:message
											code="checkout" text="Check Out" /> </a>
								</div>
							</div>
							<!-- / cart box -->

						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- / header bottom  -->
	</header>

	<!-- menu -->
	<%@include file="/WEB-INF/views/layouts/user/menu.jsp"%>
	<!-- / menu -->


	<!-- wpf loader Two -->
	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span><tag:message code="loading" text="Loading..." /></span>
		</div>
	</div>
	<!-- / wpf loader Two -->
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->