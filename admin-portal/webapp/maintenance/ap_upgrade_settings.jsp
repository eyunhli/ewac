<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">AP Upgrade Settings</h3>
                      <div class="formSep">
                        <label><b>
                          <input type="checkbox" value="1" id="enableMultiCast" name="enableMultiCast">
                        Enable MultiCast</b></label>
                      </div>
                      <div class="formSep">
                        <label><b>Start IP</b></label>
                        <input id="startIp1" type="text" value="239" size="10" style="width:60px"/>
						-
						<input id="startIp2" type="text" value="255" size="10" style="width:60px"/>
						-
						<input id="startIp3" type="text" value="0" size="10" style="width:60px"/>
						-
						<input id="startIp4" type="text" value="255" size="10" style="width:60px"/>
                      </div>
                      <div class="formSep">
                        <label><b>End IP</b></label>
                        <input id="endIp1" type="text" value="239" size="10" style="width:60px"/>
	                      -
	                      <input id="endIp2" type="text" value="255" size="10" style="width:60px"/>
	                      -
	                      <input id="endIp3" type="text" value="0" size="10" style="width:60px"/>
	                      -
	                      <input id="endIp4" type="text" value="255" size="10" style="width:60px"/>
                      </div>
                      <div class="formSep">
                        <label><b>Port Number</b></label>
                        <input id="portNumber" type="text" value=" 69" style="width:60px"/>
                      </div>
                    </div>
                  </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit" onclick="apply();" >Apply</button>                  </div>
        </div>
        
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		$.ajax({ url: "config/read.json?name=maintenance_ap_upgrade_settings",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='enableMultiCast'][value="+obj.enableMultiCast+"]").attr("checked",true); 
			var startIp = obj.startIp.split('-')
			$("#startIp1").val(startIp[0]);
			$("#startIp2").val(startIp[1]);
			$("#startIp3").val(startIp[2]);
			$("#startIp4").val(startIp[3]);
			var endIp = obj.endIp.split('-')
			$("#endIp1").val(endIp[0]);
			$("#endIp2").val(endIp[1]);
			$("#endIp3").val(endIp[2]);
			$("#endIp4").val(endIp[3]);
			$("#portNumber").val(obj.portNumber);
      	}}); 
	}  
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={
 					"enableMultiCast":$("input[name='enableMultiCast']:checked").val(),
 					"startIp":$("#startIp1").val()+"-"+$("#startIp2").val()+"-"+$("#startIp3").val()+"-"+$("#startIp4").val(),
 					"endIp":$("#endIp1").val()+"-"+$("#endIp2").val()+"-"+$("#endIp3").val()+"-"+$("#endIp4").val(),
 					"portNumber":$("#portNumber").val()
 				};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_ap_upgrade_settings&type=maintenance&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>
 
