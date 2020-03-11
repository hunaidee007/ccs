<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test E-Commerce App</title>
<script type="text/javascript" src="scripts/jquery-1.10.2.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.10.4.custom.js"></script>
<script type="text/javascript" src="scripts/jquery.datetimepicker.js"></script>


<link rel="stylesheet" href="styles/jquery-ui-1.10.4.custom.css"
	type="text/css" />
<link rel="stylesheet" href="styles/styles.css" type="text/css" />
<link rel="stylesheet" href="styles/jquery.datetimepicker.css"
	type="text/css" />


</head>
<body style="">
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<tiles:insertAttribute name="body" />
</body>
</html>