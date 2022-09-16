<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Chi tiết đơn hàng</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">ID Đơn Hàng</th>
										<th scope="col">ID Sản Phẩm</th>
										<th scope="col">Tên Sản Phẩm</th>
										<th scope="col">Giá</th>
										<th scope="col">Số lượng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${billdetail}" var="bill">
										<tr>
											<td scope="row">${bill.id}</td>
											<td>${bill.bill_id}</td>
											<td>${bill.pro_id}</td>
											<c:forEach items="${products}" var="pro">
												<c:if test="${pro.id == bill.pro_id}">
													<td>${pro.name}</td>
													<td><fmt:formatNumber type="number"
															value="${pro.price}" /> VNĐ</td>
												</c:if>
											</c:forEach>
											<td>${bill.quantity}</td>

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