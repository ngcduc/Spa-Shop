<%-- 
    Document   : main
    Created on : Feb 15, 2022, 4:17:46 PM
    Author     : Le Viet
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.CategoryService"%>
<%@page import="database.CategoryServiceDBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SpaThuyChung</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/mainstyle.css?v=1"  type="text/css"/> 
                <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sanphamstyle.css?v=1"  type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" 
              integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <%-- Header --%> 
        <div class="header row">
            <%-- logo spa --%> 
            <div class="logospa col-md-1">
                <%-- Header --%> 
                <img src="${pageContext.request.contextPath}/Img/logo.jpg" alt=""/>
            </div>
            <%-- Menu --%>
            <div class="menu col-md-8 ">

                <ul class="row">
                    <li class="col-md-2" >
                        <i style="color: greenyellow" class="fa fa-home" aria-hidden="true"></i>
                        <a href="${pageContext.request.contextPath}/home">TRANG CHỦ </a>           
                    </li>
                    <li class="col-md-2"><a href="${pageContext.request.contextPath}/gioithieu">GIỚI THIỆU</a></li>
                    <li class="col-md-2"><a href="${pageContext.request.contextPath}/daotao">ĐÀO TẠO</a></li>
                    <li class="col-md-2"><a href="${pageContext.request.contextPath}/sanpham">SẢN PHẨM</a></li>
                    <li class="col-md-2"><a href="${pageContext.request.contextPath}/login"><i class="fas fa-user"></i> Login</a></li>

                </ul>

            </div>
                   
            <div class="search col-md-3">
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm..." aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
        </div>

        <%-- Slide --%>
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/Img/slide1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Thúy Chung Spa</h1>
                        <p>Thiên đường của sắc đẹp!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/Img/slide2.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Thúy Chung Spa</h1>
                        <p>Thiên đường của sắc đẹp!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/Img/slide3.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Thúy Chung Spa</h1>
                        <p>Thiên đường của sắc đẹp!</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <%-- Gioi thieu va dat dich vu cua spa  --%>
        <div class= "container-fluid">
            <div class= " gioithieu row">
                <div class ="anhchung col-sm-6">
                    <h1>Thúy Chung Spa</h1>
                    <p>Thiên đường của sắc đẹp!</p>
                    <center><img src="${pageContext.request.contextPath}/Img/hinhanhspa01.jpg" alt=""/></center>
                </div>
                <div class ="dichvu col-sm-6">
                    <div class="datdichvu">
                        <h1>ĐĂNG KÝ TƯ VẤN</h1>
                        <form action="dangkytuvan" method="POST">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="name">Họ Và Tên</label>
                                    <input type="text" class="form-control" name="name" value="${messagename}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phonenumber">Số Điện Thoại</label>
                                    <input type="text" class="form-control" name="phonenumber" value="${messagephone}">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="diachi">Địa chỉ</label>
                                    <input type="text" class="form-control" name="address" value="${messageaddress}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="dichvu">Chọn dịch vụ cần tư vấn</label>
                                    <select name="service" class="form-control">
                                        <c:forEach items="${requestScope.cateServices}" var="ca">
                                            <option value="${ca.categorysid}">${ca.categorysname}${service}</option>  
                                        </c:forEach>
                                                                                 
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-success btn-lg btn-block">ĐĂNG KÝ</button>
                            <span style="color: red">${message}</span>
                            <span style="color: blue">${messagethank}</span>
                                
                        </form>
                    </div>
                </div>
            </div>        
        </div>
        <%-- cac san pham chinh cua spa--%>
        <div class= "container-fluid sanpham sanphammain">
            <%-- Cac san pham chinh--%> 
            <center>
                <span id="loginsanpham"> SẢN PHẨM CỦA SPA</span>
                <div
                                   class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center"
                                   >
                                   <c:forEach items="${requestScope.products}" var="p">
                                       <div class="col-md-3 mb-5" >

                                           <div class="card h-100">
                                               <!-- Product image-->
                                               <a href="${pageContext.request.contextPath}/chitietsanpham?id=${p.productid}">
                                                   <img
                                                       class="card-img-top"
                                                       src="${pageContext.request.contextPath}${p.image}"
                                                       alt="..."
                                                       />
                                               </a>
                                               <!-- Product details-->
                                               <div class="card-body p-4">
                                                   <div class="text-center productname">
                                                       <!-- Product name-->
                                                       <h5 class="fw-bolder">${p.productname}</h5>
                                                       <!-- Product reviews-->
                                                       <div
                                                           class="d-flex justify-content-center small text-warning mb-2"
                                                           >
                                                           <div class="bi-star-fill"></div>
                                                           <div class="bi-star-fill"></div>
                                                           <div class="bi-star-fill"></div>
                                                           <div class="bi-star-fill"></div>
                                                           <div class="bi-star-fill"></div>
                                                       </div>
                                                       <!-- Product price-->
                                                       
                                                       <div id="price">${p.price} (VND)</div>
                                                   </div>
                                               </div>
                                               <!-- Product actions-->
                                               <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                   <div class="text-center">
                                                       <a class="btn btn-outline-success mt-auto" href="addcart?Id=${p.productid}"
                                                          >Thêm vào giỏ hàng <i class="fas fa-shopping-cart"></i></a
                                                       >
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </c:forEach>
                    <span id="xemthem"><a href="sanpham" class="btn btn-warning btn-block"><b style="color: red">XEM THÊM</b></a></span>
                               </div>
            </center>
       
        </div>  
        
            <%-- footer--%>
             <!--Footer starts here-->
        <div class="footer">
				
				<h1>Thúy Chung Spa</h1>
                                <div class="diachicuoi">
                                    <h6>KCN Định Liên,huyện Yên Định, tỉnh Thanh Hóa</h6>
				    <i class="fas fa-phone"> 0963170199</i>
                                    <a href="https://www.facebook.com/thuychungspa"><i class="fa-brands fa-facebook-f"></i></a>                                  
                                </div>
	</div>
       
        <%-- Java Script --%>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
