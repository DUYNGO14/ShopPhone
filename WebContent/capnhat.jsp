
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css-jsp/style.css">
<link rel="stylesheet"
	href="/assets/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="/assets/owlcarousel/assets/owl.theme.default.min.css">
<script src="/assets/vendors/jquery.min.js"></script>
<script src="/assets/owlcarousel/owl.carousel.js"></script>
<link rel="stylesheet" href="css-jsp/add.css">
<link rel="icon" type="image/png" sizes="16x16"  href="favicons/favicon-16x16.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">
<title>Cập nhật sản phẩm</title>
</head>
<body>
<section class="header">
		<div class="container py-3">
			<div class="row">
				<div class="col-md-3 ">
					<a href="HomeController"> <img src="image/logo5.png"
						class="img-fluid " alt="Logo"></a>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<div class="input-group mt-2">
						<form class="d-flex" action="HomeController" method="post">
							<input class="form-control me-2"  value="${key}" name="txttk" type="text" placeholder="Search" aria-label="Search">
							<button class="btn btn-danger"  type="submit">Search</button>
						</form>
					</div>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3 ">
					<div class="row ">
					<!--  -->
					<%if(session.getAttribute("dn")==null){%>
						<div class="col-md">
							<div class="row">
								<div class="col-3">
									<div class="fs-3 text-danger">
										<i class="fa-solid fa-right-to-bracket"></i>
									</div>
								</div>
								<div class="col-9 mt-2">
									<a href="DangKiController" class="text-decoration-none pb"><strong class="text-danger">Đăng kí</strong></a>
								</div>
							</div>
						</div>
						<div class="col-md">
							<div class="row">
								<div class="col-3">
									<div class="fs-3 text-danger">
										<i class="fa-solid fa-right-to-bracket"></i>
									</div>
								</div>
								<div class="col-9 mt-2">
									 <a href="DangNhapController" class="text-decoration-none"><strong class="text-danger">Đăng nhập</strong></a>
								</div>
							</div>
						</div>
					</div>
					<%}else{ %>
						<div class="col-md">
							<div class="row">
								<div class="col-3">
									<div class="fs-3 text-danger">
										<i class="fa-solid fa-user"></i>
									</div>
								</div>
								<div class="col-9 mt-2">
									<a href="#" class="text-decoration-none pb"><strong class="text-danger">HI!<%=session.getAttribute("dn") %></strong></a>
								</div>
							</div>
						</div>
						<div class="col-md">
							<div class="row">
								<div class="col-3">
									<div class="fs-3 text-danger">
										<i class="fa-solid fa-right-to-bracket"></i>
									</div>
								</div>
								<div class="col-9 mt-2">
									 <a href="dangxuat.jsp" class="text-decoration-none"><strong class="text-danger">Đăng Xuất</strong></a>
								</div>
							</div>
						</div>
					</div>
					<%} %>
					<!--  -->
				</div>
			</div>
	</section>
	<!-- END HEADER -->
	<section class="mymainmenu bg-danger mb-4">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="dropdown navbar navbar-light bg-danger">
			            <a class="text-decoration-none text-white fs-5 mt-1 dropdown-toggle bg-danger border-0" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
			              <i class="fa-solid fa-layer-group"></i>
			              Danh mục sản phẩm
			            </a>
			            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			            	<c:forEach items="${dsloai}" var="o">
			              		<li><a class="dropdown-item text-uppercase" href="HomeController?ml=${o.maloai}">${o.tenloai}</a></li>
			              	</c:forEach>
			            </ul>
			          </div>
				</div>
				<div class="col-md-9 ">
					<ul class="nav justify-content-end mt-2">
						<li class="nav-item "><a class="nav-link active text-white linkl" aria-current="page" href="HomeController">Trang chủ</a></li>
						<li class="nav-item"><a class="nav-link text-white linkl" href="khachhangcontroller">Khách hàng</a></li>
						<li class="nav-item"><a class="nav-link text-white linkl" href="xacnhandonhangController?xn2=chua">Xác nhận đơn hàng</a></li>
						<li class="nav-item dropdown ">
					          <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            Thêm mới
					          </a>
					          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					            <li><a class="dropdown-item" href="themsanphamController?dt=dt">Thêm điện thoại mới</a></li>
					            <li><a class="dropdown-item" href="themsanphamController?hang=dt">Thêm hãng điện thoại</a></li>
					          	<li><a class="dropdown-item" href="themsanphamController?vc=vc">Thêm voucher</a></li>
					          </ul>
					     </li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- Điện thoại -->
	<c:if test="${updatedt!=null or updatedt1!=null}">
		<section class="form-add">
		<div class="container1">
	      <h1 class="form-title">CẬP NHẬT THÔNG TIN ĐIỆN THOẠI</h1>
	      <form action="capnhatController" method="post">
	        <div class="main-user-info">
		      <div class="user-input-box">
		          <label for="email">Tên loại diện thoại</label>
		          <select name="maloai" id="disabledSelect" class="form-select">
				     <!--  <option>Chọn hãng điên thoại</option> -->
				      <option value="${maloai}">${tenloai}</option>
				      <c:forEach items="${dsloai}" var="o">
				      <c:if test="${o.maloai != maloai}">
				      <option value="${o.maloai}">${o.tenloai}</option>
				      </c:if>
				      </c:forEach>
				   </select>
		      </div>
	          <div class="user-input-box">
	            <label >Mã điện thoại(không đổi)</label>
	            <input type="text" id="fullName" required name="madt" value="${madt}"  placeholder="Nhập mã điện thoại">
	          </div>
	          <div class="user-input-box">
	            <label >Tên điện thoại</label>
	            <input type="text" id="username" required name="tendt" value="${tendt}" placeholder="Nhập tên điện thoại">
	          </div>
	          <div class="user-input-box">
	            <label >Giá điện thoại</label>
	            <input type="number"  id="password" required name="gia" value="${gia}" placeholder="Nhập giá điện thoại">
	          </div>
	          <div class="user-input-box">
	            <label >Kích thước màn</label>
	            <input type="text"  name="kichthuocman" required value="${kichthuocman}" placeholder="Nhập kích thước màn"/>
	          </div>
	          <div class="user-input-box">
	            <label >Dung lượng pin</label>
	            <input type="number"  name="pin" required value="${pin}" placeholder="Nhập dung lượng pin"/>
	          </div>
	          <div class="user-input-box">
	            <label >Chip</label>
	            <input type="text"  name="chip" required value="${chip}" placeholder="Nhập loại chip"/>
	          </div>
	          <div class="user-input-box">
	            <label >Ram</label>
	            <input type="number"  name="ram" required value="${ram}" placeholder="Nhập dung lượng ram"/>
	          </div>
	          <div class="user-input-box">
	            <label >Dung lượng bộ nhớ</label>
	            <input type="number"  name="dungluong" required value="${dungluong}" placeholder="Nhập dung lượng bộ nhớ"/>
	          </div>
	          <div class="user-input-box">
	            <label >Số lượng</label>
	            <input type="number"  id="phoneNumber" required name="soluong" value="${soluong}" placeholder="Nhập số lượng">
	          </div>
	          <div class="user-input-box">
	            <label >Hình ảnh</label>
	            <input type="text" id="username" required name="hinhanh" value="${hinhanh}" placeholder="Nhập link hình ảnh">	          
	       	 </div>
	        </div>
		        <c:if test="${updatedt1!=null}">
		       		<p class="text-dark text-uppercase">Cập nhật sản phẩm thành công!</p>
		       	</c:if>
	          <div class="form-submit-btn">
		          <div class="d-grid gap-2">
					  <button class="btn btn-success" type="submit">Cập nhật</button>
				 </div>
	         </div>
	      </form>
	    </div>
	</section>
	</c:if>
	<!-- Hãng -->
	<c:if test="${upadteloai!=null or update!=null}">
	<section class="container ml-3">
			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="themsanphamController?dsloai1=vc"><button type="button" class="btn btn-outline-danger btn-sm">Danh sách hãng điện thoại</button></a></li>
			    <li class="breadcrumb-item"><a href="themsanphamController?dsloai2=vc"><button type="button" class="btn btn-outline-danger btn-sm">Thêm hãng</button></a></li>
			  </ol>
			</nav>
	</section>
	<section class="form-add"> 
	     <div class="container1">
	      <h1 class="form-title">CẬP NHẬT TÊN HÃNG ĐIỆN THOẠI</h1>
	      <form action="capnhatloaihangController" method="post">
	        <div class="main-user-info">
	          <div class="user-input-box">
	            <label >Mã hãng(không đổi)</label>
	            <input type="text" id="fullName" aria-label="Disabled input example"  name="mahang" value="${mahang}"   placeholder="Nhập mã hãng">
	          </div>
	          <div class="user-input-box">
	            <label >Tên hãng điện thoại</label>
	            <input type="text" id="username" required name="tenloainew" value="${tenloainew}" placeholder="Nhập tên hãng điện thoại">
	          </div>
	        </div>
		        <c:if test="${update!=null}">
		       		<p class="text-dark text-uppercase">Cập nhật hãng thành công!</p>
		       	</c:if>
	          <div class="form-submit-btn">
		          <div class="d-grid gap-2">
					  <button class="btn btn-success" type="submit">Cập nhật</button>
				 </div>
	         </div>
	      </form>
	    </div>
	</section>
	</c:if>
	<!-- Voucher -->
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script>
    $(document).ready(function () {
      $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        responsiveClass: true,
        responsive: {
          0: {
            items: 4,
            // nav: true
          },
          600: {
            items: 6,
            // nav: false
          },
          1000: {
            items: 8,
            // nav: true,
            loop: false,
            margin: 20
          }
        }
      })
    })
  </script>
</body>
</html>