<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html lang="en">

<head>
	
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-67565255-1', 'auto');
  ga('send', 'pageview');


  
</script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Ibrahim Merchant">

    <title>${blog.title}</title>

    <!-- Bootstrap Core CSS -->
<link href="<c:url value="/styles/bootstrap.min.cerulean.css" />" rel="stylesheet" />
<link rel='shortcut icon' href='../favicon.ico' type='image/x-icon' />
<style>

body {
    padding-top: 70px; /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
}

footer {
    margin: 50px 0;
}
</style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- Place this tag in your head or just before your close body tag. -->
<script src="https://apis.google.com/js/platform.js" async defer></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

</head>

<body>

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
					<div class="g-plusone" data-href="http://www.c-c-s.in/" data-size="small"></div>

<div class="fb-share-button" data-href="http://www.c-c-s.in/" data-layout="button_count"></div>
                </a><!-- Place this tag where you want the +1 button to render. -->

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
				
                    <li><a href="/#sectionhead"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="/#about-section"><i class="fa fa-wrench"></i>
							About Us</a></li>
				

					<li><a href="/#pricing-section"><i class="fa fa-plane"></i>
							Pricing</a></li>
					<li><a href="/#contact-section"><i class="fa fa-tint"></i>
							Contact</a></li>
					<li><a href="/rest/blogs"><i class="fa fa-book"></i> Blogs</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8">

                <!-- Blog Post -->

                <!-- Title -->
                <h1>${blog.title}</h1>

                <!-- Author -->
                <p class="lead">
                    by ${blog.author}
                </p>

                <hr>

                <!-- Date/Time -->
                <p><span class="glyphicon glyphicon-time"></span> Posted on ${blog.createdDate}</p>

                

                <hr>

               <p>${blog.blogText}</p>
                <hr>

                <!-- Blog Comments -->

               

                

              <div class="fb-share-button" data-href="http://www.c-c-s.in/rest/${blog.url}" data-layout="button_count"></div>
			  
			  <div class="g-plusone" href="http://www.c-c-s.in/rest/${blog.url}" data-size="small"></div>

            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <script>
  (function() {
    var cx = '014982644600477556251:hqxbnjwgn7e';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:search></gcse:search>

                    <!-- /.input-group -->
                </div>
                
                 
				<div class="well">
                    <h4>Our Services</h4>
					<div class="row">
					<div class="col-md-12 col-sm-12">
					<img src="${pageContext.request.contextPath}/images/ccslogo.gif" alt="">
					We offer a wide range of quality computer repair and sales services for Laptops,Tablets,Desktops Computers, Printers.
					
				<i class="fa fa-2x fa-phone color-google-plus"></i><font style="font-size: 26px;color: orangered;"> +91 976-786-110-8</font><br/>
				<i class="fa fa-envelope color-facebook"></i><font style="font-size: 18px"><a href="mailto:ccs2288@gmail.com"> ccs2288@gmail.com</a></font>
					
					<br/>
					<br/>
					</div>
					
					</div>
                    <div class="row">
					
                        <div class="col-md-4  col-sm-6">
                            <img src="${pageContext.request.contextPath}/images/virus.png"/>
							<small><b>Virus Protection</b></small> 
							</div>
                        
                    
					
                         <div class="col-md-4  col-sm-6">
                            <img src="${pageContext.request.contextPath}/images/repair.png"/>
							<small><b>PC Repair</b></small> 
                        </div>
                        
                    
					
                         <div class="col-md-4  col-sm-6">
                            <img src="${pageContext.request.contextPath}/images/speed.png"/>
							<small><b>Speed Increase</b></small> 
                        </div>
                     </div>  
					 <br/>
<div class="row">
                        <div class="col-md-4  col-sm-6">
                            <img src="${pageContext.request.contextPath}/images/remote.png"/>
							<small><b>Remote Support</b></small> 
                        </div>
                        
                    
					
                         <div class="col-md-4  col-sm-6">
                            <img src="${pageContext.request.contextPath}/images/mail.png"/>
							<small><b>Mail & LAN</b></small> 
                        </div>
                        
                    
					
                         <div class="col-md-4  col-sm-6">
                            <img src="${pageContext.request.contextPath}/images/data.png"/>
							<small><b>Data Recovery</b></small> 
                        </div>
                     </div>  					 
                    
                    <!-- /.row -->
                </div>
<!-- Blog Categories Well -->
                <div class="well">
                    <h4>All Blogs</h4>
                    <div class="row">
                        <div class="col-lg-8">
                            <ul class="list-unstyled">
							<c:forEach items="${blogs}" var="blog">
							<li><a href="/rest/blogs/${blog.url}">${blog.title}</a>
							<hr/>
                                </li>
							</c:forEach>
                               
                            </ul>
                        </div>
                        
                    </div>
                    <!-- /.row -->
                </div>
               

               

            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!--FOOTER SECTION -->
		<footer id="footer">
			<div class="row">
				<div class="col-md-12  col-sm-12">Developed by <a href="http://www.lemongrapes.com" target="_blank" title="Software Development Company, Pune" class="copyright"><img height="20px" src="http://www.lemongrapes.com/img/sidewisesmallcyan.png"></a> | &copy; 2014
					www.c-c-s.in | All Rights Reserved</div>
			</div>
		</footer>

    </div>
    <!-- /.container -->

<script type="text/javascript"
	src="<c:url value="/scripts/jquery-1.10.2.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
<script src="<c:url value="/scripts/bootstrap.js"/>"></script>

</body>

</html>
