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
						<div class="card-title">Cập nhật tin tức</div>
						<hr>
						<form:form action="updateBlogs" method="post" modelAttribute="bl">
							<div class="form-group">
								<label for="input-1">ID</label> <input type="text"
									class="form-control" readonly id="input-1" placeholder="ID"
									value="${bl.id}" name="id">
							</div>
							<div class="form-group">
								<label for="input-2">Tên tin tức</label> <input type="text"
									class="form-control" id="input-2" placeholder="Tên tin tức"
									value="${bl.title}" name="title">
							</div>
							<div class="form-group">
								<label for="input-3">Nội dung</label>
								<textarea class="form-control" rows="4" id="input-17"></textarea>
							</div>
							<div class="form-group">
								<label for="input-2">Hình ảnh</label> <input type="text"
									class="form-control" id="input-10"
									placeholder="Địa chỉ hình ảnh" value="${bl.image_link}"
									name="image_link">
							</div>
							<div class="form-group">
								<label for="input-4">Người đăng</label> <input type="text"
									class="form-control" id="input-5" value="${bl.author}"
									name="author">
							</div>
							<div class="form-group">
								<label for="input-5">Ngày đăng</label> <input type="date"
									class="form-control" id="input-5" value="${bl.created}"
									name="created">
							</div>
							<div class="form-footer">
								<a class="btn btn-danger" href="<c:url value="/admin/blogs"/>">Hủy</a>
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