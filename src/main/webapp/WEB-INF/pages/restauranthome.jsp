


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


<style>
#map_canvas {
	width: 100%;
	height: 100%;
}
</style>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>


	var map;
	var stockholm = new google.maps.LatLng(18.520278, 73.856667);
	
      function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
          center: stockholm,
          zoom: 10
          
        }
        map = new google.maps.Map(map_canvas, map_options);
		
		marker = new google.maps.Marker({
		map:map,
		draggable:true,
		animation: google.maps.Animation.DROP,
		position: stockholm
	  });
	   google.maps.event.addListener(marker, 'click', toggleBounce);
		
      }
	  
	  function toggleBounce() {

		  if (marker.getAnimation() != null) {
			marker.setAnimation(null);
		  } else {
			marker.setAnimation(google.maps.Animation.BOUNCE);
		  }
		}
	  
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>


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
<script src="<c:url value="/scripts/bootstrap.js"/>"></script>
<script src="<c:url value="/scripts/ie10-viewport-bug-workaround.js"/>"></script>
<script src="<c:url value="/scripts/ie-emulation-modes-warning.js"/>"></script>
<script src="<c:url value="/scripts/docs.min.js"/>"></script>


<link href="<c:url value="/styles/prettyPhoto.css" />" rel="stylesheet" />

<link href="<c:url value="/styles/style.css" />" rel="stylesheet" />

<script src="<c:url value="/scripts/jquery.prettyPhoto.js" />"></script>

<script src="<c:url value="/scripts/scrollReveal.js" />"></script>

<script src="<c:url value="/scripts/custom.js" />"></script>
<style>
body {
	margin-top: 100px;
	/* adjust this if the height of the menu bar changes */
}
</style>

</head>

<body>



	<!--NAV SECTION -->
	<header id="header-nav" role="banner">
		<div id="navbar" class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><i
					class="fa fa-flask color-red"></i>COLOI</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav flot-nav">
					<li><a href="#sectionhead"><i class="fa fa-home color-red"></i>
							Home</a></li>
					<li><a href="#contact-section"><i class="fa fa-tint"></i>
							Contact</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!--END NAV SECTION -->
	<div class="container">
		<div class="row row-offcanvas row-offcanvas-left">
			<div class="jumbotron">
				<h1 class="hidden-xs">
					Kareems <small>Subtext for header</small>
				</h1>
				<h3 class="visible-xs">
					Kareems <small>Subtext for header</small>
				</h3>
				<p>This is a template for a simple marketing or informational
					website. It includes a large callout called the hero unit and three
					supporting pieces of content. Use it as a starting point to create
					something more unique.</p>

			</div>

			<div class="col-md-2 column sidebar-offcanvas" id="sidebar"
				role="navigation">
				<input type="search" class="form-control" placeholder="Find Item" />
				<p>
				<div class="panel-group" id="panel-197901">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<a class="panel-title" data-toggle="collapse"
								data-parent="#panel-197901" href="#panel-element-266188">VEG</a>
						</div>
						<div id="panel-element-266188" class="panel-collapse collapse in">
							<div class="panel-body">DAL</div>
							<div class="panel-body">Soups Veg</div>
							<div class="panel-body">RAITA</div>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<a class="panel-title" data-toggle="collapse"
								data-parent="#panel-197901" href="#panel-element-858461">NON
								VEG</a>
						</div>
						<div id="panel-element-858461" class="panel-collapse collapse">
							<div class="panel-body">Chicken</div>
							<div class="panel-body">Mutton</div>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<a class="panel-title" data-toggle="collapse"
								data-parent="#panel-197901" href="#panel-element-858460">DESSERTS</a>
						</div>
						<div id="panel-element-858460" class="panel-collapse collapse">
							<div class="panel-body">VANILA</div>
							<div class="panel-body">Choco Lava</div>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<a class="panel-title" data-toggle="collapse"
								data-parent="#panel-197901" href="#panel-element-858466">ROTI
								- NAAN</a>
						</div>
						<div id="panel-element-858466" class="panel-collapse collapse">
							<div class="panel-body">Butter Roti</div>
							<div class="panel-body">Butter Naan</div>
						</div>
					</div>
				</div>
			</div>
			<!--/span-->

			<div class="col-md-6 column">

				<p class="pull-left visible-xs" style="z-index: 1000">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Menu</button>
				</p>
				<h4>Menu Items</h4>
				<br />
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">Complete List</h3>
					</div>
					<ul class="list-group">
						<li class="list-group-item">
							<form class="form-inline" role="form">

								<div class="form-group">
									<label>Dal Makhani</label>
									<div class="input-group text-right">
										<div class="input-group-addon">$200</div>
										<div class="input-group-addon">
											<a href="#">Add</a>
										</div>
										<input class="form-control" type="email" placeholder="1">
									</div>
								</div>



							</form>
						</li>
						<li class="list-group-item">Dapibus ac facilisis in</li>
						<li class="list-group-item">Morbi leo risus</li>
						<li class="list-group-item">Porta ac consectetur ac</li>
						<li class="list-group-item">Vestibulum at eros</li>
					</ul>

				</div>

			</div>
			<div class="col-md-4 column">
				<br />
				<br />
				<br />
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Your Order</h3>
					</div>
					<div class="panel-body">

						Chole with bhature
						<hr />
						Chole with paneer bhature
						<hr />
						Chole Chawal
						<hr />



					</div>
					<div class="panel-footer">Order Total</div>
					<div class="panel-footer">
						<input type="button" value="Procced to checkout"
							class="btn btn-success" />

					</div>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row clearfix">
					<div class="col-md-6 column">
						<address>
							<strong contenteditable="true">Twitter, Inc.</strong><br /> 795
							Folsom Ave, Suite 600<br /> San Francisco, CA 94107<br /> <abbr
								title="Phone">P:</abbr> (123) 456-7890
						</address>
						<form role="form">
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label><input type="text"
									placeholder="John Doe" class="form-control"
									id="exampleInputEmail1" />
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Email</label><input
									type="email" placeholder="John.Doe@abc.com"
									class="form-control" id="exampleInputPassword1" />
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Message Subject</label><input
									type="email" class="form-control" id="exampleInputPassword1" />
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Message</label>
								<textarea class="form-control" rows="5"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>
					<div class="col-md-6 column">
						<div id="map_canvas"></div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<hr />
	<!--END SLIDE CAROUSEL SECTION -->

	<!--FOOTER SECTION -->
	<footer id="footer">
		<div class="row">
			<div class="col-md-12  col-sm-12">&copy; 2014
				www.yourdomain.com | All Rights Reserved</div>
		</div>
	</footer>









</body>
</html>