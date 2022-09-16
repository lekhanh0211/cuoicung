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
						<div class="card-title">Sửa sản phẩm</div>
						<hr>
						<form:form method="post" action="updateProduct"
							modelAttribute="pro">

							<div class="form-group">
								<label for="input-1">Mã sản phẩm</label> <input type="text"
									class="form-control" readonly="readonly" id="input-1"
									placeholder="Mã sản phẩm" name="id" value="${pro.id}">
							</div>

							<div class="form-group">
								<label for="input-1">Tên sản phẩm</label> <input type="text"
									class="form-control" id="input-1" placeholder="Tên sản phẩm"
									name="name" value="${pro.name}">
							</div>


							<div class="form-group">
								<label for="input-2">Danh mục</label>
								<div>
									<select class="form-control valid" id="input-6" name="cat_id"
										aria-invalid="false">
										<c:forEach items="${category}" var="cat">
											<option value="${cat.id }" selected="selected">${cat.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="input-1">Ngày</label> <input type="date"
									class="form-control" id="input-1" placeholder="Ngày đăng"
									name="created" value="${pro.created}">
							</div>
							<div class="form-group">
								<label for="input-1">Giá</label> <input type="text"
									class="form-control" id="input-1" placeholder="Giá"
									name="price" value="${pro.price}">
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
									<textarea class="form-control" rows="4" id="input-17"
										name="description">${pro.description}</textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="input-2" class="col-form-label">Nội dung</label>
								<div>
									<textarea class="form-control" rows="4" id="input-17"
										name="content">${pro.content}</textarea>
								</div>
							</div>

							<div class="form-group">
								<label for="input-1">Ảnh đại diện</label> <input type="text"
									class="form-control" id="input-1" placeholder="Tên hình"
									name="image_link" value="${pro.image_link}">
							</div>
							<div class="form-footer">
								<a class="btn btn-danger" href="<c:url value="/admin/product"/>"><i
									class="fa fa-times"></i>Quay lại </a>
								<button type="submit" class="btn btn-success">Cập nhật</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>