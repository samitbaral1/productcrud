<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="col-md-12">
			<h1 class="text-center mb-3">Welcome to Product App</h1>
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">SN.</th>
						<th scope="col">Product Name</th>
						<th scope="col">Product Description</th>
						<th scope="col">Price</th>
						<th scope="col">Action</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${product}" var="p">
						<tr>
							<th scope="row">${p.id}</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td class="font-weight-bold">&#x20B9;${p.price }</td>
							<td><div class="container text-center">
									<span><a href="update/${p.id}" class="btn btn-outline-success">Update</a>&nbsp;
										&nbsp;<a href="delete/${p.id}" class="btn btn-outline-danger">Delete</a></span>
								</div></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="container text-center">
				<a href="add-product" class="btn btn-outline-success">Add
					Product</a>
			</div>
		</div>
	</div>

</body>
</html>