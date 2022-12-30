<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<%@include file="all_css.jsp"%>
<title>Herbnation | Cart</title>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->

	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<%@include file="navbar.jsp"%>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
						</div>
						<ul style="display: none;">
							<li><a href="#">Raw Herbs</a></li>
							<li><a href="#">Edible Seeds</a></li>
							<li><a href="#">Powder & Mixtures</a></li>
							<li><a href="#">Dry Flowers</a></li>
							<li><a href="#">Dry Fruits & Nuts</a></li>
							<li><a href="#">Gums & Resin</a></li>
							<li><a href="#">Herbnation's special</a></li>
							<li><a href="#">Spices</a></li>
							<li><a href="#">Puja Products</a></li>
							<li><a href="#">Combo Offers</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<input type="text" placeholder="What do yo u need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h6>+917838757943</h6>
								<span>support 24/7 time</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Shopping Cart</h2>
						<div class="breadcrumb__option">
							<a href="./index.jsp">Home</a> <span>Shopping Cart</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="cart-body"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a href="index.jsp" class="primary-btn cart-btn">CONTINUE
							SHOPPING</a> <a href="shopping-cart.jsp" class="primary-btn cart-btn cart-btn-right"><span
							class="icon_loading"></span> Update Cart</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5>Discount Codes</h5>
							<form action="#">
								<input type="text" placeholder="Enter your coupon code">
								<button type="submit" class="site-btn">APPLY COUPON</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<!-- <h5>Cart Total</h5> -->
						<!-- <ul>
							<li>Subtotal <span>$454.98</span></li>
							<li>Total <span>$454.98</span></li>
						</ul> -->
						<a href="checkout.jsp" class="primary-btn">PROCEED TO CHECKOUT</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shoping Cart Section End -->

	<!-- Footer Section Begin -->

	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<%@include file="footer.jsp"%>
	<!-- Footer Section End -->
	<%@include file="common_modal.jsp"%>


	<%@include file="all_js.jsp"%>
	<script src="js/script.js" type="text/javascript"></script>


</body>

</html>