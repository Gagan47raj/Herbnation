<%@page import="com.herbnation.entities.User"%>

<%
User user1 = (User) session.getAttribute("current-user");
%>

<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
	<div class="humberger__menu__logo">
		<a href="index.jsp"><img src="img/logo.png" style=" height:100px;  width : 100px ;" ></a>
	</div>

	<%
	if (user1 == null) {
	%>
	<div class="humberger__menu__cart">
		<ul>
			<li><a href="#"><i class="fa fa-heart"></i> <span>0</span></a></li>
			<li><a href="shopping-cart.jsp" data-toggle="modal" data-target="#cart"><i class="fa fa-shopping-bag" style="font-size:25px"></i>
					<span class="cart-items">0</span></a></li>
		</ul>
		<div class="header__cart__price" href="shopping-cart.jsp">
			item: <i class="fa fa-inr"></i> <span class="item-value">0</span>
		</div>
	</div>
	<%
	} else {
	if (user1.getUserType().equals("Customer")) {
	%>
	<div class="humberger__menu__cart">
		<ul>
			<li><a href="#"><i class="fa fa-heart"></i> <span>0</span></a></li>
			<li><a href="shopping-cart.jsp" data-toggle="modal" data-target="#cart"><i class="fa fa-shopping-bag" style="font-size:25px"></i>
					<span class="cart-items">0</span></a></li>
		</ul>
		<div class="header__cart__price" href="shopping-cart.jsp">
			item: <i class="fa fa-inr"></i> <span class="item-value">0</span>
		</div>
	</div>
	<%
	}
	}
	%>



	<div class="humberger__menu__widget">

		<%
		if (user1 == null) {
		%>

		<div class="header__top__right__language">
			<div>
				<a href="signUp.jsp"> <i class="fa fa-user">Create an
						account</a></i>
			</div>
			<span class="arrow_carrot-down"></span>
		</div>

		<div class="header__top__right__auth">
			<a href="login.jsp"> <i class="fa fa-user"></i> Login
			</a>
		</div>

		<%
		} else {
		%>
		<div class="header__top__right__language">
			<div>
				<!-- <a href="signUp.jsp"></a> -->
				<i class="fa fa-user"><%=user1.getUserName()%></i>
			</div>
			<span class="arrow_carrot-down"></span>
		</div>

		<div class="header__top__right__auth">
			<a href="LogoutServlet"> <i class="fa fa-user"></i> Logout
			</a>
		</div>
		<%
		}
		%>

	</div>
	<nav class="humberger__menu__nav mobile-menu">
		<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			<li><a href="shop-grid.jsp">Shop</a></li>
			<li><a href="#">Pages</a>
				<ul class="header__menu__dropdown">
					<li><a href="shop-details.jsp">Shop Details</a></li>
					<li><a href="shopping-cart.jsp">Shopping Cart</a></li>
					<li><a href="checkout.jsp">Check Out</a></li>
					<li><a href="blog-details.jsp">Blog Details</a></li>
				</ul></li>
			<li><a href="blog.jsp">Blog</a></li>
			<li><a href="contact.jsp">Contact</a></li>
		</ul>
	</nav>
	<div id="mobile-menu-wrap"></div>
	<div class="header__top__right__social">
		<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
			class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
		<a href="#"><i class="fa fa-pinterest-p"></i></a>
	</div>
	<div class="humberger__menu__contact">
		<ul>
			<li><i class="fa fa-envelope"></i> admin@herbnation.com</li>
			<li>Free Shipping for all Order of <i class="fa fa-inr"></i> 299</li>
		</ul>
	</div>
</div>

<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>
							<li><i class="fa fa-envelope"></i> admin@herbnation.com</li>
							<li>Free Shipping for all Order of <i class="fa fa-inr"></i> 299</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>

						<%
						if (user1 == null) {
						%>

						<div class="header__top__right__language">
							<i class="fa fa-user" style="margin-right: 5px;"></i>
							<div>
								<a href="signUp.jsp">Create an account</a>
							</div>
						</div>
						<div class="header__top__right__auth">
							<a href="login.jsp"><i class="fa fa-user"></i> Login</a>
						</div>

						<%
						} else {
						%>

						<div class="header__top__right__language">
							<i class="fa fa-user" style="margin-right: 5px;"> <%=user1.getUserName()%></i>
							<div>
								<!-- 	<a href="signUp.jsp">Create an account</a> -->

							</div>
						</div>
						<div class="header__top__right__auth">
							<a href="LogoutServlet"><i class="fa fa-user"></i> Logout</a>
						</div>

						<%
						}
						%>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="index.jsp"><img src="img/logo.png" style="height:150px;  width : 200px ;"></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="shop-grid.jsp">Shop</a></li>
						<li><a href="#">Pages</a>
							<ul class="header__menu__dropdown">
								<li><a href="shop-details.jsp">Shop Details</a></li>
								<li><a href="shopping-cart.jsp">Shoping Cart</a></li>
								<li><a href="checkout.jsp">Check Out</a></li>
								<li><a href="blog-details.jsp">Blog Details</a></li>
							</ul></li>
						<li><a href="blog.jsp">Blog</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3">

				<%
				if (user1 == null) {
				%>
				<div class="header__cart">
					<ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>0</span></a></li>
						<li><a href="shoping-cart.jsp" data-toggle="modal" data-target="#cart"><i
								class="fa fa-shopping-bag" style="font-size:25px"></i> <span class="cart-items">0</span></a></li>
					</ul>
					<div class="header__cart__price">
						item: <i class="fa fa-inr"></i> <span class="item-value">0</span>
					</div>
				</div>
				<%
				} else {
				if (user1.getUserType().equals("Customer")) {
				%>
				<div class="header__cart">
					<ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>0</span></a></li>
						<li><a href="shoping-cart.jsp" data-toggle="modal" data-target="#cart"><i
								class="fa fa-shopping-bag" style="font-size:25px"></i> <span class="cart-items">0</span></a></li>
					</ul>
					<div class="header__cart__price">
						item: <i class="fa fa-inr"></i> <span class="item-value">0</span>
					</div>
				</div>
				<%
				}
				}
				%>




			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>