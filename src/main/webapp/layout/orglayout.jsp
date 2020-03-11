<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Test E-Commerce App</title>
<script type="text/javascript"
	src="<c:url value="/scripts/jquery-1.10.2.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
<script src="<c:url value="/scripts/bootstrap.js"/>"></script>
<script src="<c:url value="/scripts/ie10-viewport-bug-workaround.js"/>"></script>
<script src="<c:url value="/scripts/ie-emulation-modes-warning.js"/>"></script>
<script src="<c:url value="/scripts/docs.min.js"/>"></script>
<script src="<c:url value="/scripts/offcanvas.js"/>"></script>
<script src="<c:url value="/scripts/ckeditor/ckeditor.js"/>"></script>





<link rel="stylesheet" href="<c:url value="/styles/dashboard.css" />"
	type="text/css" />

<link rel="stylesheet"
	href="<c:url value="/styles/bootstrap.min.${theme}.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/styles/offcanvas.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/styles/carousel.css" />"
	type="text/css" />





</head>
<body style="">

	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
	<tiles:insertAttribute name="header" />


	<tiles:insertAttribute name="body" />






</body>
</html>