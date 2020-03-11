
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
label, input { display:block; }
input.text { margin-bottom:12px; width:95%; padding: .4em; }
fieldset { padding:0; border:0; margin-top:25px; }

  .portlet-toggle {
    position: absolute;
    top: 50%;
    right: 0;
    margin-top: -8px;
  }

  .portlet-placeholder {
    border: 1px dotted black;
    margin: 0 1em 1em 0;
    height: 100px;
  }
.ui-state-highlight { height: 2.5em; line-height: 1.2em; } 
</style>
<script>
	var tabTitle = $("#tab_title"), tabContent = $("#tab_content"), tabTemplate = "<li><a href='&{href}'>&{label}</a></li>", tabCounter = 1;
	var tabs;
	$(document).ready(function() {
	
//alert('asasd');
	// $( "#sortable" ).sortable();
    //$( "#sortable" ).disableSelection();
	
	
	tabs = $('#tabs').tabs({ collapsible: true });
	
	   $( "#dialog-message" ).dialog({
	    autoOpen: false,
		  modal: true,
		  buttons: {
			Yes: function() {
			  $( this ).dialog( "close" );
			},
			No: function() {
			  $( this ).dialog( "close" );
			}
		  }
		});
		
		$( "#dialog-form" ).dialog({
	    autoOpen: false,
		height: 400,
        width: 350,
		  modal: true,
		  buttons: {
			Save: function() {
			  $( this ).dialog( "close" );
			}
		  }
		});
	 
		$("#price").spinner({
			min : 5,
			max : 2500,
			step : 5,
			start : 1000,
			numberFormat : "C"
		});
		updateSubCategory();
		updateMenuCard();

	});

	function updateMenuCard() {
	$( "div" ).remove( ".ui-tabs-panel" );
	$('.ui-tabs-nav').empty();
	tabs = $('#tabs').tabs({ collapsible: true });
	tabs.find( ".ui-tabs-nav" ).sortable({
      axis: "x",
      stop: function() {
        tabs.tabs( "refresh" );
      }
    });

		$.ajax({
					type : "POST",
					headers : {
						"Content-Type" : "application/json"
					},
					url : 'createMenu',
					dataType : "json",
					data : '3',
					success : function(response) {
						//alert(response);				 
						$.each(response,function() {
											//alert(this);
											$.each(this,function(idx, obj) {
											//Category Name
											var category = obj.name;
											addTab(category);
												$.each(obj.subCategoryMasterPojos,
												function(idx,obj) {
													//Sub Category Name
													var subcategory = obj.name
													$('#tabs-'+ category)
															.append(
																	'<div class="portlet" style="margin: 0 1em 1em 0;padding: 0.3em;" id="sub-'+subcategory+'"><div class="portlet-header" id="portlet-header'+subcategory+'" style=" padding: 0.2em 0.3em; margin-bottom: 0.5em; position: relative;">'
																			+ subcategory
																			+ '</div></div>');
													$('#sub-'+ subcategory)
															.append(
																	'<div class="portlet-content" id="portlet-content-'+subcategory+'" style=" padding: 0.4em;"><ul id="sortable-'+ category+ '-'+ subcategory
																			+ '" style="list-style-type: none; margin: 0; padding: 0; width: 100%;"></ul></div>');
													$( ".column" ).sortable({
													  connectWith: ".column",
													  handle: ".portlet-header",
													  cancel: ".portlet-toggle",
													  placeholder: "portlet-placeholder ui-corner-all"
													});
												 
													$( ".portlet" )
													  .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
													  .find( '#portlet-header'+subcategory)
														.addClass( "ui-widget-header ui-corner-all" )
														.prepend( '<span id="portlet-toggle-'+subcategory+'" class="ui-icon ui-icon-minusthick portlet-toggle"></span>');
													$( '#portlet-toggle-'+subcategory ).click(function() {
													 $( this ).toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
													 $('#portlet-content-'+subcategory ).toggle();
													});	
												 
																															
													$("#sortable-"+ category+ '-'+ subcategory).sortable({placeholder : "ui-state-highlight"});
													$("#sortable-"+ category+ '-'+ subcategory).disableSelection();

													$.each(obj.itemPojos,function(idx,obj) {
																		//Item Name
																		//alert(obj.name + ": " + obj.price);

														$('#sortable-'+ category+ '-'+ subcategory)
																	.append(
																			'<li class="ui-state-default" style="margin: 0 3px 3px 3px; padding: 0.4em;font-size: 1.4em; "><span class="ui-icon ui-icon-arrowthick-2-n-s" style="position: absolute; margin-left: -1.3em;"></span><span class="ui-icon ui-icon-trash" style="position: absolute; margin-left: 21.8em;" onclick="deleteItem();"></span><span class="ui-icon ui-icon-pencil" style="position: absolute; margin-left: 21em;" onclick="edit();"></span>'+ obj.name+ '<div style="float:right">'+ obj.price+ '<font style="font-size:12px"> '+ obj.packaging+ '</font></div></li>');

																	});	

												});

										});

							});
					},
					error : function(response) {
						alert('No sub category found');
					}
				});
				
				$( ".selector" ).tabs( "option", "active", 1 );
	}
	function addTab(title) {
		var label = title || "Tab " + tabCounter, id = "tabs-" + title, li = $(tabTemplate
				.replace(/&\{href\}/g, "#" + id).replace(/&\{label\}/g, label)), tabContentHtml = ''
				|| "Tab " + tabCounter + " content.";

		tabs.find(".ui-tabs-nav").append(li);
		tabs.append('<div id="' + id + '" class="column" style=" width: 420px; float: left;  padding-bottom: 100px;"></div>');
		tabs.tabs("refresh");
		tabCounter++;
	}
	function updateSubCategory() {

		$.ajax({
			type : "POST",
			headers : {
				"Content-Type" : "application/json"
			},
			url : 'getSubCategory',
			dataType : "json",
			data : $('#category').val(),
			success : function(response) {
				$('#subcategory').find('option').remove();
				$.each(response, function(idx, obj) {

					$('#subcategory').append(
							'<option value=' + obj.id + '>' + obj.name
									+ '</option>');

				});
			},
			error : function(response) {
				alert('No sub category found');
			}
		});

	}

	function addItem() {

		var request = '{ "subCategoryId":"' + $('#subcategory').val()
				+ '", "name":"' + $('#itemName').val() + '", "price":"'
				+ $('#price').val() + '", "packaging":"'
				+ $('#packaging').val() + '"}'
	//	alert(request);
		$.ajax({
			type : "POST",
			headers : {
				"Content-Type" : "application/json"
			},
			url : 'addItem',
			dataType : "json",
			data : request,
			success : function(response) {
				updateMenuCard();
			},
			error : function(response) {
				alert('No sub category found');
			}
		});

	}
	
	function deleteItem(){
	 //$("#dialog-message" ).open();
	  $( "#dialog-message" ).dialog( "open" );
	}
	
function edit(){
 $( "#dialog-form" ).dialog( "open" );
}

function hideContent(id){
alert(id);
$("#"+id).toggle();
}
</script>


<h3>Menu Items</h3>
<ol class="breadcrumb">
  <li><a href="#">Home</a></li>
  <li class="active">Menu Items</li>
</ol>
<div class="row clearfix">
				<div class="col-md-6 column">
					<form role="form">
						<div class="form-group">
							 <label for="exampleInputEmail1">Category</label><select class="form-control" id="category" name="category"
			onchange="updateSubCategory()">
				<c:forEach
					items="${userDetail.companyDetail.businessTypeMaster.categoryMasters}"
					var="categoryMaster" varStatus="count">
					<option value="${categoryMaster.categoryMasterId}">
						${categoryMaster.name}</option>
				</c:forEach>
		</select>
						</div>
						<div class="form-group">
							 <label for="exampleInputPassword1">Sub Category</label>
							 <select id="subcategory" class="form-control" name="subcategory">

							</select>
							 
						</div>
						<div class="form-group">
							 <label for="exampleInputEmail1">Item Name</label>
							 <input type="text" class="form-control" id="itemName" name="itemName" />
						</div>
						<div class="form-group">
							 <label for="exampleInputEmail1">Packaging</label>
							<select id="packaging" class="form-control" >
									<option>Per piece</option>
									<option>Per kg</option>
									<option>Per ltr</option>
									<option>per plate</option>
									<option>Other</option>
							</select>
						</div>
						<div class="form-group">
							 <label for="exampleInputEmail1">Price (&#8377)</label>
							 <input type="text" class="form-control" id="price" name="price" value="5" />
						</div>
						 <button type="button" onclick="addItem();" class="btn btn-default">Submit</button>
					</form>
				</div>
				<div class="col-md-6 column">
				
				<div id="tabs">

				<ul>asasd</ul>

				</div>
					<div class="tabbable" id="tabs-636777">
						<ul class="nav nav-tabs">
							<li class="active">
								<a href="#panel-751610" data-toggle="tab">Section 1</a>
							</li>
							<li>
								<a href="#panel-204046" data-toggle="tab">Section 2</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-751610">
								<p>
									I'm in Section 1.
								</p>
							</div>
							<div class="tab-pane" id="panel-204046">
								<p>
									Howdy, I'm in Section 2.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>