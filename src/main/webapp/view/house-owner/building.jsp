<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Tab</title>

<!-- Fontfaces CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/css/font-face.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/wow/animate.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/slick/slick.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Plugin CKEDITOR -->
<script
	src="${pageContext.request.contextPath}/view/common/ckeditor/ckeditor.js"></script>

<!-- Main CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/css/theme.css"
	rel="stylesheet" media="all">
<style>
.file-upload {
	background-color: #ffffff;
	margin: 0 auto;
}

.file-upload-btn {
	width: 100%;
	margin: 0;
	color: #fff;
	background: #1FB264;
	border: none;
	padding: 10px;
	border-radius: 4px;
	border-bottom: 4px solid #15824B;
	transition: all .2s ease;
	outline: none;
	text-transform: uppercase;
	font-weight: 700;
}

.file-upload-btn:hover {
	background: #1AA059;
	color: #ffffff;
	transition: all .2s ease;
	cursor: pointer;
}

.file-upload-btn:active {
	border: 0;
	transition: all .2s ease;
}

.file-upload-content {
	display: none;
	text-align: center;
}

.file-upload-input {
	position: absolute;
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	outline: none;
	opacity: 0;
	cursor: pointer;
}

.image-upload-wrap {
	margin-top: 20px;
	border: 4px dashed #666867;
	position: relative;
}

.image-dropping, .image-upload-wrap:hover {
	background-color: #55e46f;
	border: 4px dashed #ffffff;
}

.image-title-wrap {
	padding: 0 15px 15px 15px;
	color: #222;
}

.drag-text {
	text-align: center;
}

.drag-text h3 {
	font-weight: 100;
	text-transform: uppercase;
	color: #666a68;
	padding: 60px 0;
}

.file-upload-image {
	max-height: 200px;
	max-width: 200px;
	margin: auto;
	padding: 20px;
}

.remove-image {
	width: 200px;
	margin: 0;
	color: #fff;
	background: #cd4535;
	border: none;
	padding: 10px;
	border-radius: 4px;
	border-bottom: 4px solid #b02818;
	transition: all .2s ease;
	outline: none;
	text-transform: uppercase;
	font-weight: 700;
}

.remove-image:hover {
	background: #c13b2a;
	color: #ffffff;
	transition: all .2s ease;
	cursor: pointer;
}

.remove-image:active {
	border: 0;
	transition: all .2s ease;
}

.form-field {
	margin-bottom: 15px;
}
</style>
</head>

<body class="">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- END HEADER DESKTOP-->

		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="card" style="width: 100%;">
							<!-- <div class="card-header">
										<h4>Default Tab</h4>
									</div> -->
							<div class="card-body">
								<div class="default-tab">
									<nav>

										<div class="nav nav-tabs" id="nav-tab" role="tablist">
											<c:forEach var="i" begin="1" end="${listBuilding.size() }">
												<c:if test="${i==1 }">
													<a class="nav-item nav-link active" id="nav-home-tab"
														data-toggle="tab" href="#nav-${i }" role="tab"
														aria-controls="nav-home${i }" aria-selected="true">Nhà
														${i }</a>
												</c:if>


												<c:if test="${i !=1 }">
													<a class="nav-item nav-link" id="nav-profile-tab"
														data-toggle="tab" href="#nav-${i }" role="tab"
														aria-controls="nav-profile" aria-selected="false">Nhà
														${i }</a>
												</c:if>

											</c:forEach>
											<a class="nav-item nav-link" id="nav-contact-tab"
												data-toggle="tab" href="#nav-add" role="tab"
												aria-controls="nav-contact" aria-selected="false">Thêm +</a>

										</div>

									</nav>


									<div class="tab-content pl-3 pt-2" id="nav-tabContent">
										<c:forEach var="a" begin="1" end="${listBuilding.size() }">
											<c:if test="${a == 1 }">
												<div class="tab-pane fade show active" id="nav-${a }"
													role="tabpanel" aria-labelledby="nav-home${a }">
													<br>
													<div class="row">

														<div class="col-4">
															<c:if test="${listBuilding[a-1].buildingImage != null}">
																<img class="img-responsive img-thumbnail"
																	src="${pageContext.request.contextPath}${listBuilding[a-1].buildingImage}"
																	alt="">
															</c:if>
															<c:if test="${listBuilding[a-1].buildingImage == null}">
																<img class="img-responsive img-thumbnail"
																	src="https://bazantravel.com/cdn/medias/uploads/75/75014-leng-keng-homestay-da-lat-700x466.jpg"
																	alt="">
															</c:if>
														</div>
														<div class="col-8">
															<h3>${listBuilding[a-1].buildingName }</h3>
															<p>
																<span style="font-weight: bolder;">Loại cho thuê:</span>
																${listBuilding[a-1].buildingType }
															</p>
															<p>
																<span style="font-weight: bolder;">Địa chỉ:</span>
																${listBuilding[a-1].buildingAddress }
															</p>
															<p>
																<span style="font-weight: bolder;">Mô tả:</span>
																${listBuilding[a-1].buildingDesc }
															</p>
															Số lượng phòng: <span
																style="font-weight: bold; padding-left: 5px; padding-right: 5px;">
																${listBuilding[a-1].numRoom } </span> <a href="${pageContext.request.contextPath}/building-detail?buildingId=${listBuilding[a-1].buildingId }">Xem chi
																tiết</a>
														</div>
													</div>
													<hr>
													<div class="row">
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Quản lý dịch
																		vụ
																	</h3>
																</div>


																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>

																				<td>Dịch vụ</td>
																				<td>Giá</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach var="s" begin="1"
																				end="${listService.size() }">
																				<c:if
																					test="${listService[s-1].buildingID == listBuilding[a-1].buildingId}">
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>${listService[s-1].serviceName }</h6>
																							</div>
																						</td>
																						<td>
																							<div class="table-data__info">
																								<h6>${listService[s-1].price }k</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																							<button class="item" data-toggle="tooltip"
																								data-placement="top" title="Edit">
																								<i class="zmdi zmdi-edit"></i>
																							</button>
																							<button class="item" data-toggle="tooltip"
																								data-placement="top" title="Edit">
																								<i class="zmdi zmdi-delete"></i>
																							</button>
																						</td>
																					</tr>
																				</c:if>
																			</c:forEach>

																		</tbody>
																	</table>
																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalDichVu${a }">Thêm dịch vụ</button>
																</div>
															</div>


														</div>

														<!-- END USER DATA-->
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Tiện Nghi
																	</h3>
																</div>


																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>

																				<td>Tiện Nghi</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach var="c" begin="1"
																				end="${listConvenient.size() }">
																				<c:if
																					test="${listConvenient[c-1].buildingID == listBuilding[a-1].buildingId}">
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>${listConvenient[c-1].conveName }</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																							<button class="item" data-toggle="tooltip"
																								data-placement="top" title="Edit">
																								<i class="zmdi zmdi-delete"></i>
																							</button>
																						</td>

																					</tr>

																				</c:if>
																			</c:forEach>

																		</tbody>
																	</table>
																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalTienNghi${a }">Thêm Tiện
																		Nghi</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:if>
											<c:if test="${a != 1 }">
												<div class="tab-pane fade" id="nav-${a }" role="tabpanel"
													aria-labelledby="nav-home${a }">
													<br>
													<div class="row">

														<div class="col-4">
															<c:if test="${listBuilding[a-1].buildingImage != null}">
																<img class="img-responsive img-thumbnail"
																	src="${pageContext.request.contextPath}${listBuilding[a-1].buildingImage}"
																	alt="">
															</c:if>
															<c:if test="${listBuilding[a-1].buildingImage == null}">
																<img class="img-responsive img-thumbnail"
																	src="https://bazantravel.com/cdn/medias/uploads/75/75014-leng-keng-homestay-da-lat-700x466.jpg"
																	alt="">
															</c:if>
														</div>

														<div class="col-8">
															<h3>${listBuilding[a-1].buildingName }</h3>
															<p>
																<span style="font-weight: bolder;">Loại cho thuê:</span>
																${listBuilding[a-1].buildingType }
															</p>
															<p>
																<span style="font-weight: bolder;">Địa chỉ:</span>
																${listBuilding[a-1].buildingAddress }
															</p>
															<p>
																<span style="font-weight: bolder;">Mô tả:</span>
																${listBuilding[a-1].buildingDesc }
															</p>
															Số lượng phòng: <span
																style="font-weight: bold; padding-left: 5px; padding-right: 5px;">
																${listBuilding[a-1].numRoom } </span> <a href="${pageContext.request.contextPath}/building-detail?buildingId=${listBuilding[a-1].buildingId }">Xem chi
																tiết</a>
														</div>
													</div>
													<hr>
													<div class="row">
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Quản lý dịch
																		vụ
																	</h3>
																</div>

																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>

																				<td>Dịch vụ</td>
																				<td>Giá</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>
																		<c:forEach var="s" begin="1"
																			end="${listService.size() }">
																			<c:if
																				test="${listService[s-1].buildingID == listBuilding[a-1].buildingId}">
																				<tr>
																					<td>
																						<div class="table-data__info">
																							<h6>${listService[s-1].serviceName }</h6>
																						</div>
																					</td>
																					<td>
																						<div class="table-data__info">
																							<h6>${listService[s-1].price }k</h6>
																						</div>
																					</td>
																					<td class="table-data-feature">
																						<button class="item" data-toggle="tooltip"
																							data-placement="top" title="Edit">
																							<i class="zmdi zmdi-edit"></i>
																						</button>
																						<button class="item" data-toggle="tooltip"
																							data-placement="top" title="Edit">
																							<i class="zmdi zmdi-delete"></i>
																						</button>
																					</td>
																				</tr>
																			</c:if>
																		</c:forEach>
																		</tbody>
																	</table>
																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalDichVu${a }">Thêm dịch vụ</button>
																</div>
															</div>


														</div>

														<!-- END USER DATA-->
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Tiện Nghi
																	</h3>
																</div>


																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>
																				<td>Tiện Nghi</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>

																		<tbody>
																			<c:forEach var="c" begin="1"
																				end="${listConvenient.size() }">
																				<c:if
																					test="${listConvenient[c-1].buildingID == listBuilding[a-1].buildingId}">
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>${listConvenient[c-1].conveName }</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																							<button class="item" data-toggle="tooltip"
																								data-placement="top" title="Edit">
																								<i class="zmdi zmdi-delete"></i>
																							</button>
																						</td>

																					</tr>

																				</c:if>
																			</c:forEach>

																		</tbody>
																	</table>
																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalTienNghi${a }">Thêm Tiện
																		Nghi</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:if>

										</c:forEach>

										<!-- Thêm nhà -->

										<div class="tab-pane fade" id="nav-add" role="tabpanel"
											aria-labelledby="nav-contact-tab">
											<form action="manage" method="get"
												enctype="multipart/form-data">
												<div class="tab-pane fade show active" id="nav-home"
													role="tabpanel" aria-labelledby="nav-home-tab">
													<br>
													<div class="row">


														<div class="col-4">
															<div class="file-upload">
																<button class="file-upload-btn" type="button"
																	onclick="$('.file-upload-input').trigger( 'click' )">Add
																	Image</button>

																<div class="image-upload-wrap">
																	<input class="file-upload-input" type='file'
																		onchange="readURL(this);" accept="image/*" name="image"/>
																	<div class="drag-text">
																		<h3>Drag and drop a file or select add Image</h3>
																	</div>
																</div>
																<div class="file-upload-content">
																	<img class="file-upload-image" src="#" alt="your image" />
																	<div class="image-title-wrap">
																		<button type="button" onclick="removeUpload()"
																			class="remove-image">
																			Remove <span class="image-title">Uploaded
																				Image</span>
																		</button>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-8">
															<div class="row form-field">
																<div class="col-md-3">
																	<label>Tên nhà</label>
																</div>
																<div class="col-md-8">
																	<input type="text" id="" name="buildingName"
																		placeholder="Nhập tên nhà" class="form-control">
																</div>
															</div>
															<div class="row form-field">
																<div class="col-md-3">
																	<label>Loại cho thuê</label>
																</div>
																<div class="col-md-8">
																	<input type="text" id="" name="buildingType"
																		placeholder="Chọn loại cho thuê" class="form-control">
																</div>
															</div>
															<div class="row form-field">
																<div class="col-md-3">
																	<label>Địa chỉ</label>
																</div>
																<div class="col-md-8">
																	<input type="text" id="" name="Address" placeholder="Nhập số nhà"
																		class="form-control">
																</div>
															</div>
															<div class="row form-field">
																<div class="col-md-3">
																	<label>Mô tả</label>
																</div>
																<div class="col-md-8">
																	<textarea class="form-control" name="mota"
																		placeholder="Mô tả" id="mota" rows="3"></textarea>
																</div>
															</div>
															<div class="row form-field">
																<div class="col-md-9"></div>
																<div class="col-md-2">
																		<input style="width: 100%;" type="submit" class="btn btn-primary" value="Save" name="Action">
																</div>
															</div>
														</div>
													</div>
													<hr>
												</div>
											</form>
										</div>

									</div>
								</div>
							</div>
						</div>
						<!-- /# column -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END PAGE CONTAINER-->
	<!-- modal large -->
	<c:forEach var="b" begin="1" end="${listBuilding.size() }">
		<div class="modal fade" id="ModalDichVu${b }" tabindex="-1"
			role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="largeModalLabel">Thêm dịch vụ</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="table-responsive table-data">
							<table class="table">
								<thead>
									<tr>

										<td>Dịch vụ</td>
										<td>Giá</td>
										<td style="text-align: right;">Action</td>
									</tr>
								</thead>
								<c:forEach var="saa" begin="1"
									end="${listServiceAllowToAdd.size() }">
									<c:if
										test="${listServiceAllowToAdd[saa-1].buildingID == listBuilding[b-1].buildingId}">
										<tr>
											<td>
												<div class="table-data__info">
													<h6>${listServiceAllowToAdd[saa-1].serviceName }</h6>
												</div>
											</td>
											<td>
												<div class="table-data__info">
													<h6>abc</h6>
												</div>
											</td>
											<td class="table-data-feature">
												<button class="item" data-toggle="tooltip"
													data-placement="top" title="Add">
													<i class="zmdi zmdi-plus-circle-o"></i>
												</button>
												<button class="item" data-toggle="tooltip"
													data-placement="top" title="Edit">
													<i class="zmdi zmdi-delete"></i>
												</button>
											</td>
										</tr>
									</c:if>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary">Confirm</button>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>

	<!-- end modal large -->

	<!-- modal large -->
	<c:forEach var="lb" begin="1" end="${listBuilding.size() }">
		<div class="modal fade" id="ModalTienNghi${lb }" tabindex="-1"
			role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="largeModalLabel">Thêm Tiện Nghi</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="table-responsive table-data">
						<table class="table">
							<thead>
								<tr>
									<td>Tiện Nghi</td>
									<td style="text-align: right;">
									<span style="margin-right: 3px;"><label for="selectAllTienNghi">Chọn tất cả</label></span> <input type="checkbox" id="selectAllTienNghi" name="">
									</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="lc" begin="1"
									end="${listConvenientAllowToAdd.size() }">
									<c:if
										test="${listConvenientAllowToAdd[lc-1].buildingID == listBuilding[lb-1].buildingId}">
										<tr>
											<td>
												<div class="table-data__info">
													<h6>${listConvenientAllowToAdd[lc-1].conveName }</h6>
												</div>
											</td>
											<td class="table-data-feature">
												<input type="checkbox" name="listTienNghi" value="${listConvenientAllowToAdd[lc-1].conveId }">
											</td>

										</tr>

									</c:if>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary">Confirm</button>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<!-- end modal large -->


	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {

				var reader = new FileReader();

				reader.onload = function(e) {
					$('.image-upload-wrap').hide();

					$('.file-upload-image').attr('src', e.target.result);
					$('.file-upload-content').show();

					$('.image-title').html(input.files[0].name);
				};

				reader.readAsDataURL(input.files[0]);

			} else {
				removeUpload();
			}
		}

		function removeUpload() {
			$('.file-upload-input')
					.replaceWith($('.file-upload-input').clone());
			$('.file-upload-content').hide();
			$('.image-upload-wrap').show();
		}
		$('.image-upload-wrap').bind('dragover', function() {
			$('.image-upload-wrap').addClass('image-dropping');
		});
		$('.image-upload-wrap').bind('dragleave', function() {
			$('.image-upload-wrap').removeClass('image-dropping');
		});
	</script>

	<script>
		CKEDITOR.replace('mota');
	</script>

	<!-- Jquery JS-->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/slick/slick.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/wow/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/animsition/animsition.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/circle-progress/circle-progress.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/chartjs/Chart.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/js/main.js"></script>
</body>

</html>
<!-- end document-->