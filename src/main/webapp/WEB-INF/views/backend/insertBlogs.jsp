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
						<div class="card-title">Thêm bài viết</div>
						<hr>
						<form:form action="insertBlogs" method="post" modelAttribute="bl">

							<div class="form-group">
								<label for="input-2">Tên bài viết</label>
								<form:input type="text" class="form-control" id="input-2"
									placeholder="Tên tin tức" path="title" />
							</div>
							<div class="form-group">
								<label for="input-3">Nội dung</label>
								<form:textarea class="form-control" rows="4" id="input-17"
									path="content" />
							</div>
							<div class="form-group">
								<label for="input-3">Hình ảnh</label>
								<form:input type="text" class="form-control" id="input-18"
									placeholder="Địa chỉ hình ảnh" path="image_link" />
							</div>
							<div class="form-group">
								<label for="input-4">Người đăng</label>
								<form:input class="form-control valid" id="input-4"
									path="author" />
							</div>
							<div class="form-group">
								<label for="input-5">Ngày đăng</label>
								<form:input type="date" class="form-control" id="the-date"
									path="created" />
							</div>
							<div class="form-footer">

								<a class="btn btn-danger" href="<c:url value="/admin/blogs"/>"><i
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