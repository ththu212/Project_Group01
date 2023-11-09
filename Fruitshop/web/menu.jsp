<%-- 
    Document   : menu
    Created on : Nov 2, 2023, 12:54:01 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession" %>
<%@page import="jakarta.servlet.http.HttpServletRequest" %>
<%@page import="jakarta.servlet.http.HttpServletResponse" %>
<%@page import="jakarta.servlet.http.Cookie" %>
<%@page import="model.Users" %>
<div class="top-header-area" id="sticker">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 text-center">
                <div class="main-menu-wrap">
                    <!-- logo -->
                    <div class="site-logo">
                        <a href="home">
                            <img class="w-75" src="assets/img/logo1.png" alt="">
                        </a>
                    </div>
                    <!-- logo -->
                    <%
        Cookie[] cookies = request.getCookies();
        String user = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("userC".equals(cookie.getName())) {
                    user = cookie.getValue();
                    break;
                }
            }
        }
        if (!user.equals("")) {
            Users u = new Users();
            Users info = u.getInfoAcount(user);
            session.setAttribute("info", info);
            session.setAttribute("user", info.getFullname());
            session.setAttribute("username", user);
        }
                    %>

                    <!-- menu start -->
                    <nav class="main-menu">
                        <ul>
                            <li class="current-list-item"><a href="home">Home</a>
                            </li>
                            <li>
                                <a onclick="submitFormD()">Shop</a>
                            </li>
                            <form id="formDetail" action="shop" method="POST" style="display: none;">
                            </form>
                            <%  String uid=(String) session.getAttribute("user");
                            %>

                            <c:if test="${sessionScope.user == null}">
                                <li><a href="loginpage">Login</a>
                                </c:if>
                                <c:if test="${sessionScope.user != null}">
                                <li><a href="account">${ sessionScope.info.fullname}</a>
                                </c:if>
                                <% 
                                     if (uid != null && uid != "Login" ) {%>
                                <ul class="sub-menu">
                                    <c:if test="${sessionScope.info.isAdmin == 1}">
                                        <li><a href="manage">Fruit Management</a></li>
                                        </c:if>
                                    <li><a href="listorder">My Order</a></li>
                                    <li><a href="logout">Logout</a></li>
                                </ul>
                                <%  }
                                %>
                            </li>
                            <li><a href="news.jsp">News</a>
                                <ul class="sub-menu">
                                    <li><a href="single-news.jsp">Single News</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.jsp">Contact</a></li>
                            <li><a href="about.jsp">About</a></li>
                            <li>
                                <div class="header-icons">
                                    <a id="cart" class="shopping-cart" href="cart"><i class="fas fa-shopping-cart"></i></a>
                                    <a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                    <div class="mobile-menu"></div>
                    <!-- menu end -->
                </div>
            </div>
        </div>
    </div>
</div>
<div class="search-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <span class="close-btn"><i class="fas fa-window-close"></i></span>
                <div class="search-bar">
                    <div class="search-bar-tablecell">
                        <h3>Search For:</h3>
                        <form action="search" method="get">
                            <input type="text" placeholder="Keywords" name="txtSearch">
                            <button type="submit">Search <i class="fas fa-search"></i></button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/script.js"></script>
