<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<%@include file="all_css.jsp"%>

<title>Herbnation | Contact</title>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<%@include file="navbar.jsp"%>
	<!-- Humberger End -->

	<!-- Header Section Begin -->

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
						<h2>Contact Us</h2>
						<div class="breadcrumb__option">
							<a href="index.jsp">Home</a> <span>Contact Us</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Contact Section Begin -->
	<section class="contact spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_phone"></span>
						<h4>Phone</h4>
						<p>+91-7838757943</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_pin_alt"></span>
						<h4>Address</h4>
						<p>Uttrakhand, India</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_clock_alt"></span>
						<h4>Open time</h4>
						<p>10:00 am to 23:00 pm</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_mail_alt"></span>
						<h4>Email</h4>
						<p>admin@herbnation.com</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact Section End -->

	<!-- Map Begin -->
	<div class="map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1772273.4045853983!2d77.5544309446244!3d29.821809436859866!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390a3e0ada1e606d%3A0x8f78f09f2e490bf6!2sCorbett%20Farm%20House!5e0!3m2!1sen!2sin!4v1672403925149!5m2!1sen!2sin"
			width="600" height="450" style="border: 0;" allowfullscreen=""
			loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		<div class="map-inside">
			<i class="icon_pin"></i>
			<div class="inside-widget">
				<h4>Herbnation</h4>
				<ul>
					<li>Phone: +91-7838757943</li>
					<li>Add: 16 Ram nagar, IND</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Map End -->

	<!-- Contact Form Begin -->
	<div class="contact-form spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="contact__form__title">
						<h2>Leave Message</h2>
					</div>
				</div>
			</div>
			<form action="#">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<input type="text" placeholder="Your name">
					</div>
					<div class="col-lg-6 col-md-6">
						<input type="text" placeholder="Your Email">
					</div>
					<div class="col-lg-12 text-center">
						<textarea placeholder="Your message"></textarea>
						<button type="submit" class="site-btn">SEND MESSAGE</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Contact Form End -->

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