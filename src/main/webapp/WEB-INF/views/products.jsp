<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>
<spring:message code="products.title"/> 
</title>
</head>
<body>
	<script>
		<c:set var="home" value="${pageContext.request.contextPath}"/>	
	</script>
	<section>
    		<div class="jumbotron">
			<div class="container">
				<h1>
				<spring:message code="products.topsection.h1"/> 
				</h1>
				<p>All the available products in our store</p>
				<p><a href="${home}">
				<spring:message code="products.topsection.tohome.anchor"/>
				</a>
			</p>
		</div>
  	</div>
	</section>

	<section class="container">
		<div class="row">
			<c:forEach items="${products}" var="product">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<div class="caption">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>₩${product.unitPriceStr}</p>
						<p>
						<spring:message code="products.product.unitsInStockStr.label"/>
							${product.unitsInStockStr}</p>
						<p>
							<a
								href="<spring:url
								value='/market/product?id=${product.productId}' /> "
								class="btn btn-primary"> 
								<span class="glyphicon-info-sign glyphicon"/></span>
								<spring:message code="products.product.detailInfo.anchor"/>
							</a>
						</p>
					</div>
				</div>
			</div>
		  </c:forEach>
		</div>
	</section>
</body>
</html>
    