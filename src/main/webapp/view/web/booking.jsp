<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="eng">

<head>
<title>Booking | Homestay</title>
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

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
.main-filter {
	background: #b0a7a7;
}

.ui-datepicker {
	margin-top: 0px;
	margin-bottom: 0px;
	width: 20em;
}

.ui-state-default, .ui-widget-content .ui-state-default {
	border-radius: 0px;
	height: fit-content;
	width: 29.33px;
}

.ui-slider-handle {
	display: none;
}

.infor{
	margin-top: 5px;
}
</style>
</head>

<body>
	<!-- banner -->
	<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<jsp:include page="header.jsp"></jsp:include>
		</div>

		<jsp:include page="commontool.jsp"></jsp:include>
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<!-- tittle heading -->

			<!-- //tittle heading -->
			<!-- product left -->
			<div class="side-bar col-md-3">
				<div class="search-hotel main-filter" style="padding: 10px 10px;">
					<h3 class="agileits-sear-head">??i???m ?????n:</h3>
					<form action="booking" method="get">
						<input type="search" style="color: black;"
							placeholder="${param.city!=null?param.city:'Ch???n ??i???m ?????n' }"
							value="${param.city!=null?param.city:null }" name="city" required>
						<input type="submit">

						<div style="margin-top: 15px;" class="form-group">
							<label for="pwd">Ng??y ?????n:</label> <input autocomplete="off"
								type="text" name="startDate" id="my_date_picker1"
								class="form-control"
								placeholder="${param.startDate!=null?param.startDate:'MM/dd/yyyy' }"
								value="${param.startDate!=null?param.startDate:null }" required>
						</div>

						<div style="margin-top: 15px;" class="form-group">
							<label for="pwd">Ng??y v???:</label> <input type="text"
								name="endDate" id="my_date_picker2" class="form-control"
								placeholder="${param.endDate!=null?param.endDate:'MM/dd/yyyy' }"
								value="${param.endDate!=null?param.endDate:null }" required
								autocomplete="off">
						</div>

						<div style="text-align: right;">
							<button type="submit" class="btn btn-primary"
								style="width: 100px;">T??m ki???m</button>
						</div>
					</form>
				</div>

				<hr>
				<!-- price range -->
				<form action="booking" method="get">
				<input type="hidden" name="city" value="${param.city }"> <input
						type="hidden" name="startDate" value="${param.startDate }"
						autocomplete="off"> <input type="hidden" name="endDate"
						value="${param.endDate }" autocomplete="off"> <input
						type="hidden" name="filter" value="true">
						
					<div class="range">
						<h3 class="agileits-sear-head">Kho???ng gi?? (VN??)</h3>

						<ul class="dropdown-menu6">
							<li>
								<div id="slider-range"></div> <input type="text" id="amount" name="price"
								style="border: 0; color: #ffffff; font-weight: normal;" /> 
							</li>
						</ul>
					</div>
				
					<!-- Loai cho o -->
					<hr>
					<!-- Type -->
					<c:set var="listBuildingType"
						value="${requestScope.listBuildingType }"></c:set>
					<div class="left-side">
						<h3 class="agileits-sear-head">Lo???i ch??? ???</h3>
						<ul>
							<c:forEach var="type" items="${listBuildingType }">
								<li><input id="${type.buildingType}" type="checkbox"
									value="${type.buildingType}" class="checked"
									name="buildingType"
									<c:forEach var="item" items="${buildingType}">
										<c:if test="${item eq type.buildingType}">
									    	checked
									  	</c:if>
									</c:forEach>>
									<span class="span"> <label for="${type.buildingType}"
										style="font-weight: unset;">${type.buildingType}</label></span></li>
							</c:forEach>
						</ul>
					</div>

					<hr>
					<!--preference -->
					<div class="left-side">
						<h3 class="agileits-sear-head">Ti???n nghi</h3>
						<ul>
							<c:set var="listConvenient"
								value="${requestScope.listConvenient }"></c:set>
							<c:forEach var="convenient" items="${listConvenient }">
								<li><input id="${convenient.conveId }" type="checkbox"
									value="${convenient.conveId }" class="checked"
									name="convenientOption"
									<c:forEach var="item" items="${convenientChoose}">
										<c:if test="${item eq convenient.conveId}">
									    	checked
									  	</c:if>
									</c:forEach>>
									<span class="span"><label for="${convenient.conveId }"
										style="font-weight: unset;">${convenient.conveName }</label></span></li>
							</c:forEach>
						</ul>
					</div>
					<!-- // preference -->
					<hr>
					<!-- rating -->
					<div class="left-side">
						<h3 class="agileits-sear-head">X???p h???ng ????nh gi??</h3>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn1" value="4.4"
								<c:if test="${requestScope.ratingScale >=4 }">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn1"> Tuy???t v???i (T??? 4 ?????n 5 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn2" value="3.4"
								<c:if test="${requestScope.ratingScale >=3 and  requestScope.ratingScale <4}">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn2"> T???t (T??? 3 ?????n 4 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn3" value="2.4"
								<c:if test="${requestScope.ratingScale >=2 and requestScope.ratingScale <3}">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn3"> B??nh Th?????ng (T??? 2 ?????n 3 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn4" value="1.4"
								<c:if test="${requestScope.ratingScale <2 and requestScope.ratingScale != 0}">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn4"> T??? (D?????i 2 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
					</div>
					<!-- End rating -->

					<hr>
					<div class="left-side">
						<h3 class="agileits-sear-head">Th??nh Ph???/ Qu???n/ Huy???n</h3>
						<ul>
							<c:set var="listDistrict" value="${requestScope.listDistrict }"></c:set>
							<c:forEach var="district" items="${listDistrict }">
								<li><input id="${district.districtId }" type="checkbox"
									value="${district.districtId }" class="checked"
									name="districtOption"
									<c:forEach var="item" items="${districtChoose}">
										<c:if test="${item eq district.districtId}">
									    	checked
									  	</c:if>
									</c:forEach>>
									<span class="span"><label for="${district.districtId }"
										style="font-weight: unset;">${district.districtName }</label></span></li>
							</c:forEach>
						</ul>
					</div>
					<div class="clearfix"></div>
					<br>
					<div style="text-align: right;">
						<a type="button"
							href="${pageContext.request.contextPath}/booking?city=${param.city}&startDate=${param.startDate}&endDate=${param.endDate}"
							class="btn btn-primary">X??a b??? l???c</a>
						<button type="submit" class="btn btn-primary"
							style="width: 100px;">L???c</button>
					</div>
				</form>
			</div>
			<!-- //product left -->

			<c:url var="SortUrl" value="booking">
				<c:param name="city" value="${param.city}" />

				<c:param name="startDate" value="${param.startDate}" />

				<c:param name="endDate" value="${param.endDate}" />

				<c:forEach var="item" items="${buildingType}">
					<c:param name="buildingType" value="${item}" />
				</c:forEach>

				<c:forEach var="item" items="${conceptChoose}">
					<c:param name="concept" value="${item}" />
				</c:forEach>

				<c:forEach var="item" items="${convenientChoose}">
					<c:param name="convenientOption" value="${item}" />
				</c:forEach>

				<c:if test="${ratingScale != 0 }">
					<c:param name="rating" value="${ratingScale}" />
				</c:if>

				<c:forEach var="item" items="${districtChoose}">
					<c:param name="districtOption" value="${item}" />
				</c:forEach>
			</c:url>

			<!-- product right -->
			<div class="left-ads-display col-md-9">
				<div class="wrapper_top_shop">
					<div class="col-md-8 shop_left" style="margin-top: 6px;">
						<!-- <img src="images/banner3.jpg" alt="">
						<h6>40% off</h6> -->
						G???m c?? <span style="color: red;">${requestScope.totalRecords }</span>
						k???t qu??? t??m ki???m
					</div>
					<div class="col-md-4">
						<div class="dropdown">
							<button style="width: 100%; background-color: gray;"
								class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">
								${param.sort=='down'?'S???p x???p gi?? gi???m d???n':'S???p x???p gi?? t??ng d???n' }
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" style="width: 100%;">
								<li><a href="${SortUrl}&sort=up">S???p x???p gi?? t??ng d???n</a></li>
								<li><a href="${SortUrl}&sort=down">S???p x???p gi?? gi???m d???n
								</a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
					<c:set var="listBuilding" value="${requestScope.listBuilding}" />
					<c:set var="count" value="${1}" />
					<!-- product-sec1 -->
					<div class="product-sec1">
						<!--/mens-->
						<!--  -->
						<c:forEach var="building" items="${listBuilding}">
	
							<div class="row">
								<div class="col-md-4 product-men women_two">
									<div class="product-shoe-info shoe">
										<div class="men-pro-item">
											<div class="men-thumb-item">
												<c:set var="image"
													value="${pageContext.request.contextPath}${building.buildingImage}"></c:set>
												<c:set var="defaultImage"
													value="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"></c:set>
												<img width="240" height="190"
													src="${building.buildingImage==null?defaultImage:image }"
													alt="">
												<div class="men-cart-pro">
													<div class="inner-men-cart-pro">
														<a
															href="${pageContext.request.contextPath}/single-post?buildingId=${building.buildingId}&startDate=${param.startDate}&endDate=${param.endDate}"
															class="link-product-add-cart">Xem chi ti???t</a>

													</div>

												</div>

											</div>

										</div>
									</div>
								</div>
								<div class="col-md-8 info-product-price">
									<div class="item-info-product"
										style="text-align: left; margin-bottom: 15px;">
										<h4>
											<a
												href="${pageContext.request.contextPath}/single-post?buildingId=${building.buildingId}">${building.buildingName }</a>
										</h4>
										<div class="clearfix"></div>
									</div>
									<div class="grid_meta">
										<div class="product_price infor">
											<div class="grid-price ">
											<fmt:formatNumber var="avg" value="${building.avgPrice }"
												type="currency" minFractionDigits="0" currencySymbol="" />
												<span class="money ">Gi?? trung b??nh: </span> ${avg } VN??/ 1 ng??y
											</div>
										</div>

										<div class="infor">
											<span style="font-weight: bolder;">????nh gi??: </span>
											${building.rating != 0?building.rating:'Ch??a c?? ????nh gi??' }
										</div>
										<div class="infor">
											<span style="font-weight: bolder;">Lo???i ph??ng: </span>
											${building.buildingType }
										</div>

										<div class="infor">
											<svg width="16" height="16" fill="none">
									<path d="M8 9.333a2 2 0 100-4 2 2 0 000 4z" stroke="#1A202C"
													stroke-linecap="round" stroke-linejoin="round"></path>
									<path
													d="M11.771 11.105l-2.828 2.828a1.333 1.333 0 01-1.885 0l-2.83-2.828a5.333 5.333 0 117.543 0v0z"
													stroke="#1A202C" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span style="font-weight: bolder;"> ?????a ch??? :</span>
											${building.buildingAddress}
										</div>
										<div class="infor">
											<svg viewBox="0 0 20 20" fill="none"
												style="width: 16px; height: 16px;">
												<path
													d="M10 17.5a7.5 7.5 0 100-15 7.5 7.5 0 000 15zM10 6.667h.008"
													stroke="#4A5568" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path>
												<path d="M9.167 10H10v3.333h.833" stroke="#4A5568"
													stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span style="font-weight: bolder;"> M?? t???: </span>${building.buildingDesc }</div>
									</div>
								</div>
								<hr>
							</div>
						</c:forEach>

						<!-- //paging -->
						<c:choose>

							<c:when test="${param.action == 'sort'}">
								<ul class="pagination">

									<c:if test="${currentPage != 1}">
										<li class="page-item"><a
											href="product?action=sort&direction=${param.direction}&by=${param.by}&page=${currentPage - 1}">Previous</a></li>
									</c:if>
									<c:forEach begin="1" end="${noOfPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="page-link">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="product?action=sort&direction=${param.direction}&by=${param.by}&page=${i}"
													class="page-link">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if test="${currentPage lt noOfPages}">
										<li class="page-item"><a
											href="product?action=sort&direction=${param.direction}&by=${param.by}&page=${currentPage + 1}">Next</a></li>
									</c:if>
								</ul>
							</c:when>

							<c:when test="${param.action == 'listBy'}">
								<ul class="pagination">

									<c:if test="${currentPage != 1}">
										<li class="page-item"><a
											href="product?action=listBy&category=${param.category}&page=${currentPage - 1}">Previous</a></li>
									</c:if>
									<c:forEach begin="1" end="${noOfPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="page-link">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="product?action=listBy&category=${param.category}&page=${i}"
													class="page-link">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<c:if test="${currentPage lt noOfPages}">
										<li class="page-item"><a
											href="product?action=listBy&category=${param.category}&page=${currentPage + 1}">Next</a></li>
									</c:if>
								</ul>
							</c:when>

							<c:when test="${param.action == 'search'}">
								<ul class="pagination">

									<c:if test="${currentPage != 1}">
										<li class="page-item"><a
											href="product?action=search&by=${param.by}&keyword=${param.keyword}&page=${currentPage - 1}">Previous</a></li>
									</c:if>
									<c:forEach begin="1" end="${noOfPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="page-link">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="product?action=search&by=${param.by}&keyword=${param.keyword}&page=${i}"
													class="page-link">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<c:if test="${currentPage lt noOfPages}">
										<li class="page-item"><a
											href="product?action=search&by=${param.by}&keyword=${param.keyword}&page=${currentPage + 1}">Next</a></li>
									</c:if>
								</ul>
							</c:when>

							<c:otherwise>
								<div class="row text-center">
									<ul class="pagination">
										<c:if test="${currentPage != 1}">
											<li class="page-item"><a
												href="${path}?page=${currentPage - 1}">Previous</a></li>
										</c:if>
										<c:forEach begin="1" end="${noOfPages}" var="i">
											<c:choose>
												<c:when test="${currentPage eq i}">
													<li class="page-item"><a class="page-link active">${i}</a></li>
												</c:when>
												<c:otherwise>
													<li class="page-item"><a href="${path}?page=${i}"
														class="page-link">${i}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>

										<c:if test="${currentPage lt noOfPages}">
											<li class="page-item"><a
												href="${path}?page=${currentPage + 1}">Next</a></li>

										</c:if>
									</ul>
								</div>
							</c:otherwise>

						</c:choose>

					</div>


					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>

	</div>


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

	<!-- /nav -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
	<!--//search-bar-->
	<!-- price range (top products) -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(
				
				function() {<c:if test="${1 == 1}">
					var dollarUSLocale = Intl.NumberFormat('en-US');
					
					$("#slider-range").slider(
							{
								range : true,
								min : 0,
								max : 5000000,
								values : [ ${fromPrice},  ${toPrice} ],
								slide : function(event, ui) {
									$("#amount").val(
											"" + dollarUSLocale.format(ui.values[0]) + " - "
													+ dollarUSLocale.format(ui.values[1]));
								}
							});
					
					$("#amount").val(
							dollarUSLocale.format($("#slider-range").slider("values", 0))
									+ " - "
									+ dollarUSLocale.format($("#slider-range").slider("values", 1)));
					</c:if>
				}); //]]>
	</script>
	<!-- //price range (top products) -->

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
						$("#my_date_picker1").datepicker({
							minDate : 0
						});
					});

					$(function() {
						$("#my_date_picker2").datepicker({
							minDate : 0
						});
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