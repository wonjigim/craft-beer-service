<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@ include file="../myinclude/myheader.jsp" %>

<style>
	#slider1 {
	  width : 100%;
	  height : 600px;
	}
	
	#slider1 .banner_box {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  font-size: 60px;
	  color: #fff;
	  font-weight: bold;
	  background-size : cover;
	  background-position : center;
	  width : 100%;
	}

	/* #slider1 .banner_box:first-child {
	  	background-image: url("${contextPath}/resources/banner/slider1.jpg");
	  	background-position : center;
	  	background-size : 100% 600px;
	  	background-repeat : no-repeat;
	}
	
	#slider1 .banner_box:nth-child(2) {
		background-image: url("${contextPath}/resources/banner/slider1.jpg");
		background-position : center;
	  	background-size : cover;
	  	background-repeat : no-repeat;
	}
	
	#slider1 .banner_box:nth-child(3){
	 	background-image: url("${contextPath}/resources/banner/slider1.jpg");
	 	background-position : center;
	  	background-size : cover;
	  	background-repeat : no-repeat;
	}
	#slider1 .banner_box:nth-child(4){
	 	background-image: url("${contextPath}/resources/banner/slider1.jpg");
	 	background-position : center;
	  	background-size : cover;
	  	background-repeat : no-repeat;
	}
	
	#slider1 .banner_box:last-child {
	 	background-image: url("${contextPath}/resources/banner/slider1.jpg");
	 	background-position : center;
	  	background-size : cover;
	 	background-repeat : no-repeat;
	} */
</style>
 
 <%-- 배너 --%>
<div class="hero-slider">
  <div class="slider-item th-fullpage hero-area" style="background-image: url(${contextPath}/resources/banner/bannerimg3.jpg); background-size : cover; background-position : center;">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-center">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">PRODUCTS</p>
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">The beauty of nature <br> is hidden in details.</h1>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">Shop Now</a>
        </div>
      </div>
    </div>
  </div>
</div>
 <%-- 배너 END --%> 

<section class="product-category section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="title text-center">
					<h2>Contents</h2>
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box">
					<a href="#!">
						<img src="${contextPath }/resources/images/shop/category/category-1.jpg" alt="" />
						<div class="content">
							<h3>Clothes Sales</h3>
							<p>Shop New Season Clothing</p>
						</div>
					</a>	
				</div>
				<div class="category-box">
					<a href="#!">
						<img src="${contextPath }/resources/images/shop/category/category-2.jpg" alt="" />
						<div class="content">
							<h3>Smart Casuals</h3>
							<p>Get Wide Range Selection</p>
						</div>
					</a>	
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box category-box-2">
					<a href="#!">
						<img src="${contextPath }/resources/images/shop/category/category-3.jpg" alt="" />
						<div class="content">
							<h3>Jewellery</h3>
							<p>Special Design Comes First</p>
						</div>
					</a>	
				</div>
			</div>
		</div>
	</div>
</section>

<section class="products section bg-gray">
	<div class="container">
		<div class="row">
			<div class="title text-center">
				<h2>Products</h2>
			</div>
		</div>
		<div class="row">
			
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<!-- <span class="bage" style="background-color : brown;">Event</span> -->
						<span class="bage" style="background-color : brown;">Best</span>
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-1.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#!" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Reef Boardsport</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">	
					<span class="bage" style="background-color : brown;">Best</span>
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-2.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Rainbow Shoes</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
					<span class="bage" style="background-color : brown;">Best</span>
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-3.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Strayhorn SP</a></h4>
						<p class="price">$230</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
					<span class="bage">Sale</span>
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-4.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Bradley Mid</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
					<span class="bage">Sale</span>
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-5.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Rainbow Shoes</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-6.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Rainbow Shoes</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-7.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Rainbow Shoes</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-8.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Rainbow Shoes</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="${contextPath }/resources/images/shop/products/product-9.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Rainbow Shoes</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
		
		<!-- Modal -->
		<div class="modal product-modal fade" id="product-modal">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<i class="tf-ion-close"></i>
			</button>
		  	<div class="modal-dialog " role="document">
		    	<div class="modal-content">
			      	<div class="modal-body">
			        	<div class="row">
			        		<div class="col-md-8 col-sm-6 col-xs-12">
			        			<div class="modal-image">
				        			<img class="img-responsive" src="${contextPath }/resources/images/shop/products/modal-product.jpg" alt="product-img" />
			        			</div>
			        		</div>
			        		<div class="col-md-4 col-sm-6 col-xs-12">
			        			<div class="product-short-details">
			        				<h2 class="product-title">GM Pendant, Basalt Grey</h2>
			        				<p class="product-price">$200</p>
			        				<p class="product-short-description">
			        					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
			        				</p>
			        				<a href="cart.html" class="btn btn-main">Add To Cart</a>
			        				<a href="product-single.html" class="btn btn-transparent">View Product Details</a>
			        			</div>
			        		</div>
			        	</div>
			        </div>
		    	</div>
		  	</div>
		</div><!-- /.modal -->

		</div>
	</div>
</section>

<!-- <section id="slider2" class="slider">
  <div class="box" style="background-color: #ff0000;">1</div>
  <div class="box" style="background-color: #ff0000;">2</div>
  <div class="box" style="background-color: #ff0000;">3</div>
  <div class="box" style="background-color: #ff0000;">4</div>
  <div class="box" style="background-color: #ff0000;">5</div>
</section> -->

<script>
/* function Slider(target, type) {
	  //상태
	  var index = 1;
	  var isMoved = true;
	  var speed = 3000; // ms
	  
	  //방향
	  var transform = "transform " + speed / 3000 + "s";
	  var translate = (i) => "translateX(-" + 100 * i + "%)";
	  if (type === "V") {
	    translate = (i) => "translateY(-" + 100 * i + "%)";
	  }

	  //슬라이더
	  var slider = document.querySelector(target);
	  var sliderRects = slider.getClientRects()[0];
	  slider.style["overflow"] = "hidden";

	  //슬라이더 화면 컨테이너
	  var container = document.createElement("div");
	  container.style["display"] = "flex";
	  container.style["flex-direction"] = type === "V" ? "column" : "row";
	  container.style["width"] = sliderRects.width + "px";
	  container.style["height"] = sliderRects.height + "px";
	  container.style["transform"] = translate(index);

	  //슬라이더 화면 목록
	  var boxes = [].slice.call(slider.children);
	  boxes = [].concat(boxes[boxes.length - 1], boxes, boxes[0]);

	  //슬라이더 화면 스타일
	  var size = boxes.length;
	  for (var i = 0; i < size; i++) {
	    var box = boxes[i];
	    box.style["flex"] = "none";
	    box.style["flex-wrap"] = "wrap";
	    box.style["height"] = "100%";
	    box.style["width"] = "100%";
	    container.appendChild(box.cloneNode(true));
	  }

	  //처음/마지막 화면 눈속임 이벤트
	  container.addEventListener("transitionstart", function () {
	    isMoved = false;
	    setTimeout(() => {
	      isMoved = true;
	    }, speed);
	  });
	  container.addEventListener("transitionend", function () {
	    //처음으로 순간이동
	    if (index === size - 1) {
	      index = 1;
	      container.style["transition"] = "none";
	      container.style["transform"] = translate(index);
	    }
	    //끝으로 순간이동
	    if (index === 0) {
	      index = size - 2;
	      container.style["transition"] = "none";
	      container.style["transform"] = translate(index);
	    }
	  });

	  //슬라이더 붙이기
	  slider.innerHTML = "";
	  slider.appendChild(container);

	  return {
	    move: function (i) {
	      if (isMoved === true) {
	        index = i;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    },
	    next: function () {
	      if (isMoved === true) {
	        index = (index + 1) % size;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    },
	    prev: function () {
	      if (isMoved === true) {
	        index = index === 0 ? index + size : index;
	        index = (index - 1) % size;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    }
	  };
	}

	var s1 = new Slider("#slider1", "H");
	
	setInterval(() => {
	  s1.next();
	  //s2.next();
	}, 3000) */
</script>

 <%-- <script src="${contextPath }/resources/js/heroBanner.js"></script> --%>

<%@ include file="../myinclude/myfooter.jsp" %>




