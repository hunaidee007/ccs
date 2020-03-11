<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin Login</title>

    <!-- Bootstrap core CSS -->
<link href="<c:url value="/styles/bootstrap.min.cerulean.css" />" rel="stylesheet" />
<!--script src="https://apis.google.com/js/platform.js" async defer></script-->
<!--meta name="google-signin-client_id" content="494495385020-j6g5g5g52vfmrrjurl8eq8gkg7tsapjj.apps.googleusercontent.com"-->
    <!-- Custom styles for this template -->
	<link href="<c:url value="/styles/signin.css" />" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	
	<script type="text/javascript">
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
        var authorizeDiv = document.getElementById('authorize-div');
        if (authResult && !authResult.error) {
          // Hide auth UI, then load client library.
          authorizeDiv.style.display = 'none';
          loadGmailApi();
        } else {
          // Show auth UI, allowing the user to initiate authorization by
          // clicking authorize button.
          authorizeDiv.style.display = 'inline';
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
       * Load Gmail API client library. List labels once client library
       * is loaded.
       */
      function loadGmailApi() {
        gapi.client.load('gmail', 'v1', listLabels);
		
		
		
      }
	  
	  function draftCreated(){
		console.log("draft creaetd")
	  }

	
      /**
       * Print all Labels in the authorized user's inbox. If no labels
       * are found an appropriate message is printed.
       */
      function listLabels() {
        /*var request = gapi.client.gmail.users.labels.list({
          'userId': 'me'
        });

        request.execute(function(resp) {
          var labels = resp.labels;
          appendPre('Labels:');

          if (labels && labels.length > 0) {
            for (i = 0; i < labels.length; i++) {
              var label = labels[i];
              appendPre(label.name)
            }
          } else {
            appendPre('No Labels found.');
          }
        });*/
		
		 /*var base64EncodedEmail = btoa("Hi this is a draft mail");
		 var request = gapi.client.gmail.users.drafts.create({
		'userId': 'me',
		'draft': {
		  "id": "123123",
		  'message': {
			'raw': base64EncodedEmail
		  }
		}
	  });
	  request.execute(draftCreated);*/
	  

  
   /*var request = gapi.client.gmail.users.drafts.create({
    'userId': 'me',
      'message': {
        'raw': 'aGkgdGhpcyBpcyBtZXNzYWdlIGZyb20gaHVuYWlk'
    }
  });*/
     var request = gapi.client.gmail.users.messages.send({
    'userId': 'me',
      'message': {
        'raw': 'aGkgdGhpcyBpcyBtZXNzYWdlIGZyb20gaHVuYWlk'
    }
  });
  request.execute(draftCreated);

		
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
    <script src="https://apis.google.com/js/client.js?onload=checkAuth">
    </script>
	
	
	
  </head>

  <body>
  <div id="authorize-div" style="display: none">
      <span>Authorize access to Gmail API</span>
      <!--Button for the user to click to initiate auth sequence -->
      <button id="authorize-button" onclick="handleAuthClick(event)">
        Authorize
      </button>
    </div>
    <pre id="output"></pre>
  
  
<div class="g-signin2" data-onsuccess="onSignIn"></div>
    <div class="container">

      <form class="form-signin" action="ccslogin.html">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="username" class="sr-only">User Name</label>
        <input type="text" id="username" class="form-control" placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->


   <script type="text/javascript"
	src="<c:url value="/scripts/jquery-1.10.2.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
<script src="<c:url value="/scripts/bootstrap.js"/>"></script>
  </body>
</html>
