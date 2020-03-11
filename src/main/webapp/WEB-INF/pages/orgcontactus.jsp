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

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-6 column" >
				<address> <strong contenteditable="true">Twitter, Inc.</strong><br /> 795 Folsom Ave, Suite 600<br /> San Francisco, CA 94107<br /> <abbr title="Phone">P:</abbr> (123) 456-7890</address>
					<form role="form">
						<div class="form-group">
							 <label for="exampleInputEmail1">Name</label><input type="text" placeholder="John Doe" class="form-control" id="exampleInputEmail1" />
						</div>
						<div class="form-group">
							 <label for="exampleInputPassword1">Email</label><input type="email" placeholder="John.Doe@abc.com" class="form-control" id="exampleInputPassword1" />
						</div>
						<div class="form-group">
							 <label for="exampleInputPassword1">Message Subject</label><input type="email"  class="form-control" id="exampleInputPassword1" />
						</div>
						<div class="form-group">
							 <label for="exampleInputPassword1">Message</label>
							 <textarea  class="form-control" rows="5"></textarea>
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