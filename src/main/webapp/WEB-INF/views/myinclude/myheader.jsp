<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="ko">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Aviato | E-commerce template</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="${contextPath }/resources/images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="${contextPath }/resources/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="${contextPath }/resources/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Animate css -->
  <link rel="stylesheet" href="${contextPath }/resources/plugins/animate/animate.css">
  <!-- Slick Carousel -->
<%--   <link rel="stylesheet" href="${contextPath }/resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="${contextPath }/resources/plugins/slick/slick-theme.css"> --%>
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="${contextPath }/resources/css/style.css">
  
  <!-- 폰트 어썸 6.1.1ver -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
   <!-- 
   Essential Scripts
   =====================================-->
   
   <!-- Main jQuery -->
   <script src="${contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script>
   <!-- Bootstrap 3.1 -->
   <script src="${contextPath }/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- Bootstrap Touchpin -->
   <script src="${contextPath }/resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
   <!-- Instagram Feed Js -->
   <script src="${contextPath }/resources/plugins/instafeed/instafeed.min.js"></script>
   <!-- Video Lightbox Plugin -->
   <script src="${contextPath }/resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
   <!-- Count Down Js -->
   <script src="${contextPath }/resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

   <!-- slick Carousel -->
   <script src="${contextPath }/resources/plugins/slick/slick.min.js"></script>
   <script src="${contextPath }/resources/plugins/slick/slick-animation.min.js"></script> 

   <!-- Google Mapl -->
<%--    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
   <script type="text/javascript" src="${contextPath }/resources/plugins/google-map/gmap.js"></script> --%>

   <!-- Main Js File -->
   <%-- <script src="${contextPath }/resources/js/script.js"></script> --%>
   
   <!-- 배너 JS -->

</head>

<body id="body">
<!-- Start Top Header Bar -->
<section class="top-header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4">
				<div class="contact-number">
					<i class="tf-ion-ios-telephone"></i>
					<span>0129- 12323-123123</span>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Site Logo -->
				<div class="logo text-center">
					<a href="${contextPath }/">
						<!-- replace logo here -->
					<!-- 	<svg width="135px" height="29px" viewBox="0 0 155 29" version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="40"
								font-family="AustinBold, Austin" font-weight="bold">
								<g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
									<text id="AVIATO">
										<tspan x="108.94" y="325">Deer Beer</tspan>
									</text>
								</g>
							</g>
						</svg> -->
						<span style="font-size : 48px;"><span style="color : brown;">Deer</span> Beer</span></a>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Cart -->
				<ul class="top-menu text-right list-inline">
					<li class="dropdown cart-nav dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-android-cart"></i>Cart</a>
						<div class="dropdown-menu cart-dropdown">
							<!-- Cart Item -->
							<div class="media">
							<h4 class="dropdown-header">최근 본 상품</h4>
								<div role="separator" class="divider"></div><br>
								<a class="pull-left" href="#!">
									<img class="media-object" src="${contextPath }/resources/images/shop/cart/cart-1.jpg" alt="image" />
								</a>
								<div class="media-body">
									<h4 class="media-heading"><a href="#!">Ladies Bag</a></h4>
									<div class="cart-price">
										<span>1 x</span>
										<span>1250.00</span>
									</div>
									<h5><strong>$1200</strong></h5>
								</div>
								<a href="#!" class="remove"><i class="tf-ion-close"></i></a>
							</div><!-- / Cart Item -->
							<!-- Cart Item -->
							<div class="media">
								<a class="pull-left" href="#!">
									<img class="media-object" src="${contextPath }/resources/images/shop/cart/cart-2.jpg" alt="image" />
								</a>
								<div class="media-body">
								
									<h4 class="media-heading"><a href="#!">Ladies Bag</a></h4>
									<div class="cart-price">
										<span>1 x</span>
										<span>1250.00</span>
									</div>
									<h5><strong>$1200</strong></h5>
								</div>
								<a href="#!" class="remove"><i class="tf-ion-close"></i></a>
							</div><!-- / Cart Item -->

							<div class="cart-summary">
								<span>Total</span>
								<span class="total-price">$1799.00</span>
							</div>
							<ul class="text-center cart-buttons">
								<li><a href="${contextPath }/productsview" class="btn btn-small">목록보기</a></li>
								<li><a href="${contextPath }/productsdetail" class="btn btn-small btn-solid-border">구매하기</a></li>
							</ul>
						</div>

					</li><!-- / Cart -->

					<!-- Search -->
					<li class="dropdown search dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-ios-search-strong"></i> Search</a>
						<ul class="dropdown-menu search-dropdown">
							<li>
								<form action="post"><input type="search" class="form-control" placeholder="검색하세요..."></form>
							</li>
						</ul>
					</li><!-- / Search -->

					<!-- 로그인페이지 -->
					<li><a href="${contextPath }/member/login"><i class="fa-solid fa-user" style="font-size : 12px;"></i>&nbsp;로그인</a></li>
					
					
					
					<!-- <li class="dropdown search dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-ios-search-strong"></i> Search</a>
						<ul class="dropdown-menu search-dropdown">
							<li>
								<form action="post"><input type="search" class="form-control" placeholder="Search..."></form>
							</li>
						</ul>
					</li> --><!-- / Search -->
					
					

				</ul><!-- / .nav .navbar-nav .navbar-right -->
			</div>
		</div>
	</div>
</section><!-- End Top Header Bar -->


<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
		<div class="container">
			<div class="navbar-header">
				<h2 class="menu-title">Main Menu</h2>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

			</div><!-- / .navbar-header -->

			<!-- Navbar Links -->
			<div id="navbar" class="navbar-collapse collapse text-center">
				<ul class="nav navbar-nav">

					<!-- Home -->
					<li class="dropdown ">
						<a href="${contextPath }/">Home</a>
					</li><!-- / Home -->


					<!-- Elements -->
					<li class="dropdown dropdown-slide">
					<!-- shop -->
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">Shop 
							<span class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">
								<div>
									<ul>
										<li class="dropdown-header">판매</li>
										<li role="separator" class="divider"></li>
										<li><a href="${contextPath }/beertools">도구</a></li>
										<li><a href="${contextPath }/ingredient">재료</a></li>
									</ul>
								</div>
							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / Elements -->

					<!-- Elements -->
					<li class="dropdown dropdown-slide">
					<!-- community -->
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">community 
							<span class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">
								<div>
									<ul>
										<li class="dropdown-header">커뮤니티</li>
										<li role="separator" class="divider"></li>
										<li><a href="${contextPath}/recipe">레시피</a></li>
										<li><a href="${contextPath}/freenotice">게시판</a></li>
									</ul>
								</div>
							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / Elements -->
					
					<!-- Blog -->
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">Support
							<span class="tf-ion-ios-arrow-down"></span></a>
						<ul class="dropdown-menu">
							<li class="dropdown-header">고객지원</li>
							<li role="separator" class="divider"></li>
							<li><a href="${contextPath }/qna">QnA</a></li>
						</ul>
					</li><!-- / Blog -->

					<!-- Shop --><!-- 
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">Elements <span
								class="tf-ion-ios-arrow-down"></span></a>
						<ul class="dropdown-menu">
							<li><a href="typography.html">Typography</a></li>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="alerts.html">Alerts</a></li>
						</ul>
					</li> --><!-- / Blog -->
				</ul><!-- / .nav .navbar-nav -->

			</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>