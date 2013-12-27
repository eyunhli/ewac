<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
	<div class="row-fluid">
		<div class="span4">
			<form id="Working Area" class="form-horizontal" action="ap_wizard_add.html">
				<fieldset title="Working Area">
					<h3 class="heading">Working Area</h3>
					<div class="control-group">
						<label for="s_building" class=""><strong>Building:</strong></b></label>
						<div class="">
							<input type="text" id="building" name="building" class="span10" value="吉隆坡双子塔A座" />
						</div>
					</div>
					<div class="control-group">
						<label for="s_floor" class=""><strong>Floor:</strong></b></label>
						<div class="">
							<input type="text" id="floor" name="floor" class="span10" value="32" />
						</div>
					</div>
					<div class="control-group">
						<label for="s_name" class=""><strong>Name:</strong></b></label>
						<div class="">
							<input type="text" id="name" name="name" class="span10" value="3201" />
						</div>
					</div>
					<div class="formSep control-group well">
						<label for="s_floor" class="control-label"></b></label>
						<div class="">
							<img src="/img/ap_brand_1.jpg" />
						</div>
					</div>
					<span>connect your AP and press <em>Config</em> to process config</span>
					<button id="next_ap" type="button" onclick="add()" class="finish btn btn-primary">
						<i class="icon-wrench icon-white"></i> Config
					</button>
				</fieldset>
			</form>
		</div>
		<div class="span4">
			<fieldset title="Information Panel">
				<h3 class="heading">Information Panel</h3>
				<label for="s_floor" class="control-label"><Strong>Progress</Strong></b></label>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label">Connecting ...... Done!</b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 100%" class="bar"></div>
					</div>
					<p style="text-align: right">
						Done &nbsp;<span class="percent icon-check"></span>
					</p>
				</div>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label">Authenticating ......</b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 100%" class="bar"></div>
					</div>
					<p style="text-align: right">
						Done &nbsp;<span class="percent icon-check"></span>
					</p>
				</div>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label">Set SSID ......</b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 100%" class="bar"></div>
					</div>
					<p style="text-align: right">
						Done &nbsp;<span class="percent icon-check"></span>
					</p>
				</div>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label"><em>Set Security ......</em></b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 85%" class="bar"></div>
					</div>
				</div>
			</fieldset>
		</div>
	</div>

<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_general",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#name").val(obj.name);
			$("#region").val(obj.region);
			$("#location_code").val(obj.location_code);
      	}}); 
	}  
	function add() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={"ip":"192.1681.23.10",
 					"building":$("#building").val(),
 					"floor":$("#floor").val(),
 					"name":$("#name").val()};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "/ac/ap/save.json",                                    
    		data: content, 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>

