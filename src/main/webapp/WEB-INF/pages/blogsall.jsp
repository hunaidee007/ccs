
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
	
	
	function saveBlog(){
	
		 var text=CKEDITOR.instances.editor.getData();
		 $('#blogtext').val(text);
		 //alert($('#blogtext').val())
		 //alert(document.getElementById('blogtext'));
		 document.getElementById('blogForm').action = "saveBlog";
	     document.getElementById('blogForm').submit();
		 
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
<div class="modal fade" id="mailModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">


		<div class="modal-content">
		<form class="form-signin" id="blogForm"  method="post"
			>
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Reminder Mail</h4>
			</div>
			<div class="modal-body">
				<input type="text" id="title" name="title" class="form-control"
						placeholder="Title : Computer Repair" required /> 
				<input id="url" type="text" 
						name="url" class="form-control" placeholder="URL: computer-repair" required />
				<input type="hidden"  id="blogtext" name="blogtext" cols="50" rows="10"/>
						
				<div style="margin-top: 10px;"></div>
				<div id="editor" class="mailTextDiv">
					


				</div>


			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" onclick="saveBlog();">Save Blog</button>
			</div>
			</form>
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
				<th>Title</th>
				<th>URL</th>
				<th>Created Date</th>
				<th>Author</th>
				<th colspan="2">Tools</th>
				
				



			</tr>
		</thead>
		<tbody>
			<c:forEach items="${blogs}" var="blog">
				<tr >
					<td >${blog.title}</td>
					<td>${blog.url}</td>
					<td>${blog.createdDate}</td>
					<td>${blog.author}</td>
					
					<td><a href="delete?id=${blog.id}">delete</td>
				</tr>
			</c:forEach>
		</tbody>


	</table>

</div>

<button class="btn btn-primary" type="button" data-toggle="modal"
	data-target="#mailModal">Add Blog</button>

<script>
	initSample();
</script>