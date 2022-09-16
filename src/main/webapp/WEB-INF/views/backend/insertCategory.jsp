<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<div class="col-lg-8">
				<div class="card">
					<div class="card-body">
						<div class="card-title">Thêm danh mục</div>
						<hr>
						<form:form action="insertCategory" method="post"
							modelAttribute="cat">

							<div class="form-group">
								<label for="input-1">Tên danh mục</label>
								<form:input type="text" class="form-control" id="input-1"
									placeholder="Tên chuyên mục" path="name" />
							</div>

							<div class="form-footer">
								<a class="btn btn-danger"
									href="<c:url value="/admin/category"/>"><i
									class="fa fa-times"></i>Quay lại </a>
								<button type="submit" class="btn btn-success">
									<i class="fa fa-check-square-o"></i> Thêm
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