<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
<title>${title}</title>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change the product detail</h1>

				<form action="${pageContext.request.contextPath}/handle-product" method="post">
				<input type="text" value="${product.id}" name="id" readonly>
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" name="name"
							aria-describedby="emailHelp" placeholder="Enter Product Name"
							value="${product.name }">
					</div>
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" id="description" name="description"
							placeholder="Enter the Product Description" rows="5" cols="20">${product.description}</textarea>
					</div>
					<div class="form-group">
						<label for="price">Product Price</label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter the Product Price" value="${product.price}">
					</div>
					<!-- ${pageContext.request.contextPath } yo halena vane chai project name hatayera siddai root ma gaidinxa, in local host, so that is needed -->
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>

				</form>
			</div>
		</div>
	</div>








</body>
</html>