<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Session Timeout</h3>
                        <div class="formSep">
                            <input type="checkbox" value="1" name="snmp">
                            <b> SNMP
                          </b> 
                      </div>
                        <div class="formSep">
                          <span class="span3"><b>Read-Only Community Name</b> </span>
                          <input type="text" value=" public" id="readOnlyCommunityName" name="readOnlyCommunityName"/>
                      </div>
                       
                      <div class="formSep">
                          <span class="span3"><b>Read-Write Community Name</b></span>
                          <input type="text" value="private" id="readWriteCommunityName" name="readWriteCommunityName"/>
                        </div>
                      <div class="formSep">
                          <span class="span3"><b>Trap Community Name</b></span>
                          <input type="text" value="trap" id="trapCommunityName" name="trapCommunityName"/>
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>IP Address to Receive Traps</b></span>
                          <input type="text" value=" " id="trapAddress" name="trapAddress"/>
                        </div>
                        <div class="formSep">
                          <span class="span3"><b>Trap Port </b></span>
                          <input type="text" value="162" id="trapPort"/>
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>SNMP Manager IP </b></span>
                        <input type="text" value="255.255.255.255" id="snmpManagerIP"/>
                        </div>
                    </div>
                  </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit" onclick="apply();">Apply</button>
                  </div>
        </div>
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		$.ajax({ url: "config/read.json?name=maintenance_snmp",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='snmp'][value="+obj.snmp+"]").attr("checked",true); 
			$("#readOnlyCommunityName").val(obj.readOnlyCommunityName); 
			$("#readWriteCommunityName").val(obj.readWriteCommunityName); 
			$("#trapCommunityName").val(obj.trapCommunityName); 
			$("#trapAddress").val(obj.trapAddress); 
			$("#trapPort").val(obj.trapPort); 
			$("#snmpManagerIP").val(obj.snmpManagerIP); 
      	}}); 
	}  
	function apply() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={
 				"snmp":$("input[name='snmp']:checked").val(),
 				"readOnlyCommunityName":$("#readOnlyCommunityName").val(),
 				"readWriteCommunityName":$("#readWriteCommunityName").val(),
 				"trapCommunityName":$("#trapCommunityName").val(),
 				"trapAddress":$("#trapAddress").val(),
 				"trapPort":$("#trapPort").val(),
 				"snmpManagerIP":$("#snmpManagerIP").val()
 				};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_snmp&type=maintenance&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>