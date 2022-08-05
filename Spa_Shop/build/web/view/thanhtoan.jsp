<%-- 
    Document   : thanhtoan
    Created on : Mar 12, 2022, 4:43:53 PM
    Author     : Le Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh toan</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/mainstyle.css?v=1"  type="text/css"/> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sanphamstyle.css?v=1"  type="text/css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/giohang.css?v=1"  type="text/css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/thanhtoan.css?v=1"  type="text/css"/>

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

        <div class= "container-fluid thanhtoan " style="min-height: 750px">
                 <h3>THANH TOÁN</h3>
            <div class="row contain">
                 <div class="col-md-7 a"  style="border-width:3px; border-style:solid">
                     <h3>THÔNG TIN SẢN PHẨM</h3>
                <table class="table table-striped tableproduct">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Tên Sản Phẩm</th>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Tổng tiền</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${carts}" var="c">
                        <form action="updatequantity" method="GET">
                            <tr>
                            <input type="hidden" name="productid" value="${c.value.product.productid}"/>         
                            <th scope="row">${c.value.product.productid}</th>
                            <td>${c.value.product.productname}</td>    
                            <td><img src="${pageContext.request.contextPath}${c.value.product.image}" alt="" width="100px"/></td>
                            <td>${c.value.product.price}</td>      
                            <td>
                                <span>${c.value.quantity}</span>
                            </td>
                            <td>${c.value.product.price * c.value.quantity}</td>
                           
                            </tr>
                        </form>
                    </c:forEach> 
                    </tbody>
                </table>
                
                     <h3>Tổng số tiền: ${sessionScope.totalmoney} VND</h3>
                <a href="giohang" class="btn btn-info btn-lg btn-block">Quay lại giỏ hàng</a>
                
                </div>

            <div class="col-md-5 a"  style="border-width:3px; border-style:solid">
                <h3>THÔNG TIN KHÁCH HÀNG</h3>
                <form action="thanhtoan" method="POST">
                       <div class="form-row">
                           <div class="form-group col-md-6">
                               <label for="inputname">Họ và tên</label>
                               <input type="text" class="form-control" name="name" value="${messagename}">
                           </div>
                           <div class="form-group col-md-6">
                               <label for="inputphone">Số điện thoại</label>
                               <input type="text" class="form-control" name="phonenumber" value="${messagephone}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label for="inputAddress">Địa chỉ</label>
                           <input type="text" class="form-control" value="${messageaddress}"name="address" placeholder="Địa chỉ...">
                       </div>
                       <div class="form-group">
                           <label for="Note">Bạn có muốn nhắn gửi điều gì với chúng tôi không...</label>
                           <textarea  name="note"class="form-control" id="exampleFormControlTextarea1" rows="3">${messagenote}</textarea>
                       </div>
                       <div>
                           <span style="color:dodgerblue;margin-bottom: 30px">
                               Bạn hãy xác nhận kỹ thông tin của mình trước khi đặt hàng nhé !!!
                           </span> 
                       </div>
                       <button type="submit" class="btn btn-success btn-lg btn-block">Đặt hàng</button> 
                       <span style="color: red"> ${message}</span>
                       <span style="color: tomato"> ${messagesuccess}</span>
                       
                   </form>
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

