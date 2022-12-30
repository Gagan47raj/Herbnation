<!DOCTYPE html>
<%@page import="com.herbnation.helper.Helper"%>
<%@page import="com.herbnation.entities.Category"%>
<%@page import="com.herbnation.dao.CategoryDao"%>
<%@page import="com.herbnation.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.herbnation.helper.FactoryProvider"%>
<%@page import="com.herbnation.dao.ProductDao"%>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<%@include file="all_css.jsp"%>

<title>Herbnation | Home</title>


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
						<ul>
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
					<div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
						<div class="hero__text">
							<span>Herbs & Spices</span>
							<h2>
								Pure <br />100% Organic
							</h2>
							<p>Free Pickup and Delivery Available</p>
							<a href="#" class="primary-btn">SHOP NOW</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Categories Section Begin -->
	<section class="categories">
		<div class="container">
			<div class="row">
				<div class="categories__slider owl-carousel">
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="img/categories/exclu.jpg">
							<h5>
								<a href="#">Herbnation's Exclusive</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="img/categories/daily.jpg">
							<h5>
								<a href="#">Daily Uses</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="img/categories/remedies.jpg">
							<h5>
								<a href="#">Remedies</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="img/categories/juices.jpg">
							<h5>
								<a href="#">Juices</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="img/categories/nutri.jpg">
							<h5>
								<a href="#">Nutritions</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Categories Section End -->


	<%
	String cat = request.getParameter("category");

	ProductDao productDao = new ProductDao(FactoryProvider.getFactory());
	List<Product> productList = null;

	if (cat == null || cat.trim().equals("all")) {
		productList = productDao.getAllProducts();
	} else {
		int cid = Integer.parseInt(cat.trim());
		productList = productDao.getAllProductsById(cid);
	}

	CategoryDao catDao = new CategoryDao(FactoryProvider.getFactory());
	List<Category> categoryList = catDao.getCategories();
	%>

	<!-- Featured Section Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Featured Product</h2>
					</div>

					<div class="featured__controls">

						<ul>
							<li class="active"><a href="index.jsp?category=all">All</a></li>
							<%
							for (Category c : categoryList) {
							%>

							<li class="active"><a
								href="index.jsp?category=<%=c.getCategoryId()%>"><%=c.getCategoryTitle()%></a></li>

							<%
							}
							%>
						</ul>
					</div>

				</div>
			</div>


			<div class="row featured__filter">

				<%
				for (Product p : productList) {
				%>
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
					<div class="featured__item">

						<div class="featured__item__pic set-bg"
							data-setbg="img/product/<%=p.getProductPhoto()%>">

							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a id="myBtn"
									href="javascript:add_to_cart(<%=p.getProductId()%>, '<%=p.getProductName()%>', <%=p.getPriceAfterApplyingDiscount()%>,'img/product/<%=p.getProductPhoto()%>')"><i
										class="fa fa-shopping-cart"></i></a></li>
							</ul>

						</div>
						<div class="featured__item__text">
							<h5>
								<%=p.getProductName()%>
							</h5>
							<h6>
								<%=Helper.get10words(p.getProductDescription())%>
							</h6>
							<h5>
								<i class="fa fa-inr"></i>
								<%=p.getPriceAfterApplyingDiscount()%>
							</h5>
							<span>MRP: <i class="fa fa-inr"></i><%=p.getProductPrice()%>,
								<%=p.getProductDiscount()%>% off
							</span>
						</div>
					</div>
				</div>
				<%
				}

				if (productList.size() == 0) {

				}
				%>
			</div>
		</div>
	</section>
	<!-- Featured Section End -->

	<!-- Banner Begin -->
	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="img/banner/banner-1.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="img/banner/banner-2.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner End -->

	<!-- Latest Product Section Begin -->
	<section class="latest-product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Latest Products</h4>
						<div class="latest-product__slider owl-carousel">
							<%
							for (Product p : productList) {
							%>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
									
										<img src="img/product/<%=p.getProductPhoto()%>">
									</div>
									<div class="latest-product__item__text">
										<h6><%=p.getProductName()%></h6>
										<span><i class="fa fa-inr"></i> <%=p.getPriceAfterApplyingDiscount()%></span>
									</div>
								</a>
							</div>
							<%
							}
							if (productList.size() == 0) {
							}
							%>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Top Rated Products</h4>
						<div class="latest-product__slider owl-carousel">
							<%
							for (Product p : productList) {
							%>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
									
										<img src="img/product/<%=p.getProductPhoto()%>">
									</div>
									<div class="latest-product__item__text">
										<h6><%=p.getProductName()%></h6>
										<span><i class="fa fa-inr"></i> <%=p.getPriceAfterApplyingDiscount()%></span>
									</div>
								</a>
							</div>
							<%
							}
							if (productList.size() == 0) {
							}
							%>
						</div>
					</div>
				</div>


				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Review Products</h4>
						<div class="latest-product__slider owl-carousel">
							<%
							for (Product p : productList) {
							%>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
									
										<img src="img/product/<%=p.getProductPhoto()%>">
									</div>
									<div class="latest-product__item__text">
										<h6><%=p.getProductName()%></h6>
										<span><i class="fa fa-inr"></i> <%=p.getPriceAfterApplyingDiscount()%></span>
									</div>
								</a>
							</div>
							<%
							}
							if (productList.size() == 0) {
							}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Latest Product Section End -->

	<!-- Blog Section Begin -->
	<section class="from-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title from-blog__title">
						<h2>From The Blog</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="img/blog/blog-1.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">Green Juice for Inflammation</a>
							</h5>
							<p>Many people struggle with chronic inflammation. Drinking leafy greens is one of the best ways to reduce inflammation and help your body to regulate its inflammatory response. This cooling juice is soothing and refreshing. </p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="img/blog/blog-2.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">Healthy recipes for weight loss</a>
							</h5>
							<p>Herbnation have many healthy and ayurvedic recipes. Ayurveda suggests a few natural and herbal remedies that may help in cutting belly fat. We cannot stress enough on the fact that you must pair these remedies with exercises and a healthy diet to ensure weight loss.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="img/blog/blog-3.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">Visit the Herbnation farm</a>
							</h5>
							<p>Large scale growing of various fruits, vegetables and medicinal herbs, shrubs and tree species is being done on about 45 acres of farm land area. </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<!-- Footer Section Begin -->
	<%@include file="footer.jsp"%>
	<!-- Footer Section End -->
	<%@include file="common_modal.jsp"%>


	<%@include file="all_js.jsp"%>
	<script src="js/script.js" type="text/javascript"></script>




</body>

</html>