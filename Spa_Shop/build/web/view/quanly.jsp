<%-- 
    Document   : quanly
    Created on : Mar 17, 2022, 11:33:42 PM
    Author     : Le Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/mainstyle.css?v=1"  type="text/css"/> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/quanly.css?v=1"  type="text/css"/> 
     
        
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
                <div class=" container-fluid user">
                    <div class="row">
                        <div class="col-md-6">
                         <center> <span><h3><i class="fa-solid fa-user"></i> ${userlogin}</h3></span></center>
                        </div>
                   
                        <div class="col-md-6 logout"> 
                        <center><a href="logout"><h4><i class="fas fa-sign-in-alt"></i> Đăng xuất</h4></a></center>
                            
                    </div>
                    </div>
                </div>
                        <div class="congviec">
                             <center>
        <table   style="min-height: 500px" border="2px" >
              <span><h1>Danh sách công việc</h1></span>
                    <thead>
                      <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Công Việc</th>
                        <th scope="col"></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td><a href="hoadon"><input type="button" value="TẠO HÓA ĐƠN" class="btn btn-success btn-lg"></a></td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                       <td><a href="danhsachdonhang"><input type="button" value="DANH SÁCH ĐƠN HÀNG" class="btn btn-danger btn-lg"></a></td>
                       
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td><a href="dangkyhocvien"><input type="button" value="DANH SÁCH ĐĂNG KÝ HỌC VIÊN" class="btn btn-warning btn-lg"></a></td>
                      </tr>
                       <tr>
                        <th scope="row">4</th>
                        <td><a href="dangkyhocvien"><input type="button" value="ĐƠN ĐĂNG KÝ TƯ VẤN" class="btn btn-primary btn-lg"></a></td>
                      </tr>
                        
                       <tr>
                           <th scope="row">5</th>
                            <td><a href="../dangkyhocvien"><input type="button" value="KIỂM KÊ KHO HÀNG" class="btn btn-warning btn-lg"></a></td>                   
                      </tr>
                    </tbody>
                  </table>
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
    </body>
</html>
