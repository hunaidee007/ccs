
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(document).ready(function() {
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true
		});

		$('#datetimepicker2').datetimepicker({
			datepicker : false,
			format : 'H:i',
			hours12 : 'true'
		});
		$('#datetimepicker3').datetimepicker({
			datepicker : false,
			format : 'H:i',
			hours12 : 'true'
		});
		$("#radio").buttonset();

		$("#check").button();
		$("#format").buttonset();
	});
</script>

<h3>Basic Configuration</h3>
<ol class="breadcrumb">
  <li><a href="#">Home</a></li>
  <li class="active">Basic Configuration</li>
</ol>
	<form class="form-horizontal" role="form">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Company
				Name</label>
			<div class="col-sm-10">
				<input type="text" value="${userDetail.companyDetail.title}"
					class="form-control" id="inputEmail3" placeholder="The Nawabs">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">Timings</label>
			<div class="col-sm-10">

				<input type="time"  class="" 
					id="datetimepicker2" name="datetimepicker2" />  to <input  class="" type="time" id="datetimepicker3"
					name="datetimepicker3" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Establishment
				date</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="datepicker"
					placeholder="05/10/1990">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Business Type</label>
			<div class="col-sm-10">
			
			<select  class="form-control">
			<option>Restuarant
			</option>
			<option>Super Market
			</option>
			</select>
				
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Type</label>
			<div class="col-sm-10">
			
			<div class="radio">
			  <label>
				<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
				VEG
			  </label>
			</div>
			<div class="radio">
			  <label>
				<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				NON
						VEG
			  </label>
			</div>
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Cuisine</label>
			<div class="col-sm-10">
			
			<div class="checkbox">
			  <label>
				<input type="checkbox" value="">
				Chinese
			  </label>
			</div>
			<div class="checkbox">
			  <label>
				<input type="checkbox" value="">
				North Indian
			  </label>
			</div>
			<div class="checkbox">
			  <label>
				<input type="checkbox" value="">
				Maharashtrian
			  </label>
			</div>
			<div class="checkbox">
			  <label>
				<input type="checkbox" value="">
				Gujarati
			  </label>
			</div>
			<div class="checkbox">
			  <label>
				<input type="checkbox" value="">
				South Indian
			  </label>
			</div>
			
			
			<div class="checkbox disabled">
			  <label>
				<input type="checkbox" value="" disabled>
				Option two is disabled
			  </label>
			</div>
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">About Us</label>
			<div class="col-sm-10">
				<textarea class="form-control" placeholder="Mention something about your restaurant" rows="3">${userDetail.companyDetail.aboustUs}</textarea>
			</div>
		</div>
			<c:forEach items="${userDetail.companyDetail.companyAddressDetails}"
			var="companyAddressDetail" varStatus="count">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Shop/Flat No</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.flatShopNo}" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Complex/Mall Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.complexMallName}" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Road/Street</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.roadStreet}" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Landmark</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.landmark}" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Area</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.area}" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">City</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.city}" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Phone</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.phone}" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Mobile</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="1123"
					value="${companyAddressDetail.mobile}" />
			</div>
		</div>
		</c:forEach>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-primary">Save</button>
			</div>
		</div>
	</form>


<!--/span-->

