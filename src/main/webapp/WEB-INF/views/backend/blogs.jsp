<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->


		<div class="row">
			<div class="col-lg-12">
				<a class="add-catalog" href="initInsertBlogs"
					class="btn btn-success">Thêm mới</a>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Danh sách tin tức</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tiêu đề</th>
										<th scope="col">Hình ảnh</th>
										<th scope="col">Người đăng</th>
										<th scope="col">Ngày đăng</th>
										<th scope="col">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${blogs}" var="bl">
										<tr>
											<td scope="row">${bl.id}</td>
											<td>${bl.title}</td>
											<td><img
												style="width: 110px; height: 67px; object-fit: cover; border: 1px solid #fff;"
												src="<c:url value="/assets/admin/images/blogs/${bl.image_link}"/>" />
											</td>
											<td>${bl.author}</td>
											<td><fmt:formatDate value="${bl.created}"
													pattern="dd/MM/yyyy" /></td>
											<td><a class="btn btn-warning"
												href="initUpdateBlogs?id=${bl.id}">Sửa</a> | <a
												class="btn btn-danger" href="deleteBlogs?id=${bl.id}"
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