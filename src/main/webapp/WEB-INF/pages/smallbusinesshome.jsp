<!DOCTYPE html>
<html lang="en" id="mainHTML">


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Single Page</title>

<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link href="<c:url value="/styles/bootstrap.min.${theme}.css" />"
	rel="stylesheet" />
<link href="<c:url value="/styles/font-awesome.min.css" />"
	rel="stylesheet" />
<script type="text/javascript"
	src="<c:url value="/scripts/jquery-1.10.2.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/scripts/bootstrap.min.js"/>"></script>

<script src="<c:url value="/scripts/ie10-viewport-bug-workaround.js"/>"></script>
<script src="<c:url value="/scripts/ie-emulation-modes-warning.js"/>"></script>
<script src="<c:url value="/scripts/docs.min.js"/>"></script>
<script src="<c:url value="/scripts/ckeditor/ckeditor.js"/>"></script>

<link href="<c:url value="/styles/small-business.css" />"
	rel="stylesheet" />

<script>
	function getHtml() {
		

		$("#completeHtml").val($('#mainHTML').html())
	}
</script>
</head>

<body>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<form name="loginFormId" id="loginFormId" method="POST"
						action="${pageContext.request.contextPath}/rest/saveCustomer.html"
						modelAttribute="loginForm">
						<textarea id="completeHtml" name="completeHtml" cols="70"
							rows="15"></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<input type="submit" class="btn btn-primary" value="Save Changes"></input>
				</div>
				</form>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <!-- Button trigger modal -->
					<button class="btn btn-primary btn-xs" data-toggle="modal"
						data-target="#myModal" onclick="getHtml();">Edit</button> <img
					src="http://placehold.it/150x50&text=Logo" alt="">
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">About</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>

	<div class="container">

		<div class="row">
			<div class="col-lg-8">
				<div class="carousel slide" id="carousel-355835">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-355835"></li>
						<li data-slide-to="1" data-target="#carousel-355835"></li>
						<li data-slide-to="2" data-target="#carousel-355835"></li>
						<li data-slide-to="3" data-target="#carousel-355835"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt=""
								src="${pageContext.request.contextPath}/images/hardware/1.png" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="${pageContext.request.contextPath}/images/hardware/2.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="${pageContext.request.contextPath}/images/hardware/3.jpg" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="${pageContext.request.contextPath}/images/hardware/4.png" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-355835"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-355835"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
			<div class="col-lg-4">
				<h1 contenteditable="true">Business Name or Tagline</h1>
				<p contenteditable="true">This is a template that is great for
					small businesses. It doesn't have too much fancy flare to it, but
					it makes a great use of the standard Bootstrap core components.
					Feel free to use this template for any project you want!</p>
				<a class="btn btn-primary btn-lg" href="#">Call to Action!</a>
			</div>
		</div>

		<hr>

		<div class="row">
			<div class="col-lg-12">
				<div class="well text-center" contenteditable="true">This is a
					well that is a great spot for a business tagline or phone number
					for easy access!</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-4">
				<h2 contenteditable="true">Heading 1</h2>
				<p contenteditable="true">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Nullam sollicitudin auctor quam ac
					tempor. Cras a ante sed libero mollis sodales. Praesent fringilla,
					neque ut ultrices faucibus, dolor eros ultrices neque, nec bibendum
					arcu ipsum eget justo.</p>
				<a class="btn btn-default" href="#">More Info</a>
			</div>
			<div class="col-lg-4">
				<h2 contenteditable="true">Heading 2</h2>
				<p contenteditable="true">Phasellus vestibulum sagittis purus
					laoreet varius. Pellentesque malesuada malesuada mattis. Aliquam
					sed porta nisi, eget suscipit dolor. Nam ipsum sapien, rhoncus eu
					leo eu, ultricies pellentesque tellus.</p>
				<a class="btn btn-default" href="#">More Info</a>
			</div>
			<div class="col-lg-4">
				<h2 contenteditable="true">Heading 3</h2>
				<p contenteditable="true">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Nullam sollicitudin auctor quam ac
					tempor. Cras a ante sed libero mollis sodales. Praesent fringilla,
					neque ut ultrices faucibus, dolor eros ultrices neque, nec bibendum
					arcu ipsum eget justo.</p>
				<a class="btn btn-default" href="#">More Info</a>
			</div>
		</div>
		<hr />

		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-6 column">
							<blockquote>
								<p contenteditable="true">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Integer posuere erat a ante.</p>
								<small contenteditable="true">Someone famous <cite>Source
										Title</cite></small>
							</blockquote>
						</div>
						<div class="col-md-6 column">
							<address>
								<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave, Suite 600<br />
								San Francisco, CA 94107<br /> <abbr title="Phone">P:</abbr>
								(123) 456-7890
							</address>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<hr>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Company 2013</p>
				</div>
			</div>
		</footer>
	</div>


</body>

</html>
