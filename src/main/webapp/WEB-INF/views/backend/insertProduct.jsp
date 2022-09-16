<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content-wrapper">
	<div class="container-fluid">
		<div class="row mt-3">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<div class="card-title">Thêm sản phẩm</div>
						<hr>
						<form:form method="post" action="insertProduct"
							modelAttribute="pro">

							<div class="form-group">
								<label for="input-1">Tên sản phẩm</label>
								<form:input type="text" class="form-control" id="input-1"
									placeholder="Tên sản phẩm" path="name" />
							</div>


							<div class="form-group">
								<label for="input-2">Chuyên mục</label>
								<div>
									<select class="form-control valid" id="input-6" name="cat_id"
										aria-invalid="false">
										<option value="">==== Chọn danh mục sản phẩm ======</option>
										<c:forEach items="${category}" var="cat">
											<option value="${cat.id }">${cat.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="input-1">Ngày</label>
								<form:input type="date" class="form-control" id="the-date"
									placeholder="Ngày đăng" path="created" />
							</div>
							<div class="form-group">
								<label for="input-1">Giá</label>
								<form:input type="number" class="form-control" id="input-1"
									placeholder="Giá" path="price" />
							</div>
							<div class="form-group">
								<label for="input-2">Trạng thái</label>
								<div>
									<select class="form-control valid" id="input-6" name="status"
										required aria-invalid="false">
										<option value="1">Còn hàng</option>
										<option value="0">Hết hàng</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="input-2" class="col-form-label">Mô tả</label>
								<div>
									<form:textarea class="form-control" rows="4" id="input-17"
										path="description" />
								</div>
							</div>

							<div class="form-group">
								<label for="input-2" class="col-form-label">Nội dung</label>
								<div>
									<form:textarea class="form-control" rows="4" id="input-17"
										path="content" />
								</div>
							</div>

							<div class="form-group">
								<label for="input-1">Ảnh đại diện</label>
								<form:input type="text" class="form-control" id="input-1"
									placeholder="Tên hình" path="image_link" />
							</div>
							<div class="form-footer">
								<a class="btn btn-danger" href="<c:url value="/admin/product"/>"><i
									class="fa fa-times"></i>Quay lại </a>
								<button type="submit" class="btn btn-success">
									<i class="fa fa-check-square-o"></i> Thêm mới
								</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>
<script>
	var date = new Date();

	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();

	if (month < 10)
		month = "0" + month;
	if (day < 10)
		day = "0" + day;

	var today = year + "-" + month + "-" + day;

	document.getElementById('the-date').value = today;
</script>