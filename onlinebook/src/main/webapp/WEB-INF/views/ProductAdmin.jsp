<%@include file="header.jsp" %>
<html>
<head>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Product Admin Page 
</h1>

<c:url var="addAction" value="/ProductAdmin/add" ></c:url>

<div class="section">
	<div class="container">
		<div class="row">
				<div class="col-mid-8 center">
					<h2>
					Add New Product
					</h2>
					<form:form class="form-horizontal" role="form" action="${addAction}" commandName="product" enctype="multipart/form-data">
						<c:if test="${!empty product.productName}">
							<div class="form-group">
								<div class="col-sm-10">
								<form:input class="form-control" readonly="true" path="productId"  disabled="true" />
								<form:hidden path="productId" />
								</div>
							</div>
						</c:if>
					 	
					 	<div class="form-group">
								<div class="col-sm-10">
								<form:input type="text" class="form-control" path="brand"  placeholder="Brand" />
								<form:errors path="brand" />
								</div>
						</div>
					    
					    <div class="form-group">
								<div class="col-sm-10">
								<form:input type="text" class="form-control" path="desc"  placeholder="Description" />
								<form:errors path="desc" />
								</div>
						</div>
						
						<div class="form-group">
								<div class="col-sm-10">
								<form:input type="text" class="form-control" path="productName"  placeholder="Name" />
								<form:errors path="productName" />
								</div>
						</div>
						
						<div class="form-group">
								<div class="col-sm-10">
								<form:input type="text" class="form-control" path="price"  placeholder="Price" />
								<form:errors path="price" />
								</div>
						</div>
						
						<div class="form-group">
								<div class="col-sm-10">
								<form:input type="text" class="form-control" path="category"  placeholder="Category" />
								<form:errors path="category" />
								</div>
						</div>
						
						<div class="form-group">
								<div class="col-sm-10">
								<form:input type="file" class="form-control" path="image" />								
								</div>
						</div>
						
					<c:if test="${!empty product.productName}">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">Edit Product</button>						
							</div>						
						</div>					
					</c:if>
					
					<c:if test="${empty product.productName}">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">Add Product</button>						
							</div>						
						</div>					
					</c:if>
					
					 </form:form>                 
				</div>
		</div>

	</div>

</div>
			
<br>
<div class="section">
	<div class="container">
		<div class="row">
				<div class="col-mid-12">
					<h3>Products List</h3>
					<c:if test="${!empty listproducts}">
						<table class="table">
						<thead>
						<tr>
							<th width="80">Product ID</th>
							<th width="80">Product Name</th>
							<th width="80">Category</th>
							<th width="80">Description</th>
							<th width="80">Brand</th>
							<th width="80">Price</th>
							<th width="60">Edit</th>
							<th width="60">Delete</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach items="${listproducts}" var="product">
							<tr>
								<td>${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.category}</td>
								<td>${product.desc}</td>
								<td>${product.brand}</td>
								<td>${product.price}</td>
								<td><a href="<c:url value='/edit/${product.productId}' />" >Edit</a></td>
								<td><a href="<c:url value='/remove/${product.productId}' />" >Delete</a></td>
							</tr>
						</c:forEach>
						</tbody>
						</table>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@include file="footer.jsp" %>