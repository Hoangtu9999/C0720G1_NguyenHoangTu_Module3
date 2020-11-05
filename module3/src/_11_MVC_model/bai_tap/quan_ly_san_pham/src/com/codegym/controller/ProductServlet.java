package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.ProductService;
import com.codegym.service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    private ProductServiceImpl productService = new ProductServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                createProdcut(request, response);
                break;
            case "edit":
                updateProdcut(request, response);
                break;
            case "delete":
                deteteProdcut(request, response);
                break;
            default:
                break;
        }
    }


    private void createProdcut(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String productType = request.getParameter("productType");
        int price = Integer.parseInt(request.getParameter("price"));
        int id = (int) (Math.random() * 1000);

        Product product = new Product(id, name, productType, price);
        productService.save(product);
        RequestDispatcher rd = request.getRequestDispatcher("view/create.jsp");
        request.setAttribute("message", "New customer was created");
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateProdcut(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String productType = request.getParameter("productType");
        int price = Integer.parseInt(request.getParameter("price"));

        Product product = productService.findById(id);
        RequestDispatcher rd;
        if (product == null) {
            rd = request.getRequestDispatcher("error-404.jsp");
        } else {
            product.setName(name);
            product.setProductType(productType);
            product.setPrice(price);

            productService.update(id, product);
            request.setAttribute("product", product);
            request.setAttribute("message", "Customer information was updated");
            rd = request.getRequestDispatcher("view/edit.jsp");
        }
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void deteteProdcut(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher rd;
        if (product == null) {
            rd = request.getRequestDispatcher("error-404.jsp");
        } else {
            productService.remove(id);
            try {
                response.sendRedirect("/products");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }

        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewCustomer(request, response);
                break;
            default:
                listCustomers(request, response);
                break;
        }

    }


    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rd = request.getRequestDispatcher("view/create.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher rd;
        if (product == null) {
            rd = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            rd = request.getRequestDispatcher("view/edit.jsp");
        }
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher rd;
        if (product == null) {
            rd = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            rd = request.getRequestDispatcher("view/delete.jsp");
        }
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void viewCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher rd;
        if (product == null) {
            rd = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            rd = request.getRequestDispatcher("view/view.jsp");
        }
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void listCustomers(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.findAll();
        request.setAttribute("productList", productList);

        RequestDispatcher rd = request.getRequestDispatcher("/view/list.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
