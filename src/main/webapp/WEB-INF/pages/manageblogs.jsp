
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="<c:url value="/scripts/ckeditor.js"/>"></script>
<script src="<c:url value="/scripts/sample.js"/>"></script>
<!-- Button trigger modal -->

	
	
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

<h3>Manage Blogs</h3>
<ol class="breadcrumb">
	<li><a href="#">Home</a></li>
	<li class="active">Manage Blogs</li>
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