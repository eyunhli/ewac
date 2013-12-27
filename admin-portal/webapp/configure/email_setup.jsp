<%@ page contentType="text/html; charset=utf-8"%>
 <div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Email Configuration</h3>
                      <div class="formSep">
                        <span class="span3"><b>Server Address</b></span>
                        <input type="text" id="serverAddress" name="serverAddress" />
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Port</b></span>
                        <input type="text" id="port" name="port" value="25"/>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Sender E-Mail Address</b></span>
                        <input type="text" id="emailAddress" name="emailAddress" value=" "/>
                      </div>
                      <div class="formSep">
                      <span class="span3"><b>Authentication Required</b></span>
                        <input type="checkbox" value="1" onclick="auth(this)" id="authenticationRequired" name="authenticationRequired">
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>User Name</b></span>
                        <input type="text" value=" " id="username" name="username" disabled/>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Password</b></span>
                        <input type="text" value=" " id="password" name="password" disabled/>
                      </div>
                      <div class="form-actions">
                        <button class="btn" type="submit">Cancel</button>
                        <button class="btn btn-primary" onclick="apply();" type="submit">Apply</button>
                      </div>
                    </div>
                  </div>
        </div>
<script type="text/javascript"> 
	$.ajaxSetup ({
		cache: false 
	});
	function auth(ar){
		if($(ar).attr("checked")==null){
			$("#username").attr("disabled",true);
			$("#password").attr("disabled",true);
			$("#username").val(" ");
			$("#password").val(" ");
		}else{
			$("#username").attr("disabled",false);
			$("#password").attr("disabled",false);
			$("#username").val("");
			$("#password").val("");
		}
	}
	read();
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_email_setup",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='authenticationRequired'][value="+obj.authenticationRequired+"]").attr("checked",true); 
			$("#serverAddress").val(obj.serverAddress);
			$("#port").val(obj.port);
			$("#emailAddress").val(obj.emailAddress);
			$("#username").val(obj.username);
			$("#password").val(obj.password);
			if(obj.authenticationRequired==1){
				$("#username").attr("disabled",false);
				$("#password").attr("disabled",false);
			}
      	}}); 
	}  
	
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={"serverAddress":$("#serverAddress").val(),
 					"authenticationRequired":$("input[name='authenticationRequired']:checked").val(),
 					"port":$("#port").val(),
 					"username":$("#username").val(),
 					"password":$("#password").val(),
 					"emailAddress":$("#emailAddress").val()};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_email_setup&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
</script>     
