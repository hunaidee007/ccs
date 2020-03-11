
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$(document).ready(function() {
		$('#quantity_product').hide();

	});

	function func() {
		$('#quantity_product').slideDown();
	}
</script>

			<h2>Edit Product</h2>
			Product Name : <b>${productMaster.productname}</b> <br />
			<a href="javascript:func();">Add more packaging details</a>
			<div id="quantity_product">
				<form action="addProductDetails.html" method="POST" id="loginFormId"
					name="loginFormId" modelAttribute="loginForm">
					<input type="hidden" id="product_id" name="product_id"
						value="${productMaster.id}">
					<table>
						<tr>
							<td>Quantity :</td>
							<td><input type="text" id="quantity" name="quantity"></td>
						</tr>
						<tr>
							<td>Unit :</td>
							<td><input type="text" id="unit" name="unit"></td>
						</tr>
						<tr>
							<td>Price :</td>
							<td><input type="text" id="price" name="price"></td>
						</tr>
						<tr>
							<td>Stock :</td>
							<td><input type="text" id="stock" name="stock"></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="Add" /></td>
						</tr>
					</table>
				</form>
			</div>
			<h3>Packaging Details</h3><br />
			<table class="bordered" cellpadding=0 cellspacing=0>
				<thead>
					<tr>
						<th>Quantity</th>
						<th>Unit</th>
						<th>Price</th>
						<th>Stock</th>
					</tr>
				</thead>
				<c:forEach var="productQuantity"
					items="${productMaster.productQuantities}">
					<tr>
						<td>${productQuantity.quantity}</td>
						<td>${productQuantity.unit}</td>
						<td>${productQuantity.price}</td>
						<td>${productQuantity.stock}</td>
					</tr>
				</c:forEach>
			</table>
			<br/>
			
