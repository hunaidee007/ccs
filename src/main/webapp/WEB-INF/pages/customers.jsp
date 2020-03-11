
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="<c:url value="/scripts/ckeditor.js"/>"></script>
<script src="<c:url value="/scripts/sample.js"/>"></script>
<!-- Button trigger modal -->

	   <script src="https://apis.google.com/js/client.js?onload=checkAuth"></script>
	   
	   
	<script type="text/javascript">
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
         // loadGmailApi();
        } else {
          // Show auth UI, allowing the user to initiate authorization by
          // clicking authorize button.
        }
      }
	

      /**
       * Load Gmail API client library. List labels once client library
       * is loaded.
       */
      function loadGmailApi() {
        gapi.client.load('gmail', 'v1', listLabels);
		
		
		
      }
	  
	  function draftCreated(drafts){
		console.log(drafts.id)
		 var request = gapi.client.gmail.users.drafts.send({
			'userId': 'me',		
			'id': drafts.id
		});
		
		  request.execute(sendmail);

	  }
function sendmail(resp){
console.log(resp)
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
	  

  
   var request = gapi.client.gmail.users.drafts.create({
    'userId': 'me',
      'message': {
        'raw': 'RnJvbTogY2NjczIyODhAZ21haWwuY29tDQpUbzogaHVuYWlkZWUwMDdAZ21haWwuY29tDQpNZXNzYWdlLUlEOiA8MTQyNjM4NjI5LjAuMTQ0MTk4OTk2NzM5MS5KYXZhTWFpbC5TOTgxNTQ5QFBCMDBQQk5QPg0KU3ViamVjdDogQWN0dWFsDQpNSU1FLVZlcnNpb246IDEuMA0KQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PXVzLWFzY2lpDQpDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA3Yml0DQoNCkFjdHVhbCBNYWls'
    }
  });
     /*var request = gapi.client.gmail.users.messages.send({
    'userId': 'me',
      'message': {
        'raw': 'RnJvbTogY2NjczIyODhAZ21haWwuY29tDQpUbzogaHVuYWlkZWUwMDdAZ21haWwuY29tDQpNZXNzYWdlLUlEOiA8MTQyNjM4NjI5LjAuMTQ0MTk4MzQxMTMyMy5KYXZhTWFpbC5TOTgxNTQ5QFBCMDBQQk5QPg0KU3ViamVjdDogVGVzdCBNYWlsDQpNSU1FLVZlcnNpb246IDEuMA0KQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PXVzLWFzY2lpDQpDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA3Yml0DQoNCjxCPkhpPC9IST4'
    }
  });*/
  request.execute(draftCreated);
  

 /* var request = gapi.client.gmail.users.drafts.list({
    'userId': 'me'
  });
  request.execute(function(resp) {
    var drafts = resp.drafts;
    console.log(drafts);
  });
}*/
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
	
	
<script>
	
	function addPerson(){
	$('#name').val('')
		$('#surname').val('')
		$('#email').val('')
		$('#phone').val('')
		
		$('#myModal1').modal('show')
	}
	function editPerson(name,surname,email,phone){
		$('#myModal1').modal('show')
		$('#name').val(name)
		$('#surname').val(surname)
		$('#email').val(email)
		$('#phone').val(phone)
	}
	
	
	function mailPerson(name,surname,email,phone){
	$('#mailModal').modal('show')
	$('#mailTo').val(email)
	
	}
	
	
	function sendMail(){
	
		 
		 $('#mailText').val($('.mailTextDiv').html());
		 document.getElementById('mailForm').action = "sendMail.html";
	     document.getElementById('mailForm').submit();
		 //alert($('.mailTextDiv').html())
	}
</script>

<style>
#myModal1 input[type=text], input[type=email] {
	margin-top: 10px;
}



#mailModal input[type=text], input[type=email] {
	margin-top: 10px;
}
</style>

<!-- Modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">

		<s:form class="form-signin" action="saveCustomers.html" method="post"
			commandName="personForm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Customers Details</h4>
				</div>
				<div class="modal-body">

					<input type="text" id="name" name="name" class="form-control"
						placeholder="Name" required /> <input id="surname" type="text"
						name="surname" class="form-control" placeholder="Surname" required />
					<input id="email" type="email" name="email" class="form-control"
						placeholder="Email" required /> <input id="phone" type="text"
						name="phone" class="form-control" placeholder="Phone" required />

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</s:form>
	</div>
</div>



<!-- Modal -->
<div class="modal fade" id="mailModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">


		<div class="modal-content">
		<s:form class="form-signin" id="mailForm" action="sendMail.html" method="post"
			commandName="personForm">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Reminder Mail</h4>
			</div>
			<div class="modal-body">
				<input type="text" id="mailTo" name="mailTo" class="form-control"
						placeholder="To : abc@abc.com" required /> 
				<input id="mailSubject" type="text" value="Outstanding Balance - Complete Computer Solution"
						name="mailSubject" class="form-control" placeholder="Subject" required />
						<input type="hidden" id="mailText" name="mailText">
				<div style="margin-top: 10px;"></div>
				<div id="editor" class="mailTextDiv">
					<p>Respected Sir/Madam,</p>

<p>I hope this note finds you well.</p>

<p>Your Total outstanding balance is Rs. 100.</p>

<p>I request you to clear the balance at the earliest.</p>

<p>Thanks!</p>

<p>Ibrahim Merchant</p>

<p>Complete Computer Solutions <a href="www.c-c-s.in">www.c-c-s.in</a></p>


				</div>


			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" onclick="loadGmailApi()">Send Mail</button>
			</div>
			</s:form>
		</div>

	</div>
</div>

<h3>Manage Customers</h3>
<ol class="breadcrumb">
	<li><a href="#">Home</a></li>
	<li class="active">Manage Customers</li>
</ol>
<div class="table-responsive"><a href="#">
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>Name</th>
				<th>Surname</th>
				<th>Email</th>
				<th>Phone</th>
				<th colspan="2">Tools</th>
				
				



			</tr>
		</thead>
		<tbody>
			<c:forEach items="${persons}" var="person">
				<tr >
					<td >${person.name}</td>
					<td>${person.surname}</td>
					<td>${person.email}</td>
					<td>${person.phone}</td>
					<td onclick="editPerson('${person.name}','${person.surname}','${person.email}','${person.phone}')"><i class="fa fa-edit fa-2x color-edit"></i></td>
					<td onclick="mailPerson('${person.name}','${person.surname}','${person.email}','${person.phone}')"><i class="fa fa-envelope  fa-2x color-envelope "></i></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>

</div>

<button class="btn btn-primary" type="button" onclick="addPerson()">Add</button>

<button class="btn btn-primary" type="button" data-toggle="modal"
	data-target="#mailModal">Mail</button>

<script>
	initSample();
</script>