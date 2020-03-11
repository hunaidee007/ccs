<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>C-C-S</title>

<script type="text/javascript" src="<c:url value="/scripts/jquery-1.10.2.js" />"></script>
<script type="text/javascript" src="<c:url value="/scripts/jquery-ui-1.10.4.custom.js" />"></script>
<script type="text/javascript" src="<c:url value="/scripts/jquery.datetimepicker.js" />"></script>


<link rel="stylesheet" href="<c:url value="/styles/jquery-ui.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/styles/styles.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/styles/jquery.datetimepicker.css" />" type="text/css" />

<script type="text/javascript" src="<c:url value="/scripts/bootstrap.min.js"/>"></script>

<script src="<c:url value="/scripts/ie10-viewport-bug-workaround.js"/>"></script>
<script src="<c:url value="/scripts/ie-emulation-modes-warning.js"/>"></script>
<script src="<c:url value="/scripts/docs.min.js"/>"></script>
<script src="<c:url value="/scripts/offcanvas.js"/>"></script>






<link rel="stylesheet" href="<c:url value="/styles/dashboard.css" />" type="text/css" />

 <link rel="stylesheet" href="<c:url value="/styles/bootstrap.min.cerulean.css" />" type="text/css" />
 <link rel="stylesheet" href="<c:url value="/styles/offcanvas.css" />" type="text/css" />
 <link href="<c:url value="/styles/font-awesome.min.css" />"
 <link href="<c:url value="/styles/style.css" />" rel="stylesheet" />





</head>
<body style="">
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
	<tiles:insertAttribute name="header" />
<div class="container">
	 <div class="row row-offcanvas row-offcanvas-left">
					<tiles:insertAttribute name="menu" />
				<div class="col-xs-12 col-sm-9">
					<p class="pull-left visible-xs">
						<button type="button" class="btn btn-primary btn-xs"
							data-toggle="offcanvas">Menu</button>
</p>
					
					<tiles:insertAttribute name="body" />
					
				</div>
	</div>
</div>
		
		
		
		

</body>
</html>