function add_to_cart(pid, pname, pPrice, pimage) {

	let cart = localStorage.getItem("cart");

	if (cart == null) {
		let products = [];
		let product = { productID: pid, productQuantity: 1, productName: pname, productPrice: pPrice, productImage: pimage };
		products.push(product);
		localStorage.setItem('cart', JSON.stringify(products));
		console.log("product is added");
		showToast("Item is added to cart");
	}
	else {
		let pCart = JSON.parse(cart);
		let oldProduct = pCart.find((item) => item.productId === pid)

		if (oldProduct) {

			oldProduct.productQuantity = oldProduct.productQuantity + 1;
			pCart.map((item) => {
				if (item.productId === oldProduct.productId) {
					item.productQuantity = oldProduct.productQuantity;
				}
			})

			localStorage.setItem('cart', JSON.stringify(pCart));

			showToast(oldProduct.productName + " quantity is increased");

		}
		else {
			let products = { productID: pid, productQuantity: 1, productName: pname, productPrice: pPrice, productImage: pimage };
			pCart.push(products);
			localStorage.setItem('cart', JSON.stringify(pCart));
			showToast("Product is added to cart");
		}
	}

	updateCart()
}


function updateCart() {
	let cartString = localStorage.getItem("cart");
	let cart = JSON.parse(cartString);
	if (cart == null || cart.length == 0) {
		console.log("cart is empty");
		$(".cart-items").html("0");
		$(".cart-body").html("<h3>Cart doesn't have any items</h3>");
		$(".checkout-btn").attr('disabled', true);
	}
	else {
		console.log(cart);
		$(".cart-items").html(` ${cart.length} `);
		let table = `
		
		<table class='table'>
		<thead class='thread-light'>
		<tr>
		<th class="shoping__product">Product</th>
		<th>Product Name</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Total Price</th>
		<th>Action</th>
		
		
		</tr>
		
		
		</thead>
		
		`;

		let totalPrice = 0;
		cart.map((item) => {
			table += `
		<tr>
		<td class="shoping__cart__item"><img style="height:100px; width:100px;" src="${item.productImage}"></td>
		<td class="shoping__cart__item"><h5>${item.productName}</h5></td>
		<td class="shoping__cart__price"><i class="fa fa-inr"></i> ${item.productPrice} </td>
		<td class="shoping__cart__quantity"> ${item.productQuantity} </td>
		<td><i class="fa fa-inr"></i> ${item.productQuantity * item.productPrice} </td>
		<td><button onclick='deleteItemFromCart(${item.productId})' class='btn btn-danger btn-sm'>Remove</button></td>
		</tr>
		`
			totalPrice += item.productPrice * item.productQuantity;
		})

		table = table + `
		<tr>
		<td colspan='6' class='shoping__cart__total text-right font-weight-bold'>
		<h3>Total Price : <i class="fa fa-inr"></i> ${totalPrice}</h3>
		</td>
		</tr>
		</table>`
		$(".cart-body").html(table);
		$(".checkout-btn").attr('disabled', false);
		$(".item-value").html(` ${totalPrice} `);

	}

}

function deleteItemFromCart(pid) {
	let cart = JSON.parse(localStorage.getItem('cart'));
	let newcart = cart.filter((item) => item.productId != pid)
	localStorage.setItem('cart', JSON.stringify(newcart))

	updateCart();
	$(".item-value").html(` ${totalPrice} `);
	showToast("Item is removed to cart");
}


$(document).ready(function() {
	updateCart()
})

function showToast(content) {
	$("#toast").addClass("display");
	$("#toast").html(content);
	setTimeout(() => {
		$("#toast").removeClass("display");
	}, 2000);
}

function goToCheckout() {
	window.location = "shopping-cart.jsp";
}

