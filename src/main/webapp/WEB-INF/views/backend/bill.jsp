<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Danh sách đơn hàng</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tài khoản User</th>
										<th scope="col">Họ Tên</th>
										<th scope="col">Email</th>
										<th scope="col">SĐT</th>
										<th scope="col">Địa chỉ</th>
										<th scope="col">Ghi chú</th>
										<th scope="col">Tổng tiền</th>
										<th scope="col">Trạng thái</th>
										<th scope="col">Ngày tạo</th>
										<th scope="col">Thanh toán</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${bill}" var="b">
										<tr>
											<td scope="row">${b.id}</td>
											<td>${b.objCus.username}</td>
											<td>${b.objCus.name}</td>
											<td>${b.objCus.email}</td>
											<td>${b.objCus.phone}</td>
											<td>${b.address}</td>
											<td>${b.message}</td>
											<td><fmt:formatNumber value="${b.total_price}"
													type="number" /> VNĐ</td>
											<td>${b.status?"Tiền mặt":"Chuyển khoản"}</td>
											<td><fmt:formatDate value="${b.created}"
													pattern="dd/MM/yyyy" /></td>
											<td><a class="btn btn-danger"
												href="deleteBill?id=${b.id}"
												onclick="return confirm('Bạn có chắc chắn muốn xóa không?')">Xóa</a></td>
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