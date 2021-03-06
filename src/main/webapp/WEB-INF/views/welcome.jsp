<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>어서와~</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
	<div class="jumbotron">
		<h1> ${greeting} </h1>
		<p> ${tagline} </p>
		
		<p><a href="market/products">상품 목록 보기</a></p>
		<p><a href='<c:url value="/market/product?id=P1000"/>'>
			없는 상품(P1000)</a></p>	
		<p><a href='<c:url value="market/products/chargers"/>'>
			검색-충전기</a></p>
		<p><a href='<c:url value="/market/product.xml?id=P1235"/>'>
			상품-xml(P1235)</a></p>
		<p><a href='<c:url value="/market/product.json?id=P1235"/>'>
			상품-json(P1235)</a></p>
		<p><a href='<c:url value="market/product?id=P1235"/>'>
			상품(P1235)</a></p>
		<p><a href="market/product/update?id=P2001">상품(P1237) - 갱신</a></p>
		<p><a href="customers/add">새 고객 추가</a></p>
		<p><a href="market/products/add">신규 품목 추가</a></p>
		<p><a href="market/update/stock">500미만 상품 제고 1000 증가</a></p>
		<p><a href="market/products/Laptop">랩탑 보기</a></p>
		<p><a href="market/products/tablet">태블릿 보기</a></p>
		<p><a href="market/products/filter/params;categories=Laptop,
			Tablet;brands=Google,Dell ">상품 2중 필터</a></p>
		<p><a href="market/product?id=P1234 ">상품(P1234)</a></p>
		<p><a href="market/products/Tablet/price;low=200000;high=400000?brand=Google ">복합조건 검색</a></p>
		<p><a href="market/products/laptop/price;low=500000;high=900000">품종-가격 검색</a></p>
		<p><a href="endpointdoc">종점 목록 보기</a></p>

		
					
	</div>
</body>
</html>
