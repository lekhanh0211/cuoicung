<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->

		<div class="col-lg-12">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Danh sách bình luận</h5>
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Tên</th>
									<th scope="col">Email</th>
									<th scope="col">Danh mục Sản Phẩm</th>
									<th scope="col">Nội dung</th>
									<th scope="col">Ngày đánh giá</th>
									<th scope="col">Hành động</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${comment}" var="c">
									<tr>
										<td scope="row">${c.id}</td>
										<td>${c.name}</td>
										<td>${c.email}</td>
										<td>${c.objPro.name}</td>
										<td>${c.content}</td>
										<td><fmt:formatDate value="${c.created}"
												pattern="dd/MM/yyyy" /></td>
										<td><a class="btn btn-danger"
											href="deleteComment?id=${c.id}"
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
