


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
<script type="application/ld+json">
{ "@context" : "http://schema.org",
  "@type" : "Organization",
  "url" : "http://www.c-c-s.in",
  "contactPoint" : [
    { "@type" : "ContactPoint",
      "telephone" : "+91 976-786-110-8",
      "contactType" : "customer service"
    } ] }
</script>
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Organization",
  "url": "http://www.c-c-s.in",
  "logo": "http://www.c-c-s.in/images/ccslogo.gif"
}
</script>

<link rel='shortcut icon' href='favicon.ico' type='image/x-icon'/ >


	<script type="text/javascript">
		//Hunaid update this
      // Your Client ID can be retrieved from your project in the Google
      // Developer Console, https://console.developers.google.com
      var CLIENT_ID = '494495385020-j6g5g5g52vfmrrjurl8eq8gkg7tsapjj.apps.googleusercontent.com';

      var SCOPES = ['https://www.googleapis.com/auth/gmail.send'];

      /**
       * Check if current user has authorized this application.
       */
      function checkAuth() {
        gapi.auth.authorize(
          {
            'client_id': CLIENT_ID,
            'scope': SCOPES,
            'immediate': true
          }, handleAuthResult);
      }

      /**
       * Handle response from authorization server.
       *
       * @param {Object} authResult Authorization result.
       */
      function handleAuthResult(authResult) {
      
        if (authResult && !authResult.error) {
        window.location.href="rest/ccslogin";
        } else {
          // Show auth UI, allowing the user to initiate authorization by
          // clicking authorize button.
        }
      }

      /**
       * Initiate auth flow in response to user clicking authorize button.
       *
       * @param {Event} event Button click event.
       */
      function handleAuthClick(event) {
        gapi.auth.authorize(
          {client_id: CLIENT_ID, scope: SCOPES, immediate: false},
          handleAuthResult);
        return false;
      }

    
	  
	  
	
      

      /**
       * Append a pre element to the body containing the given message
       * as its text node.
       *
       * @param {string} message Text to be placed in pre element.
       */
      function appendPre(message) {
        var pre = document.getElementById('output');
        var textContent = document.createTextNode(message + '\n');
        pre.appendChild(textContent);
      }

    </script>
    <!-- script src="https://apis.google.com/js/client.js?onload=checkAuth"-->
    </script>
	
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-67565255-1', 'auto');
  ga('send', 'pageview');


  
</script>
<style>
#social_side_links {
    position: fixed;
    top: 200px;
    left: 0;
    padding: 10px;
    background: #FFFFFF;
  
    border-width: 2px 2px 2px 0;
    border-style: solid;
    border-color: #777 #888 #999;
    -webkit-border-top-right-radius: 6px;
    -moz-border-top-right-radius: 6px;
    border-top-right-radius: 6px;
    -webkit-border-bottom-right-radius: 6px;
    -moz-border-bottom-right-radius: 6px;
    border-bottom-right-radius: 6px;
    -webkit-box-shadow: #888 7px 0 10px -5px;
    -moz-box-shadow: #888 7px 0 10px -5px;
    -o-box-shadow: #888 7px 0 10px -5px;
    box-shadow: #888 7px 0 10px -5px;
}
#social_side_links li a {
    display: block;
    background-repeat: no-repeat;
    background-position: top left;
}
#social_side_links li a img {
    -webkit-transition:  opacity .2s ease-in-out;
    -moz-transition:  opacity .2s ease-in-out;
    -o-transition:  opacity .2s ease-in-out;
    transition:  opacity .2s ease-in-out;
}
#social_side_links li a:hover img {
    opacity: 0;
}
#social_side_links li a:active img {
    opacity: 1;
}
#social_side_links li:first-child {
    background-image: url('images/twitter.png');
}
#social_side_links li:nth-child(2) {
    background-image: url('images/facebook.png');
}
#social_side_links li:nth-child(3) {
    background-image: url('images/linkedin.png');
}
#social_side_links li:nth-child(4) {
    background-image: url('images/digg.png');
}
#social_side_links li:nth-child(5) {
    background-image: url('images/youtube.png');
}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="Computer Repair in Nashik, Laptop Repair in Nashik, Computer & Laptop Sales in Nashik, Virus Protection, Remote Support, Onsite Support, Data Recovery, Ibrahim Merchant,New and Old Computer Parts, Tally Support, LAN setup, CCTV Providers, Computer & Laptop Accessories">
<meta name="keywords"
	content="Computer Repair in Nashik,Laptop Repair in Nashik, Computer & Laptop Sales in Nashik, Virus Protection, Remote Support, Onsite Support, Data Recovery, Ibrahim Merchant,New and Old Computer Parts, Tally Support, LAN setup, CCTV Providers, Computer & Laptop Accessories">
<meta name="author" content="Ibrahim Merchant">

<title>Computer Repair Nashik | Laptop Repair Nashik | Computer & Laptop Sales Nashik | Tally Support Nashik | Computer & Laptop Accessories</title>

<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link href="<c:url value="/styles/bootstrap.min.cerulean.css" />"
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
<script src="https://apis.google.com/js/platform.js" async defer></script>

<style>
body {
	margin-top: 100px;
	/* adjust this if the height of the menu bar changes */
}
</style>

<style>
#map_canvas {
	width: 700px;
	height: 400px;
}
</style>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
	var contentString1 = '<div id="content">'
			+ '<div id="siteNotice">'
			+ '</div>'
			+ '<h2 id="firstHeading" class="firstHeading">Italy : Server Info</h2>'
			+ '<div id="bodyContent"><table><tr><td>VMs</td><td>2</td></tr></table>'
			+ '</div>' + '</div>';
	var contentString = '<div id="content">'
			+ '<div id="siteNotice">'
			+ '</div>'
			+ '<h2 id="firstHeading" class="firstHeading">Complete Computer Solutions</h2>'
			+ '<div id="bodyContent">Shireen Appt. Maniksha Nagar, Dwarka, Nasik, India'
			+ '</div>' + '</div>';

	var map;
	var stockholm = new google.maps.LatLng(19.993074, 73.803712);
	var ccs = new google.maps.LatLng(19.993074, 73.803712);
	//var bad = new google.maps.LatLng(41.9, 12.483333);

	var image1 = 'images/computer.png';
	function initialize() {
		var map_canvas = document.getElementById('map_canvas');
		var map_options = {
			center : stockholm,
			zoom : 14,
			mapTypeId : google.maps.MapTypeId.ROADMAP

		}
		map = new google.maps.Map(map_canvas, map_options);
		var infowindow = new google.maps.InfoWindow({
			content : contentString
		});

		marker = new google.maps.Marker({
			map : map,
			draggable : true,
			animation : google.maps.Animation.DROP,
			position : ccs,
			icon : image1,
			title : 'Uluru (Ayers Rock)'
		});

		google.maps.event.addListener(marker, 'click', function() {
			infowindow.open(map, marker);
		});

	}

	function toggleBounce(marker) {
		if (marker.getAnimation() != null) {
			marker.setAnimation(null);
		} else {
			marker.setAnimation(google.maps.Animation.BOUNCE);
		}
	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/562f597e0ebcba1803b25daf/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div style="z-index:9999;position: fixed;right:5px;top:-5px" class="hidden-xs"><a href="http://www.c-c-s.in/rest/careers"><img src="${pageContext.request.contextPath}/images/css/ComputerSupportJobs.png" alt="Computer Support Jobs Nashik"></img></div>
	
	 <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="${pageContext.request.contextPath}/images/france.png" alt="C-C-S Logo">
					<div class="g-plusone" data-size="small"></div>

<div class="fb-share-button" data-href="https://www.facebook.com/ccs9767861108" data-layout="button_count"></div>
                </a><!-- Place this tag where you want the +1 button to render. -->

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
				
                    <li><a href="#sectionhead"><i class="fa fa-home"></i> Home</a></li>
					<li><a href="#services-section"><i
							class="fa fa-gear"></i> Services</a></li>
                    <li><a href="#about-section"><i class="fa fa-wrench"></i>
							About Us</a></li>
				

					<li><a href="#pricing-section"><i class="fa fa-rupee"></i>
							Pricing</a></li>
					<li><a href="#contact-section"><i class="fa fa-map-marker"></i>
							Contact</a></li>
					<li><a href="rest/products"><i class="fa fa-shopping-cart"></i>
							Products</a></li>
					<li><a href="rest/careers"><i class="fa fa-graduation-cap"></i> Careers</a></li>
					<li><a href="rest/support"><i class="fa fa-life-ring"></i> Support</a></li>
					<li><a href="rest/blogs"><i class="fa fa-book"></i> Blogs</a></li>
					
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<!--SLIDE CAROUSEL SECTION -->
	<div class="container" id="sectionhead">

		<div class="row">
			<div class="col-lg-8">
				<div class="carousel slide" id="carousel-355835" data-ride="carousel">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-355835"></li>
						<li data-slide-to="1" data-target="#carousel-355835"></li>
						<li data-slide-to="2" data-target="#carousel-355835"></li>
						<li data-slide-to="3" data-target="#carousel-355835"></li>
					</ol>
					<div class="carousel-inner">
						<%-- <div class="item active">
							<img alt="Computer Repair"
								src="${pageContext.request.contextPath}/images/diwali.png" />
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img alt="Computer Repair"
								src="${pageContext.request.contextPath}/images/diwali1.png" />
							<div class="carousel-caption"></div>
						</div> --%>
						<div class="item active">
							<img alt="Computer Repair"
								src="${pageContext.request.contextPath}/images/css/Banner.png" />
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img alt="Tally Support"
								src="${pageContext.request.contextPath}/images/css/Our-Services.jpg" />
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img alt="Computer Sales"
								src="${pageContext.request.contextPath}/images/css/sales_banner.jpg" />
							<div class="carousel-caption"></div>
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
				<h1>Complete Computer Solutions</h1>
				<i class="fa fa-2x fa-phone color-google-plus"></i><font style="font-size: 26px;color: orangered;"> +91 976-786-110-8</font><br/>
				<i class="fa fa-envelope color-facebook"></i><font style="font-size: 18px"><a href="mailto:ccs2288@gmail.com"> ccs2288@gmail.com</a></font><br /><br />
				
				<p>Established on 11/11/2011. We offer a wide range of quality computer repair and sales services for Laptops,Tablets,Desktops Computers, Printers
Everything from broken screens, VIRUSES, laggy computers, upgrades, to data back-up, we do it all.<br/><br/> Best of all, we diagnose your computer for FREE, explain to you what's wrong (in a way that you can understand!) and fix it in a quick, affordable manner. 

          

			</div>
		</div>

		<hr />
		<!--END SLIDE CAROUSEL SECTION -->
 <div id="type" style="text-align:center;height:20px;"></div>
		<div class="container">

			<div class="row">
				<div class="col-md-3  col-sm-6">
					<h3>Computer Sales</h3>
					<img alt="Computer Products" class="img-responsive"
						src="${pageContext.request.contextPath}/images/css/computerProducts.jpg" />
					<p>Anything and Everything in Computers. We provide all kinds of computer peripherals both Hardware and Software.<br/>
					<br/>Hardware:CPU, Desktops, LCD, Laptops, Mouse, Keyboard, Web Cams, RAM, DVD-ROM etc.
<br/><br/>Software: We provide all the necessary software that your business may need. Ranging from basic MS Office to complex Accounting softwares like Tally</p>
					<p>
						<a class="btn btn-default" href="#" role="button">View details
							&raquo;</a>
					</p>
				</div>
				<div class="col-md-3  col-sm-6">
					<h3>Tally Sales & Support</h3>
					<img alt="Tally Support" class="img-responsive"
						src="${pageContext.request.contextPath}/images/css/tallycare.png" />
					<p>We provide Tally ERP software for both startups and big organisations with flexible contract.<br/><br/> We will not only make sure that you have the right Software but also provides you support for it.<br/><br/> We have a expert team which can assist you in setting up the Tally Software.</p>
					<p>
						<a class="btn btn-default" href="#" role="button">View details
							&raquo;</a>
					</p>
				</div>
				<div class="col-md-3  col-sm-6 ">
					<h3>Computer Repairs</h3>
					<img alt="Computer Repair" class="img-responsive"
						src="${pageContext.request.contextPath}/images/css/computer-repair7.jpg" />
					<p>We not only deliver the Computer Parts but also make sure that they are working as expected. If there is a problem. Don't worry. Just give us a call. Our expert engineer, equipped with advance troubleshooting skills will fix it for you.<br/><br/> We provide following support:<br/>Hardware Upgrades<br/>Faulty Hardware<br/>Hard Drive Problem</p>
					<p>
						<a class="btn btn-default" href="#" role="button">View details
							&raquo;</a>
					</p>
				</div>
				<div class="col-md-3  col-sm-6">
					<h3>Virus Protection Plans</h3>
					<img alt="Virus Protection" class="img-responsive"
						src="${pageContext.request.contextPath}/images/css/virus-protection.jpg" />
					<p>We make sure that you machine is Virus free. We provide all types of Anti-Virus Softwares.</p>
					<p>
						<a class="btn btn-default" href="#" role="button">View details
							&raquo;</a>
					</p>
				</div>
			</div>

			<hr>

		</div>
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
						<p class="lead">We provide various kind of Computer Hardware and Software related services</p>
					</div>
				</div>
				<!-- ./ Heading div-->
				<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 ">
				<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter left and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="remote">
							<a href="rest/remote-support" title="Remote Support"><img alt="Remote Support" src="${pageContext.request.contextPath}/images/remote.png"></a>
							<h4>Remote Support</h4>
							<p>We not only provide onsite support but also provide remote support. Our Customer Care Executive/ Technician can fix the problem by takign control of your computer remotely.
							</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter bottom and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="repair">
							<img alt="Computer Repair" src="${pageContext.request.contextPath}/images/repair.png">
							<h4>Computer Repair</h4>
							<p>We provide various computer repair and Maintenance services.
							</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter left and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="virus"  >
							<img alt="Virus Protection" src="${pageContext.request.contextPath}/images/virus.png">
							<h4>Virus Protection</h4>
							<p>Virus in a computer not only makes the computer slow and and makes the computer behave strangely, it can also cause the computer to break down. We provide Virus Plan to suit your requirements.
							</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter bottom and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="speed">
							<img alt="Speed Optimisation" src="${pageContext.request.contextPath}/images/speed.png">
							<h4>Speed Optimisation</h4>
							<p>We optimise the speed of the computer by doing Hardware and Software related changes in your Computer/Laptop. Upgrading RAM, CPU, Video Card to removing unwanted Softwares that eat up your memory
							</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="mail">
							<img alt="Mail & LAN Setup" src="${pageContext.request.contextPath}/images/mail.png">
							<h4>Mail & LAN Setup</h4>
							<p>We not only sale computer, we also provide services to setup LAN in your business. We also can provide you a custom domain and setup a mail server for you.
							</p>
						</div>
					</div>
					
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="data">
							<img alt="Data Recovery" src="${pageContext.request.contextPath}/images/data.png">
							<h4>Data Recovery</h4>
							<p>We provide data recovery for corrupt hard disk
							</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="tally">
							<img alt="Data Recovery" src="${pageContext.request.contextPath}/images/tally.png">
							<h4>Tally Support</h4>
							<p>We provide Tally Support and Services. Right from Installatio and Setup to any support required in using Tally.
							</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6"
						data-scrollreveal="enter right and move 100px, wait 0.6s">
						<div class="text-center servicesicon"  type="cctv">
							<a href="rest/cctv-sales-services" title="CCTV Security Sales and Services"><img alt="Data Recovery" src="${pageContext.request.contextPath}/images/cctv.png"></a>
							<h4>CCTV Security</h4>
							<p>We provide sales and service of Security equipments like CCTV cameras.
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
		<!--ABOUT SECTION -->
		<section id="about-section">
			<div class="wrap-pad">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 ">
						<div class="text-center">
							<h1>
								<i class="fa fa-wrench small-icons bk-color-brown"
									style="color: white"></i>Meet Team
							</h1>
							<p class="lead"></p>
						</div>

					</div>
					<!-- ./ Heading div-->
					<div
						class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 margin-top-100  ">
						<div class="col-md-6"
							data-scrollreveal="enter left and move 100px, wait 0.6s">
							<div class="text-center">
								<p>
									<img class="img-responsive img-thumbnail img-circle"
										src="${pageContext.request.contextPath}/images/team/ibrahim.jpg"
										alt="Ibrahim Merchant">
								</p>
								<h3>Ibrahim Merchant</h3>
								<p>Ibrahim has vast experience in assembling computers. He is a certified Tally support Eng with industry experience.</p>
							</div>
						</div>
						<div class="col-md-6"
							data-scrollreveal="enter bottom and move 100px, wait 0.6s">
							<div class="text-center">
								<p>
									<img class="img-responsive img-thumbnail img-circle"
										src="${pageContext.request.contextPath}/images/team/hakim.png"
										alt="Hakim A German">
								</p>
								<h3>Hakim A German</h3>
								<p>Hakim has vast experience in assembling computers. He has great troubleshooting skills.</p>
							</div>
						</div>
						
					</div>
					<!-- ./ Content div-->
				</div>
			</div>
		</section>
		<!--END ABOUT SECTION -->
		<hr />
		
		<!--END SERVICES SECTION -->
		<hr />
		<!--PRICING SECTION -->
		<section id="pricing-section">
			<div class="wrap-pad">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 "
						data-scrollreveal="enter top and move 100px, wait 0.5s">
						<div class="text-center">
							<h1>
								<i class="fa fa-plane small-icons bk-color-blue"
									style="color: white"></i>Our Pricing Options
							</h1>
							<p class="lead">First Service and Visit is Free. We provide various contracts depending upon the need of the customers.</p>
						</div>
					</div>
					<!-- ./ Heading div-->
					<div
						class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 margin-top-80 ">
						<div id="pricing-table" class="row">
							<div class="col-md-6 col-sm-4"
								data-scrollreveal="enter left and move 100px, wait 0.6s">
								<ul class="plan-main">
									<li class="plan-name">Monthly Maintenance</li>
									<li class="plan-price">&#x20b9; 900</li>
									<li>Computer Cleaning</li>
									<li>Basic Check of Monitor, CPU fan, RAM, Printer etc</li>
									<li>Software Updates</li>
									<li>24x7 Support</li>
									<li>Replace damage parts *</li>
								</ul>
							</div>
							<div class="col-md-6 col-sm-4"
								data-scrollreveal="enter bottom and move 100px, wait 0.6s">
								<ul class="plan-main featured">
									<li class="plan-name">Per Visit</li>
									<li class="plan-price" style="color: #555555">&#x20b9; 400</li>
									<li>Computer Cleaning</li>
									<li>Basic Check of Monitor, CPU fan, RAM, Printer etc</li>
									<li>Software Updates</li>
									<li>24x7 Support</li>
									<li>Replace damage parts *</li>
								</ul>
							</div>
							
						</div>
					</div>
					<!-- ./ Content div-->
				</div>
			</div>
		</section>
		<!--END PRICING SECTION -->
		<hr />
		<!--CONTACT SECTION -->
		<section id="contact-section">
			<div class="wrap-pad">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 "
						data-scrollreveal="enter top and move 100px, wait 0.5s">
						<div class="text-center">
							<h1>
								<i class="fa fa-map-marker small-icons bk-color-black"
									style="color: white"></i>Contact us Now
							</h1>
							<p class="lead">Our office is located in the heart of the city Nashik.<br/> 54, Shirin Apartment, Flat No. 1 & 2, Manekshaw Nagar, Dwarka, Nashik - 422011.</p>

							<div id="map_canvas"></div>
						</div>
					</div>
					<!-- ./ Heading div-->
					<div
						class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1  margin-top-20">
						<div class="col-md-6  col-sm-12"
							data-scrollreveal="enter left and move 100px, wait 0.6s">
							<h3>
								<i class="fa fa-pencil small-icons bk-color-light-blue"
									style="color: white"></i>Send Us Your Query
							</h3>
							<hr />
							<form action="mailto:ccs2288@gmail.com" method="GET">
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
											<textarea name="body" id="body" required="required"
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
								<i class="fa fa-comments small-icons bk-color-red"
									style="color: white"></i>Reach Us Here
							</h3>
							<hr />
							<i class="fa fa-map-marker color-facebook"></i> 54, Shirin Apartment, Flat No. 1 & 2, Manekshaw Nagar, Dwarka, Nashik - 422011<br /> <i class="fa fa-phone color-facebook"></i> +91 976-786-110-8<br /> 
							<i class="fa fa-envelope color-facebook"></i><a href="mailto:ccs2288@gmail.com"> ccs2288@gmail.com</a><br />
							<h3>
								<i class="fa fa-plus small-icons bk-color-green"
									style="color: white"></i>Social Presence
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

		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column"></div>
			</div>
		</div>


		<!--FOOTER SECTION -->
		<footer id="footer">
			<div class="row">
				<div class="col-md-12  col-sm-12">Developed by <a href="http://www.lemongrapes.com" target="_blank" title="Software Development Company, Pune" class="copyright"><img height="20px" src="http://www.lemongrapes.com/img/sidewisesmallcyan.png"></a> | &copy; 2014
					www.c-c-s.in | All Rights Reserved</div>
			</div>
		</footer>
		
		<ul id="social_side_links" class="hidden-xs">
    <li><a href="#"><i class="fa fa-facebook fa-2x color-facebook"></i></a></li>
    <li><a href="#"><i class="fa fa-twitter fa-2x color-twitter"></i></li>
    <li><a href="#"><i class="fa fa-google-plus fa-2x color-google-plus"></i></a></li>
    <li><a href="#"><i class="fa fa-linkedin fa-2x color-linkedin"></i></li>
    <li><a href="#"><i class="fa fa-pinterest fa-2x color-pinterest"></i></a></li>
</ul>
</body>
<script>
$.fn.typer = function(text, options){
    options = $.extend({}, {
        char: ' ',
        delay: 1000,
        duration: 600,
        endless: true
    }, options || text);

    text = $.isPlainObject(text) ? options.text : text;

    var elem = $(this),
        isTag = false,
        c = 0;
    
    (function typetext(i) {
        var e = ({string:1, number:1}[typeof text] ? text : text[i]) + options.char,
            char = e.substr(c++, 1);

        if( char === '<' ){ isTag = true; }
        if( char === '>' ){ isTag = false; }
        elem.html(e.substr(0, c));
        if(c <= e.length){
            if( isTag ){
                typetext(i);
            } else {
                setTimeout(typetext, options.duration/10, i);
            }
        } else {
            c = 0;
            i++;
            
            if (i === text.length && !options.endless) {
                return;
            } else if (i === text.length) {
                i = 0;
            }
            setTimeout(typetext, options.delay, i);
        }
    })(0);
};

            $('#type').typer(['<font style="font-size:18px"><b>First Visit and Service is <font style="color:red">FREE</font>. Call us: +91 976-786-110-8</b></font>' ]);




 $('div.servicesicon').mouseover(function(){

 var type=$(this).attr('type')
 if(type=="data"){
 $(this).find('img').attr('src','images/data_1.png')
 }
 if(type=="mail"){
 $(this).find('img').attr('src','images/mail_1.png')
 }
 if(type=="remote"){
 $(this).find('img').attr('src','images/remote_1.png')
 }
 if(type=="repair"){
 $(this).find('img').attr('src','images/repair_1.png')
 }
 if(type=="speed"){
 $(this).find('img').attr('src','images/speed_1.png')
 }
 if(type=="virus"){
 $(this).find('img').attr('src','images/virus_1.png')
 }
 
  if(type=="tally"){
 $(this).find('img').attr('src','images/tally_1.png')
 }
 if(type=="cctv"){
 $(this).find('img').attr('src','images/cctv_1.png')
 }
 
 
 }); 
 
 $('div.servicesicon').mouseout(function(){
 
 var type=$(this).attr('type')
 if(type=="data"){
 $(this).find('img').attr('src','images/data.png')
 }
 if(type=="mail"){
 $(this).find('img').attr('src','images/mail.png')
 }
 if(type=="remote"){
 $(this).find('img').attr('src','images/remote.png')
 }
 if(type=="repair"){
 $(this).find('img').attr('src','images/repair.png')
 }
 if(type=="speed"){
 $(this).find('img').attr('src','images/speed.png')
 }
 if(type=="virus"){
 $(this).find('img').attr('src','images/virus.png')
 }
 if(type=="tally"){
 $(this).find('img').attr('src','images/tally.png')
 }
 if(type=="cctv"){
 $(this).find('img').attr('src','images/cctv.png')
 }
 
 }); 

</script>
</html>
