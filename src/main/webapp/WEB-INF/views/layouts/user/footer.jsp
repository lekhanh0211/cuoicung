<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="dec"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!-- footer -->
<footer id="aa-footer">
	<!-- footer bottom -->
	<div class="aa-footer-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-footer-top-area">
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<div class="aa-footer-widget">
									<a href="${pageContext.request.contextPath}/"><img
										src="<c:url value="/assets/user/images/logo_footer.jpg"/>"
										alt="logo img" width="185px"></a>
									<ul class="aa-footer-nav">
										<address>
											<p>Ngõ 7 - P. La Khê - Q. Hà Đông - TP Hà Nội</p>
											<p>
												<span class="fa fa-phone"></span>+84 777.399.333
											</p>
											<p>
												<span class="fa fa-envelope"></span>dacsanvi@gmail.com
											</p>
										</address>
										<li><img
											src="<c:url value="/assets/user/images/dadangky.png"/>"
											alt="logo img" width="40%"></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="aa-footer-widget">
									<div class="aa-footer-widget">
										<h3>
											<tag:message code="customersupport" text="CUSTOMER SUPPORT" />
										</h3>
										<ul class="aa-footer-nav">
											<li style="margin: 20px"><a
												href="${pageContext.request.contextPath}/view/client/order"><tag:message
														code="orderingguide" text="Ordering Guide" /> </a></li>
											<li style="margin: 20px"><a
												href="${pageContext.request.contextPath}/view/client/payment"><tag:message
														code="paymentpolicy" text="Payment Policy" /> </a></li>
											<li style="margin: 20px"><a
												href="${pageContext.request.contextPath}/view/client/security"><tag:message
														code="privacypolicy" text="Privacy Policy" /></a></li>
											<li style="margin: 20px"><a
												href="${pageContext.request.contextPath}/view/client/security"><tag:message
														code="deliverypolicy" text="Delivery Policy" /></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="aa-footer-widget">
									<div class="aa-footer-widget">
										<h3>
											<tag:message code="contac" text="CONTACT" />
										</h3>
										<iframe
											src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FKPDreamLife%2F&tabs=time&width=340&height=130&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
											width="340" height="130"
											style="border: none; overflow: hidden" scrolling="no"
											frameborder="0" allowfullscreen="true"
											allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
										<div class="aa-footer-social">
											<a href="#"><span class="fab fa-facebook"></span></a> <a
												href="#"><span class="fab fa-youtube"></span></a> <a
												href="#"><span class="fab fa-instagram"></span></a> <a
												href="#"><span class="fab fa-skype"></span></a>
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
	<!-- footer-bottom -->
	<div class="aa-footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-footer-bottom-area">
						<p>Copyright 2022 & by dacsanvi@gmail.com</p>
						<div class="aa-footer-payment">
							<span class="fab fa-cc-mastercard"></span> <span
								class="fab fa-cc-visa"></span> <span class="fab fa-paypal"></span>
							<span class="fab fa-cc-discover"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- / footer -->

</body>
<script type="text/javascript">
	var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
	(function() {
		var s1 = document.createElement("script"), s0 = document
				.getElementsByTagName("script")[0];
		s1.async = true;
		s1.src = 'https://embed.tawk.to/5eedbd889e5f69442290f4d1/default';
		s1.charset = 'UTF-8';
		s1.setAttribute('crossorigin', '*');
		s0.parentNode.insertBefore(s1, s0);
	})();
</script>
<!--End of Tawk.to Script-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value="/assets/user/js/bootstrap.js"/>"></script>
<!-- SmartMenus jQuery plugin -->
<!-- SmartMenus jQuery Bootstrap Addon -->

<!-- To Slider JS -->
<script src="<c:url value="/assets/user/js/sequence.js"/>"></script>
<script
	src="<c:url value="/assets/user/js/sequence-theme.modern-slide-in.js"/>"></script>
<!-- Product view slider -->
<script type="text/javascript"
	src="<c:url value="/assets/user/js/jquery.simpleGallery.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/assets/user/js/jquery.simpleLens.js"/>"></script>
<!-- slick slider -->
<script type="text/javascript"
	src="<c:url value="/assets/user/js/slick.js"/>"></script>
<!-- Price picker slider -->
<script type="text/javascript"
	src="<c:url value="/assets/user/js/nouislider.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/assets/user/js/validate.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript"
	src="<c:url value="/assets/user/js/custom.js"/>"></script>
<dec:getProperty property="page.script" />

</html>