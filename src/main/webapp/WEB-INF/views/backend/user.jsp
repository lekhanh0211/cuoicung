<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->
		<div class="row">
			<div class="col-lg-12">
				<a class="add-catalog" href="initInsertUser" class="btn btn-success">Thêm
					người dùng</a>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Danh sách Admin</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tên đăng nhập</th>
										<th scope="col">Tên Admin</th>
										<th scope="col">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${user}" var="us">
										<tr>
											<td scope="row">${admin.id}</td>
											<td>${admin.username}</td>
											<td>${admin.name}</td>
											<td><a class="btn btn-warning"
												href="initUpdateUser?id=${us.id}">Sửa</a> | <a
												class="btn btn-danger" href="deleteUser?id=${us.id}"
												onclick="return confirm('Bạn có chắc chắn muốn xóa không?')">Xóa</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
