<%-- 
    Document   : lienhe
    Created on : Mar 5, 2022, 3:15:48 PM
    Author     : Le Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/mainstyle.css?v=1"  type="text/css"/> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/loginstyle.css?v=1"  type="text/css"/>
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
                <img src="Img/logo.jpg" alt=""/>
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
                
                
                
                <div class="Login-form">
                        <div id="login">
        <h1>Spa Thúy Chung</h1>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="login" method="POST">
                            <h3 style="font-weight: 600"class="text-center text-info">ĐĂNG NHẬP</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Tên đăng nhập:</label><br>
                                <input type="text" name="username" id="username" class="form-control" value="${username}">
                                <span style="color: red">${usermessage}</span>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Mật khẩu:</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                                <span style="color: red">${passmessage}</span>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-lg btn-block" value="ĐĂNG NHẬP">
                                <span style="color: red">${message}</span>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

                    
                    
                    
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
