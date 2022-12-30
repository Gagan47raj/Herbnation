package com.herbnation.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import com.herbnation.dao.CategoryDao;
import com.herbnation.dao.ProductDao;
import com.herbnation.entities.Category;
import com.herbnation.entities.Product;
import com.herbnation.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig
public class ProductOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductOperationServlet() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String op = request.getParameter("operation");

			if (op.trim().equals("addcategory")) {
				String cateTitle = request.getParameter("categoryTitle");
				String cateDesc = request.getParameter("categoryDescription");

				Category category = new Category();
				category.setCategoryTitle(cateTitle);
				category.setCategoryDescription(cateDesc);

				CategoryDao categoryDao = new CategoryDao(FactoryProvider.getFactory());
				int catId = categoryDao.saveCategory(category);

				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("message", "Category Added Successfully : " + catId);
				response.sendRedirect("admin_panel.jsp");
				return;

			} else if (op.trim().equals("addproduct")) {
				
				String productName = request.getParameter("productTitle");
				String productDescription = request.getParameter("productDescription");
				int productPrice = Integer.parseInt(request.getParameter("productPrice"));
				int productDiscount = Integer.parseInt(request.getParameter("productDiscount"));
				int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
				int productCatgory = Integer.parseInt(request.getParameter("productCatgory"));
				String productAvailablity = request.getParameter("productAvailablity");
				
				Part part = request.getPart("productPicture");
				
				Product product = new Product();
				product.setProductName(productName);
				product.setProductDescription(productDescription);
				product.setProductPrice(productPrice);
				product.setProductDiscount(productDiscount);
				product.setProductQuantity(productQuantity);
				product.setProductAvailablity(productAvailablity);
				product.setProductPhoto(part.getSubmittedFileName());
				
				CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
				Category category = cdao.getCategoryById(productCatgory);
				
				product.setCategory(category);
				
				ProductDao productDao = new ProductDao(FactoryProvider.getFactory());
				productDao.saveProduct(product);
				
				String path = request.getRealPath("img") + File.separator + "product" +File.separator + part.getSubmittedFileName();
				System.out.println(path);				
				
				FileOutputStream fos = new FileOutputStream(path);
				
				InputStream is = part.getInputStream();
				
				byte [] data = new byte[is.available()];
				
				is.read(data);
				
				fos.write(data);
				
				fos.close();
			    
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("message", "Product Added Successfully");
				response.sendRedirect("admin_panel.jsp");
				return;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
