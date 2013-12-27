 <%@ page contentType="text/html; charset=utf-8"%>
 <div class="main_content">
	<div class="row-fluid">
		<div class="span12">
		  <h3 class="heading">Time Settings</h3>
		  <div class="formSep">
		    <span class="span3"><b>Time Zone</b></span>
		    <select id="time_zone" name="time_zone" >
		      <option selected="selected">China</option>
		      <option>American </option>
		      <option>Albania </option>
		      <option>Antigua </option>
		       
		    </select>
		  </div>
		  <div class="formSep">
		    <span class="span3"><b>Country Time</b></span>
		    <%=new java.util.Date()%>
		  </div>
		  <div class="formSep">
		    <span class="span3"><b>NTP Client</b></span>
		    <input type="radio" checked value="enable" id="ntp_client" name="ntp_client">enable
		    <input type="radio" value="disable" id="ntp_client" name="ntp_client">disable
		  </div>
		  <div class="formSep">
		    <span class="span3"><b>Use Custom NTP Server</b></span> <input type="checkbox" value="1" id="ntp_server" name="ntp_server"> 
		  </div>
		  <div class="formSep">
		    <span class="span3"><b>Hostname/IP Address</b></span>
		    <input id="hostname" name="hostname" type="text" value=" "/>
		  </div></div>
		  </div>
		  <div class="form-actions">
			<button class="btn" type="submit">Cancel</button>
			<button id="btnSubmit" class="btn btn-primary" type="submit" onclick="apply();">Apply</button>                 
		  </div>
		</div>
</div>

<script type="text/javascript">
	 
	$.ajaxSetup ({
		cache: false 
	});
	
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_time",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#time_zone").val(obj.time_zone);
			$("input[name='ntp_client'][value="+obj.ntp_client+"]").attr("checked",true); 
			$("#ntp_server").attr("checked",obj.ntp_server);
			$("#hostname").val(obj.hostname);
      	}}); 
	}  
	read();
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={"time_zone":$("#time_zone").val(),
 					"ntp_client":$("input[name='ntp_client']:checked").val(),
 					"ntp_server":$("#ntp_server").attr("checked"),
 					"hostname":$("#hostname").val()};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_time&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
</script>