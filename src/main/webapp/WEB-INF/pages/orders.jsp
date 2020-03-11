
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


			<table class="bordered" cellpadding=0 cellspacing=0 align="center">
				<thead>
					<tr>
						<th>Name</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${products}">
						<tr>
							<td>${product.productname}</td>
							
						</tr>
					</c:forEach>
				<tbody>
			</table>
