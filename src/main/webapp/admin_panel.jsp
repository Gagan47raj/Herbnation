<%@page import="java.util.Map"%>
<%@page import="com.herbnation.helper.Helper"%>
<%@page import="com.herbnation.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.herbnation.helper.FactoryProvider"%>
<%@page import="com.herbnation.dao.CategoryDao"%>
<%@page import="com.herbnation.entities.User"%>

<%
User user = (User) session.getAttribute("current-user");
if (user == null) {

	session.setAttribute("message", "You are not logged in !! Login First");
	response.sendRedirect("login.jsp");

	return;
} else {
	if (user.getUserType().equals("Customer")) {
		session.setAttribute("message", "You are not admin !! Restricted to access this page");
		response.sendRedirect("login.jsp");
		return;
	}
}
%>


<%
CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
List<Category> list = cdao.getCategories();

Map<String,Long> map =  Helper.getCounts(FactoryProvider.getFactory());
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Herbnation | Admin Panel</title>
<%@include file="all_css.jsp"%>
</head>
<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<%@include file="navbar.jsp"%>
	<!-- Humberger End -->

	<section class="featured spad">
		<div class="container">

			<div class="container-fluid mt-3">
				<%@include file="message.jsp"%>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="card shadow-4"
						style="width: 18rem; margin-top: 30px; margin-left: 20px;">
						<div class="text-center">
							<img src="img/user.png" style="height: 100px; width: 100px;"
								class="img-fluid rounded-circle">
							<div class="card-body">
								<h5 class="card-title">USERS</h5>
								<h4 class="card-text">No. of users : <%= map.get("userCount") %></h4>
								<br>
								<a class="btn btn-primary">See Users</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card shadow-4"
						style="width: 18rem; margin-top: 30px; margin-left: 20px">
						<div class="text-center">
							<img src="img/categories.jpg"
								style="height: 100px; width: 100px;"
								class="img-fluid rounded-circle">
							<div class="card-body">
								<h5 class="card-title">CATEGORIES</h5>
								<h4 class="card-text">No. of categories : <%= list.size() %></h4>
								<br>
								<a href="#" class="btn btn-primary">See Categories</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card shadow-4"
						style="width: 18rem; margin-top: 30px; margin-left: 20px">
						<div class="text-center">
							<img src="img/products.jpg" style="height: 100px; width: 100px;"
								class="img-fluid rounded-circle">
							<div class="card-body">
								<h5 class="card-title">PRODUCTS</h5>
								<h4 class="card-text">No. of products : <%= map.get("productCount") %></h4>
								<br>
								<a href="#" class="btn btn-primary">See Products</a>
							</div>
						</div>
					</div>
				</div>


			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="card shadow-4"
						style="width: 30rem; margin-top: 30px; margin-left: 20px">
						<div class="text-center">
							<img src="img/add_categories.jpg"
								style="height: 100px; width: 100px;"
								class="img-fluid rounded-circle">
							<div class="card-body">
								<h5 class="card-title">ADD CATEGORY</h5>
								<p class="card-text">You can add some new categories for
									customers</p>
								<a class="btn btn-primary" data-toggle="modal"
									data-target="#add-category-model">Add Categories</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 ">
					<div class="card shadow-4"
						style="width: 30rem; margin-top: 30px; margin-left: 20px;">
						<div class="text-center">
							<img src="img/add_product.png"
								style="height: 100px; width: 100px;"
								class="img-fluid rounded-circle	">
							<div class="card-body">
								<h5 class="card-title">ADD PRODUCTS</h5>
								<p class="card-text">You can add some new categories for
									customers</p>
								<a class="btn btn-primary" data-toggle="modal"
									data-target="#add-product-model">Add Products</a>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>



	</section>


	<!-- Modal Category -->
	<div class="modal fade" id="add-category-model" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Fill
						Category details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="ProductOperationServlet" method="POST">

						<input type="hidden" name="operation" value="addcategory">

						<div class="form-group">
							<label for="categoryTitle">Title</label> <input type="text"
								class="form-control" id="categoryTitle" name="categoryTitle"
								placeholder="Enter Category title" required />
						</div>

						<div class="form-group">
							<label for="categoryDescription">Description</label>
							<textarea style="height: 300px;" class="form-control"
								id="categoryDescription" name="categoryDescription"
								placeholder="Enter Category Description" required></textarea>
						</div>

						<div class="container text-center">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal" style="margin-right: 20px;">Close</button>
							<button type="submit" class="btn btn-outline-success">Add
								Category</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal Products -->
	<div class="modal fade" id="add-product-model" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Fill
						Product details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="ProductOperationServlet" method="POST"
						enctype="multipart/form-data">

						<input type="hidden" name="operation" value="addproduct">

						<div class="form-group">
							<label for="productTitle">Title</label> <input type="text"
								class="form-control" id="productTitle" name="productTitle"
								placeholder="Enter Product title" required />
						</div>

						<div class="form-group">
							<label for="productDescription">Description</label>
							<textarea style="height: 300px;" class="form-control"
								id="productDescription" name="productDescription"
								placeholder="Enter Product Description" required></textarea>
						</div>

						<div class="form-group">
							<label for="productPrice">Price</label> <input type="number"
								class="form-control" id="productPrice" name="productPrice"
								placeholder="Enter Product Price" required />
						</div>

						<div class="form-group">
							<label for="productDiscount">Discount</label> <input
								type="number" class="form-control" id="productDiscount"
								name="productDiscount" placeholder="Enter Product Discount"
								required />
						</div>

						<div class="form-group">
							<label for="productQuantity">Quantity</label> <input
								type="number" class="form-control" id="productQuantity"
								name="productQuantity" placeholder="Enter Product Quantity"
								required />
						</div>


						<%
						cdao = new CategoryDao(FactoryProvider.getFactory());
						list = cdao.getCategories();
						%>


						<div class="form-group">
							<label for="productCatgory">Category</label> <br> <select
								id="productCatgory" class="form-control" name="productCatgory"
								required>

								<%
								for (Category c : list) {
								%>
								<option value="<%=c.getCategoryId()%>">
									<%=c.getCategoryTitle()%>
								</option>
								<%
								}
								%>

							</select>
						</div>


						<div class="form-group">
							<label for="productAvailablity">Availablity</label> <input
								type="text" class="form-control" id="productAvailablity"
								name="productAvailablity"
								placeholder="Enter Product Availablity" required />
						</div>

						<div class="form-group">
							<label for="productPicture">Picture</label> <input type="file"
								class="form-control" id="productPicture" name="productPicture"
								placeholder="Select Product Picture" required />
						</div>

						<div class="container text-center">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal" style="margin-right: 20px;">Close</button>
							<button type="submit" class="btn btn-outline-success">Add
								Products</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer Section Begin -->
	<%@include file="footer.jsp"%>
	<!-- Footer Section End -->

	<%@include file="all_js.jsp"%>
</body>
</html>