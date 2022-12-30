<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Herbnation | Registeration</title>

<!-- Google Font -->
<%@include file="all_css.jsp"%>

</head>

<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->

	<!-- Humberger End -->
	<%@include file="navbar.jsp"%>
	<!-- Header Section Begin -->

	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
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
								<h5>7838757943</h5>
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
						<h2>Register Here</h2>
						<div class="breadcrumb__option">
							<span>Welcome to herbnation</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="featured spad">
		<div class="container-fluid h-custom">

			<div
				class="row d-flex justify-content-center align-items-center h-100">

				<div class="col-md-9 col-lg-6 col-xl-5">
					<img src="img/login.jpeg" style="height: 400px; width: 700px;"
						class="img-fluid">
				</div>

				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">

					<%@include file="message.jsp"%>
					<form action="RegisterServlet" method="POST">
						<div
							class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
							<p class="lead fw-normal mb-0 me-3">Sign Up with</p>
							<button type="button" class="btn btn-floating mx-1"
								style="background-color: #7fad39; color: white;">
								<i class="fa fa-facebook"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1"
								style="background-color: #7fad39; color: white;">
								<i class="fa fa-google"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1"
								style="background-color: #7fad39; color: white;">
								<i class="fa fa-instagram"></i>
							</button>
						</div>

						<div class="divider d-flex align-items-center my-4">
							<p class="text-center fw-bold mx-3 mb-0">Or</p>
						</div>

						<!-- input fields for registration -->

						<!-- Email input -->
						<div class="form-outline mb-4">
							<input type="text" id="user_name" name="user_name"
								class="form-control form-control-lg" placeholder="Enter name" />
							<label class="form-label" for="user_name">Name</label>
						</div>

						<div class="form-outline mb-4">
							<input type="email" id="user_email" name="user_email"
								class="form-control form-control-lg"
								placeholder="Enter a valid  email address" /> <label
								class="form-label" for="user_email">Email address</label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-3">
							<input type="password" id="user_password" name="user_password"
								class="form-control form-control-lg"
								placeholder="Enter password" /> <label class="form-label"
								for="user_password">Password</label>
						</div>

						<div class="form-outline mb-4">
							<input type="tel" id="user_phone" name="user_phone"
								class="form-control form-control-lg" placeholder="Enter phone" />
							<label class="form-label" for="user_phone">Phone</label>
						</div>

						<div class="form-outline mb-4">
							<input type="date" id="user_dob" name="user_dob"
								class="form-control form-control-lg"
								placeholder="Enter Date of birth" /> <label class="form-label"
								for="user_dob">Date of birth</label>
						</div>

						<div class="form-outline mb-4">
							<input type="text" id="user_address" name="user_address"
								class="form-control form-control-lg" placeholder="Enter Address" />
							<label class="form-label" for="user_address">Address</label>
						</div>

						<div class="form-outline mb-4">
							<input type="file" id="user_picture" name="user_picture"
								class="form-control form-control-lg" placeholder="Upload a pic" />
							<label class="form-label" for="user_picture">Picture</label>
						</div>

						<div class="form-outline mb-4">
							<input type="text" id="user_type" name="user_type"
								class="form-control form-control-lg"
								placeholder="Admin or Customer" /> <label class="form-label"
								for="user_type">User Type</label>
						</div>


						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem; background-color: #7fad39; color: white;">Register</button>

							<p class="small fw-bold mt-2 pt-1 mb-0">
								Already have account ? <a href="login.jsp" class="link-danger">Login</a>
							</p>
						</div>

					</form>
				</div>
			</div>
		</div>
		</div>
	</section>


	<!-- Footer Section Begin -->
	<%@include file="footer.jsp" %>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>



</body>

</html>