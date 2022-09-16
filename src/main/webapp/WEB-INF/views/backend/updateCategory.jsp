<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<div class="col-lg-8">
				<div class="card">
					<div class="card-body">
						<div class="card-title">Cập nhật danh mục</div>
						<hr>

						<form:form action="updateCategory" method="post"
							modelAttribute="cat">
							<div class="form-group">
								<label for="input-1">ID</label> <input type="text"
									class="form-control" readonly id="input-1" placeholder="ID"
									name="id" value="${cat.id}">
							</div>
							<div class="form-group">
								<label for="input-1">Tên danh mục</label> <input type="text"
									class="form-control" id="input-1" placeholder="Tên danh mục"
									name="name" value="${cat.name }">
							</div>

							<div class="form-footer">
								<a class="btn btn-danger"
									href="<c:url value="/admin/category"/>"><i
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

