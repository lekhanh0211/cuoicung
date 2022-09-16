<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<div class="col-lg-12">
				<a class="add-catalog" href="initInsertProduct"
					class="btn btn-success">Thêm mới</a>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Danh sách sản phẩm</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tên sản phẩm</th>
										<th scope="col">Hình ảnh</th>
										<th scope="col">Tên danh mục</th>
										<th scope="col">Giá</th>
										<th scope="col">Status</th>
										<th scope="col">Ngày tạo</th>
										<th scope="col">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${product}" var="pro">
										<tr>
											<th scope="row">${pro.id }</th>
											<td>${pro.name }</td>
											<td><img
												style="width: 110px; height: 67px; object-fit: cover; border: 1px solid #fff;"
												src="<c:url value="/assets/admin/images/products/img-test/${pro.image_link}"/>"
												alt="${pro.name}"></td>
											<td>${pro.objCate.name}</td>
											<td><fmt:formatNumber value="${pro.price }"
													type="number" /> VNĐ</td>
											<td>${pro.status?"Còn hàng":"Hết hàng"}</td>
											<td><fmt:formatDate value="${pro.created }"
													pattern="dd/MM/yyyy" /></td>
											<td><a class="btn btn-warning"
												href="initUpdateProduct?id=${pro.id}">Sửa</a> | <a
												class="btn btn-danger" href="deleteProduct?id=${pro.id}"
												onclick="return confirm('Bạn có chắc chắn muốn xóa không?')">Xóa</a>
											</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>

					</div>
				</div>
				<div class="product__pagination" style="margin-bottom: 50px;">
					<c:forEach items="${listPages}" var="page">
						<a class="btn btn-success btn-sm" href="product?page=${page}">${page}</a> | 
						</c:forEach>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>

