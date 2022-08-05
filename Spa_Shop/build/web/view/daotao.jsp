<%-- 
    Document   : dichvu.jsp
    Created on : Mar 5, 2022, 3:29:14 PM
    Author     : Le Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dịch Vụ</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/mainstyle.css?v=1"  type="text/css"/> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/daotao.css?v=1"  type="text/css"/> 
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
                    <div class="cayla">
                        <img src="Img/tuyensinh01.jpg" alt=""/>
                    </div>
          <%-- daotao--%>
           <div style="min-height: 500px" class= "container-fluid all ">
            <div class="container-fluid" >
                <div class ="">
                    <center>
                           <span>Thông báo tuyển sinh học viên</span>
                           <p> <b>Spa Thúy Chung</b> nhận đào tạo từ cơ bản đến chuyên sâu, nhận chuyển giao các công nghệ trị nám, tàn nhang... </p>
                           <p>Học viên trực tiếp được giảng dạy tận tình với nghiệp vụ tay nghề lâu năm! </p>
                           <p> Với lượng khách ổn định nên có nhiều cơ hội cho học viên được thực hành trên mẫu rất nhiều.
                              Được cầm tay chỉ việc đến khi thành nghề với môi trường làm việc thân thiện</p>
                           <p>Sau thời gian đào tạo có thể đăng ký làm ngay tại Spa </p>
                           <h3>Thông tin chi tiết xin liên hệ số điện thoại:<b style="color: red"> 0963170199</b> <h3>
                            <span>Một số hình ảnh đào tạo học viên tại Spa Thúy Chung</span>
                            
                              <div class="row imagedaotao1">
                        <img class="col-sm-4" src="${pageContext.request.contextPath}/Img/daotaohocvien.jpg" alt=""/>
                        <img class="col-sm-4" src="${pageContext.request.contextPath}/Img/daotaohocvien02.jpg" alt=""/>
                        <img class="col-sm-4"src="${pageContext.request.contextPath}/Img/hoctaptaispa.jpg" alt=""/>
                        
                    </div>
                      <div class="row imagedaotao2">
                        <img class="col-sm-4" src="${pageContext.request.contextPath}/Img/nhanvienhoctap.jpg" alt=""/>
                        <img class="col-sm-4" src="${pageContext.request.contextPath}/Img/nhanvienhoctap02.jpg" alt=""/>
                        <img class="col-sm-4" src="${pageContext.request.contextPath}/Img/lamviec02.jpg" alt=""/>
                        
                    </div>   
                     </center>
                        
                  
                        
                        
                </div>
            </div>        
       </div> 
            
        
            
            
            
            
            
            
            
                     <div class="cayla">
                        <img src="Img/tuyensinh02.jpg" alt=""/>
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
