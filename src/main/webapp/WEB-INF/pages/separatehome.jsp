


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
	margin-top: 100px; /* adjust this if the height of the menu bar changes */
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
					<li><a href="#about-section"><i
							class="fa fa-wrench color-brown"></i> About Us</a></li>
					<li><a href="#services-section"><i
							class="fa fa-check color-green"></i> Services</a></li>

					<li><a href="#pricing-section"><i
							class="fa fa-plane color-blue"></i> Pricing</a></li>
					<li><a href="#contact-section"><i class="fa fa-tint"></i>
							Contact</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!--END NAV SECTION -->
	<!--SLIDE CAROUSEL SECTION -->
	<div class="container" id="sectionhead">

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
								src="${pageContext.request.contextPath}/images/css/computer_repair.png" />
							<div class="carousel-caption">
								
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="${pageContext.request.contextPath}/images/css/support.png" />
							<div class="carousel-caption">
							
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="${pageContext.request.contextPath}/images/css/banner-support.jpg" />
							<div class="carousel-caption">
								
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="${pageContext.request.contextPath}/images/css/950.jpg" />
							<div class="carousel-caption">
								
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
	
	<hr/>
	<!--END SLIDE CAROUSEL SECTION -->
	
	<div class="container">
      
      <div class="row">
        <div class="col-md-4">
          <h2>Remote Support</h2>
		  <img alt="140x140" class="img-responsive" src="${pageContext.request.contextPath}/images/css/remote-access.jpg" />
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Computer Repairs</h2>
		  <img alt="140x140" class="img-responsive" src="${pageContext.request.contextPath}/images/css/computer-repair7.jpg" />
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>Virus Protection Plans</h2>
		  <img alt="140x140" class="img-responsive" src="${pageContext.request.contextPath}/images/css/virus-protection.jpg" />
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>

      <hr>

    </div>
	
	<!--ABOUT SECTION -->
	<section id="about-section">
		<div class="wrap-pad">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 ">
					<div class="text-center">
						<h1>
							<i class="fa fa-wrench small-icons bk-color-brown"></i>Meet Team
						</h1>
						<p class="lead">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Nulla nec enim sapien. Aliquam erat volutpat.
							Quisque eu ante at tortor imperdiet gravida nec sed turpis.
							Phasellus augue augue.</p>
					</div>

				</div>
				<!-- ./ Heading div-->
				<div
					class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 margin-top-100  ">
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter left and move 100px, wait 0.6s">
						<div class="text-center">
							<p>
								<img class="img-responsive img-thumbnail img-circle"
									src="${pageContext.request.contextPath}/images/team/team1.png"
									alt="">
							</p>
							<h3>Romiz Nopvok</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat.</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter bottom and move 100px, wait 0.6s">
						<div class="text-center">
							<p>
								<img class="img-responsive img-thumbnail img-circle"
									src="${pageContext.request.contextPath}/images/team/team2.jpg"
									alt="">
							</p>
							<h3>Jhon Deo</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat.</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter bottom and move 100px, wait 0.6s">
						<div class="text-center">
							<p>
								<img class="img-responsive img-thumbnail img-circle"
									src="${pageContext.request.contextPath}/images/team/team1.png"
									alt="">
							</p>
							<h3>Mark Kimza</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat.</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<div class="text-center">
							<p>
								<img class="img-responsive img-thumbnail img-circle"
									src="${pageContext.request.contextPath}/images/team/team2.jpg"
									alt="">
							</p>
							<h3>Nopen Riox</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat.</p>
						</div>
					</div>
				</div>
				<!-- ./ Content div-->
			</div>
		</div>
	</section>
	<!--END ABOUT SECTION -->
		<hr/>
	<!--SERVICES SECTION -->
	<section id="services-section">
		<div class="wrap-pad">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 "
					data-scrollreveal="enter top and move 100px, wait 0.5s">
					<div class="text-center">
						<h1>
							<i class="fa fa-check small-icons bk-color-green"></i>Services
						</h1>
						<p class="lead">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Nulla nec enim sapien. Aliquam erat volutpat.
							Quisque eu ante at tortor imperdiet gravida nec sed turpis.
							Phasellus augue augue.</p>
					</div>
				</div>
				<!-- ./ Heading div-->
				<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 ">
					<div class="col-md-4 col-sm-6"
						data-scrollreveal="enter left and move 100px, wait 0.6s">
						<div class="text-center">
							<i class="fa fa-bolt icon-round bk-color-red"></i>
							<h4>Responsive Design</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat. Quisque eu ante at
								tortor imperdiet gravida nec sed turpis. Phasellus augue augue.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6"
						data-scrollreveal="enter bottom and move 100px, wait 0.6s">
						<div class="text-center">
							<i class="fa fa-comments icon-round bk-color-black"></i>
							<h4>24x7 Support</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat. Quisque eu ante at
								tortor imperdiet gravida nec sed turpis. Phasellus augue augue.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<div class="text-center">
							<i class="fa fa-desktop icon-round bk-color-light-blue"></i>
							<h4>Awesome Display</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat. Quisque eu ante at
								tortor imperdiet gravida nec sed turpis. Phasellus augue augue.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6"
						data-scrollreveal="enter left and move 100px, wait 0.6s">
						<div class="text-center">
							<i class="fa fa-flask icon-round bk-color-green"></i>
							<h4>Tested Template</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat. Quisque eu ante at
								tortor imperdiet gravida nec sed turpis. Phasellus augue augue.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6"
						data-scrollreveal="enter bottom and move 100px, wait 0.6s">
						<div class="text-center">
							<i class="fa fa-pencil icon-round bk-color-blue"></i>
							<h4>Say Yes To Customize</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat. Quisque eu ante at
								tortor imperdiet gravida nec sed turpis. Phasellus augue augue.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<div class="text-center">
							<i class="fa fa-thumbs-up icon-round bk-color-brown"></i>
							<h4>Well Documented</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nulla nec enim sapien. Aliquam erat volutpat. Quisque eu ante at
								tortor imperdiet gravida nec sed turpis. Phasellus augue augue.
							</p>
						</div>
					</div>
				</div>
				<!-- ./ Content div-->
			</div>
		</div>
	</section>
	<!--END SERVICES SECTION -->
	<hr/>
	<!--PRICING SECTION -->
	<section id="pricing-section">
		<div class="wrap-pad">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 "
					data-scrollreveal="enter top and move 100px, wait 0.5s">
					<div class="text-center">
						<h1>
							<i class="fa fa-plane small-icons bk-color-blue"></i>Our Pricing
							Options
						</h1>
						<p class="lead">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Nulla nec enim sapien. Aliquam erat volutpat.
							Quisque eu ante at tortor imperdiet gravida nec sed turpis.
							Phasellus augue augue.</p>
					</div>
				</div>
				<!-- ./ Heading div-->
				<div
					class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 margin-top-100 ">
					<div id="pricing-table" class="row">
						<div class="col-md-4 col-sm-4"
							data-scrollreveal="enter left and move 100px, wait 0.6s">
							<ul class="plan-main">
								<li class="plan-name">Starter</li>
								<li class="plan-price">$ 100</li>
								<li>5GB Storage</li>
								<li>1GB Space</li>
								<li>200 Bandwidth</li>
								<li>100 Email Address</li>
								<li>24x7 Support</li>
								<li>Live Chat</li>
								<li class="plan-action"><a href="#"
									class="btn btn-primary btn-lg">Signup</a></li>
							</ul>
						</div>
						<div class="col-md-4 col-sm-4"
							data-scrollreveal="enter bottom and move 100px, wait 0.6s">
							<ul class="plan-main featured">
								<li class="plan-name">Medium</li>
								<li class="plan-price">$ 200</li>
								<li>5GB Storage</li>
								<li>1GB Space</li>
								<li>200 Bandwidth</li>
								<li>100 Email Address</li>
								<li>24x7 Support</li>
								<li>Live Chat</li>
								<li class="plan-action"><a href="#"
									class="btn btn-primary btn-lg">Signup</a></li>
							</ul>
						</div>
						<div class="col-md-4 col-sm-4"
							data-scrollreveal="enter right and move 100px, wait 0.6s">
							<ul class="plan-main">
								<li class="plan-name">Advance</li>
								<li class="plan-price">$ 300</li>
								<li>5GB Storage</li>
								<li>1GB Space</li>
								<li>200 Bandwidth</li>
								<li>100 Email Address</li>
								<li>24x7 Support</li>
								<li>Live Chat</li>
								<li class="plan-action"><a href="#"
									class="btn btn-primary btn-lg">Signup</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- ./ Content div-->
			</div>
		</div>
	</section>
	<!--END PRICING SECTION -->
		<hr/>
	<!--CONTACT SECTION -->
	<section id="contact-section">
		<div class="wrap-pad">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 "
					data-scrollreveal="enter top and move 100px, wait 0.5s">
					<div class="text-center">
						<h1>
							<i class="fa fa-tint small-icons bk-color-black"></i>Contact us
							Now
						</h1>
						<p class="lead">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Aliquam erat volutpat.</p>
					</div>
				</div>
				<!-- ./ Heading div-->
				<div
					class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1  margin-top-20">
					<div class="col-md-6  col-sm-12"
						data-scrollreveal="enter left and move 100px, wait 0.6s">
						<h3>
							<i class="fa fa-pencil small-icons bk-color-light-blue"></i>Send
							Us Your Query
						</h3>
						<hr />
						<form>
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<input type="text" class="form-control" required="required"
											placeholder="Name">
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<input type="text" class="form-control" required="required"
											placeholder="Email address">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12">
									<div class="form-group">
										<textarea name="message" id="message" required="required"
											class="form-control" rows="4" placeholder="Message"></textarea>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-lg">Submit
											Query</button>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-4 col-md-offset-1  col-sm-12"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<h3>
							<i class="fa fa-comments small-icons bk-color-red"></i>Reach Us
							Here
						</h3>
						<hr />
						123, New york lane.<br /> Call: +23-00-89-009<br /> Email:
						info@yourdomain.com<br />
						<h3>
							<i class="fa fa-plus small-icons bk-color-green"></i>Social
							Presence
						</h3>
						<a href="#"><i class="fa fa-facebook fa-3x color-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter fa-3x color-twitter"></i></a>
						<a href="#"><i
							class="fa fa-google-plus fa-3x color-google-plus"></i></a> <a
							href="#"><i class="fa fa-linkedin fa-3x color-linkedin"></i></a>
						<a href="#"><i class="fa fa-pinterest fa-3x color-pinterest"></i></a>
					</div>
				</div>
				<!-- ./ Content div-->
			</div>
		</div>
	</section>
	<!--END CONTACT SECTION -->
	<!--FOOTER SECTION -->
	<footer id="footer">
		<div class="row">
			<div class="col-md-12  col-sm-12">&copy; 2014
				www.yourdomain.com | All Rights Reserved</div>
		</div>
	</footer>









</body>
</html>