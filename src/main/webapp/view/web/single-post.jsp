<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="eng">

<head>
<title>House Booking</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	



</script>
<!-- //custom-theme -->
<link
	href="${pageContext.request.contextPath}/view/web/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/web/css/shop.css"
	type="text/css" media="screen" property="" />
<link href="${pageContext.request.contextPath}/view/web/css/style7.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/web/css/flexslider.css"
	type="text/css" media="screen" />
<link
	href="${pageContext.request.contextPath}/view/web/css/easy-responsive-tabs.css"
	rel='stylesheet' type='text/css' />
<!-- Owl-carousel-CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/view/web/css/jquery-ui1.css">
<link href="${pageContext.request.contextPath}/view/web/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link
	href="${pageContext.request.contextPath}/view/web/css/font-awesome.css"
	rel="stylesheet">
<!-- //font-awesome-icons -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">

<!-- Linked datepicker -->
<link
	href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
	rel='stylesheet'>
<style>
		.ui-datepicker {
			margin-top: 0px;
			width: 20em;
		}
		h1{
			color:green;
		}
		.ui-state-default, .ui-widget-content .ui-state-default{
			border-radius: 0px;
			height: fit-content;
			width: 29.33px;
		}
	</style>

</head>

<body>
	<!-- banner -->
	<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<jsp:include page="header.jsp"></jsp:include>
			</div>
		</div>

		<jsp:include page="commontool.jsp"></jsp:include>

	</div>

	<!-- //banner -->

	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides">
							<li
								data-thumb="https://chefjob.vn/wp-content/uploads/2020/04/homestay-duoc-nhieu-du-khach-lua-chon.jpg">
								<div class="thumb-image">
									<img
										src="https://chefjob.vn/wp-content/uploads/2020/04/homestay-duoc-nhieu-du-khach-lua-chon.jpg"
										data-imagezoom="true" class="img-responsive">
								</div>
							</li>
							<li
								data-thumb="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg">
								<div class="thumb-image">
									<img
										src="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg"
										data-imagezoom="true" class="img-responsive">
								</div>
							</li>
							<li
								data-thumb="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg">
								<div class="thumb-image">
									<img
										src="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg"
										data-imagezoom="true" class="img-responsive">
								</div>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3 style="color: black;">Ten khach san - Loai phong(neu co)</h3>
				<p>
					<span class="item_price">$650/day</span>
					<del>$1,199/day</del>
				</p>


				<!-- Booking -->

				<div>
					<a style="background-color: #00BCD4;" href="#addEmployeeModal"
						class="btn btn-success" data-toggle="modal">Đặt phòng</a>
				</div>


				<div id="addEmployeeModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="voucher" method="post">
								<input type="hidden" name="action" value="add" />
								<div class="modal-header">
									<h4 class="modal-title">Information</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label>Customer:</label> <input name="voucherId" type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Giảm giá (%)</label> <input name="discount" type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Ngày hết hạn (yyyy-MM-dd)</label> <input name="dueDate"
											type="text" class="form-control" required>
									</div>
									<div class="form-group">
										<label>Giảm tối đa</label> <input name="maxDiscount"
											type="text" class="form-control" required>
									</div>
									<div class="form-group">
										<label>Start Date:</label> <input type="text"
											id="my_date_picker1" class="form-control" required>
									</div>
									<div class="form-group">
										<label>End Date:</label> <input type="text"
											id="my_date_picker2" class="form-control" required>
									</div>
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Hủy"> <input type="submit"
										class="btn btn-success" value="Thêm">
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- ENd Booking -->

				<div class="responsive_tabs">
					<div id="horizontalTab">
						<ul class="resp-tabs-list">
							<li>Tiện nghi</li>
							<li>Thông tin chi tiết</li>
						</ul>
						<div class="resp-tabs-container">
							<!--/tab_one-->
							<div class="table-responsive">
								<table class="table table-striped">
									<tbody>
										<tr>
											<td>Bãi đỗ xe</td>
											<td>Lò vi sóng</td>
											<td>Tủ lạnh</td>
										</tr>

										<tr>
											<td>Ban công</td>
											<td>Mạng không dây</td>
											<td>Phòng tắm</td>
										</tr>

										<tr>
											<td>Bàn làm việc</td>
											<td>Máy điều hoà</td>
											<td>Tủ quần áo</td>
										</tr>

										<tr>
											<td>Bồn nước nóng</td>
											<td>Máy giặt</td>
											<td>Giường</td>
										</tr>
									</tbody>
								</table>
							</div>

							<!--//tab_one-->

							<div class="tab3">
								<div class="table-responsive">
									<table class="table table-striped">
										<tbody>
											<tr>
												<td>Tình trạng: Còn phòng</td>
												<td>Sức chứa (tối đa): 6 người</td>
											</tr>

											<tr>
												<td>Thời hạn cho thuê: Thương lượng</td>
												<td>Tiền Cọc: 50$</td>
											</tr>

											<tr>
												<td>Địa chỉ: Chỗ này ghi địa chỉ cụ thể, thành phố Đà
													Lạt, tỉnh Lâm Đồng</td>
												<td></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="clearfix"></div>
			<!--/tabs-->

			<!--//tabs-->
			<!-- /new_arrivals -->
			<div class="new_arrivals">
				<h3>Homestay cùng khu vực</h3>
				<!-- /womens -->
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
									<!-- <div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Bella Toes">
											<input type="hidden" name="amount" value="675.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div> -->
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
									<!-- <div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Bella Toes">
											<input type="hidden" name="amount" value="675.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div> -->
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
									<!-- <div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Bella Toes">
											<input type="hidden" name="amount" value="675.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div> -->
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
									<!-- <div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Bella Toes">
											<input type="hidden" name="amount" value="675.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div> -->
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>

				<!-- //womens -->
				<div class="clearfix"></div>
			</div>
			<!--//new_arrivals-->


		</div>
	</div>
	<!-- //top products -->

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- //footer -->

	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/minicart.js"></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
	<!-- //nav -->
	<!-- single -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/imagezoom.js"></script>
	<!-- single -->
	<!-- script for responsive tabs -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>

	<!-- FlexSlider -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->

	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
	<!--//search-bar-->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/move-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/bootstrap-3.1.1.min.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">
		
	</script>
	<script>
		$(document).ready(
				function() {

					$(function() {
						$("#my_date_picker1").datepicker({});
					});

					$(function() {
						$("#my_date_picker2").datepicker({});
					});

					$('#my_date_picker1').change(
							function() {
								startDate = $(this).datepicker('getDate');
								$("#my_date_picker2").datepicker("option",
										"minDate", startDate);
							})

					$('#my_date_picker2').change(
							function() {
								endDate = $(this).datepicker('getDate');
								$("#my_date_picker1").datepicker("option",
										"maxDate", endDate);
							})
				})
	</script>

</body>

</html>