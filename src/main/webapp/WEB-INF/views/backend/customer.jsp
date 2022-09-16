<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<!--<div class="col-lg-12">
            <button class="add-catalog"><a href="${pageContext.request.contextPath}/admin/user/add">Thêm User</a></button>
          </div>  -->
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Danh sách User</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tên</th>
										<th scope="col">Email</th>
										<th scope="col">Số điện thoại</th>
										<th scope="col">Username</th>
										<th scope="col">Ngày tạo</th>
										<th scope="col">Hành động</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${customer}" var="cus">
										<tr>
											<td scope="row">${cus.id}</td>
											<td>${cus.name }</td>
											<td>${cus.email }</td>
											<td>${cus.phone }</td>
											<td>${cus.username }</td>
											<td><fmt:formatDate value="${cus.created }"
													pattern="dd/MM/yyyy" /></td>
											<td><a class="btn btn-warning"
												href="initUpdateCustomer?id=${cus.id}">Sửa</a> | <a
												class="btn btn-danger" href="deleteCustomer?id=${cus.id}"
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
		<div class="overlay toggle-menu"></div>
	</div>
</div>