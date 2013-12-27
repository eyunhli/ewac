<%@ page contentType="text/html; charset=utf-8"%>
 <div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">License Settings</h3>
                    </div>
                     
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">Inventory</a></li>
                          <li> <a href="#tab2" data-toggle="tab">Server Settings</a></li>
                          <li><a href="#tab3" data-toggle="tab">Registration</a></li>
                          <li><a href="#tab4" data-toggle="tab">Advanced</a></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                          <div class="formSep">
                          <label class="act-primary"><b>Summary</b></label>
                           <span class="span3"><b>Total AP License</b></span>
                              200<br><br>
                          <span class="span3"><b>Nmode License Status</b></span>
                               Preinstalled<br><br>
                         <span class="span3"><b>Used License Count</b></span>
                              0<br>   <br>
                         <span class="span3"><b>Available License Count</b></span>
                               2000  
                          </div>



                          <label class="act-primary"><b>Key Details</b></label>
                          
                            <table class="table  table-bordered  "  >
                              <thead>
                                <tr>
                                  <th>Key </th>
                                  <th> Key Type </th>
                                  <th> Key Status </th>
                                </tr>
                              </thead>
                              <tbody id="inventoryLicense">
                                <tr>
                                  <td> 
                                    NG2f8-12A9-E55C-D92A-F763-998F-F917-29D4-9534
                                   </td>
                                  <td>200-AP</td>
                                  <td>Registered</td>
                                </tr>
                              </tbody>
                            </table><div class="form-actions">
                    <button class="btn " type="submit" onclick="inventoryRefresh()">Refresh</button>
                  </div>
                          </div>
                          <!--tab2-->
                         <div class="tab-pane " id="tab2">
                          <div class="formSep">
                            
                          <label class="act-primary"><b>Update Form</b></label>
                          <p>
                          <input type="radio" checked="true" value="defaultUpdateServer" id="updateForm" name="updateForm">Default Update Server &nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="radio"  value="specifyUpdateServer" id="updateForm" name="updateForm"> Specify Update Server </p>
                        	<b>Server Address</b> <input type="text" id="serverAddress"  name="serverAddress" value=""/>
                          <br>
                         <p> <input type="checkbox" value="1" id="proxy"  name="proxy" /> 
                          <b>Use a Proxy Server to Connect to the Internet</b>
                          </p>
                          <span class="span3"><b>Proxy Server</b></span>
                          <input id="proxyServer" name="proxyServer" type="text"/>
                             <br>

                            <span class="span3"><b>Proxy Port</b></span>
                              <input id="proxyPort" name="proxyPort" type="text" value="0"/>
                             <br>
                          </div>

                        <label class="act-primary"><b>This Proxy Server Requires Authentication</b><br>
                        </label>
                         <span class="span3"><b>User Name</b></span>
                        <input id="username" name="username" type="text"/>
                        <br>
                        <span class="span3"><b>Password</b></span>
                        <input id="password" name="password" type="text"/>
                        </span> 
                        
                        <div class="form-actions">
                    <button class="btn " type="submit">Cancle</button>
                    <button class=" btn-primary" type="submit" onclick="apply1();">Apply</button>                  </div>
                        
                        </div>
                         <!--tab3-->
                      <div class="tab-pane" id="tab3">
                        <div class="formSep">
                            <b>Registration Key</b> <input type="text" id="licenseKey" name="licenseKey" value=" "/>
                         </div>
                         <div class="pull-left" style="margin-bottom:5px;">
                          <button class="btn-primary" type="submit" onclick="addLicense();">Add</button>
                          <button class="btn-warning" type="submit" onclick="delLicense();">Delete</button>
                          </div><br>
<br>

                          <table class="table table-bordered "  >
                            <thead>
                                <tr>  <th> 
                                    <input type="checkbox" value="option1"  onclick='checkLicense(this.checked);'>
                                   </th>
                                
                                  <th>Key </th>
                                  <th> Key Type </th>
                                  <th> Key Status </th>
                                </tr>
                            </thead>
                              <tbody id="licenseList">
                              </tbody>
                        </table>
                        
                       <br><br>
                           
                            <div class="row-fluid">
                              <div id="customerInfo" class="span6">
                                <label class="act-primary"><b>Customer Information</b></label>
                                <div class="formSep"><span class="span3"><b>Company Name</b></span>
                                  <input id="companyName" name="companyName" type="text" value=" "/>
                                  <br>
                                </div>
                                <div class="formSep"> <span class="span3"><b>First Name</b></span>
                                  <input id="firstName" name="firstName" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Last Name</b></span>
                                  <input id="lastName" name="lastName" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Email Address</b></span>
                                  <input id="emailAddress" name="emailAddress" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Fax Number</b></span>
                                  <input id="faxNumber" name="faxNumber" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Phone Number</b></span>
                                  <input id="phoneNumber" name="phoneNumber" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Address</b></span>
                                  <input id="address" name="address" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Address 2 </b></span> 
                                  <input id="address2" name="address2" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Zip</b></span>
                                  <input id="zip" name="zip" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>City</b></span>
                                  <input id="city" name="city" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>State</b></span>
                                  <input id="state" name="state" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Country</b></span>
                                  <input id="country" name="country" type="text" value=" "/>
                                </div>
                              </div>
                              <div id="varInfo" class="span6">
                                <label class="act-primary"><b>VAR Information</b></label>
                                <div class="formSep"><span class="span3"><b>Company Name</b></span>
                                  <input id="companyName" name="companyName" type="text" value=" "/>
                                  <br>
                                </div>
                                <div class="formSep"> <span class="span3"><b>First Name</b></span>
                                  <input id="firstName" name="firstName" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Last Name</b></span>
                                  <input id="lastName" name="lastName" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Email Address</b></span>
                                  <input id="emailAddress" name="emailAddress" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Fax Number</b></span>
                                  <input id="faxNumber" name="faxNumber" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Phone Number</b></span>
                                  <input id="phoneNumber" name="phoneNumber" type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Address</b></span>
                                  <input id="address" name="address" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Address 2 </b></span> 
                                  <input id="address2" name="address2" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Zip</b></span>
                                  <input id="zip" name="zip" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>City</b></span>
                                  <input id="city" name="city" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>State</b></span>
                                  <input id="state" name="state" type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Country</b></span>
                                  <input id="country" name="country" type="text" value=" "/>
                                </div>
                              </div>
                            
                        </div>
                         <div class="form-actions">
                    <button class="btn " type="submit">Cancle</button>
                    <button class=" btn" type="submit">Refresh</button> 
                    <button class=" btn-primary" type="submit" onclick="apply2();">Apply</button>
                     </div>

                      </div>
                          <!--tab4-->
                          <div class="tab-pane" id="tab4"> 
                           <table class="table table-striped table-bordered dTableR" id="dt_a">
                              <thead>
                                <tr>
                                  <th>Key </th>
                                  <th> Key Type </th>
                                  <th> Key Status </th>
                                </tr>
                              </thead>
                              <tbody id="advancedLicense">
                                <tr>
                                  <td> 
                                    NG2f8-12A9-E55C-D92A-F763-998F-F917-29D4-9534
                                   </td>
                                  <td>200-AP</td>
                                  <td>Registered</td>
                                </tr>
                              </tbody>
                            </table>
                          <div class="form-actions">
                    <button class=" btn-primary " type="submit" onclick="advancedReplace();">Replace</button>
                                      </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
        </div>
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		$.ajax({ url: "config/read.json?name=maintenance_license_server_setting",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='updateForm'][value="+obj.updateForm+"]").attr("checked",true); 
			$("#serverAddress").val(obj.serverAddress);
			$("input[name='proxy'][value="+obj.proxy+"]").attr("checked",true); 
			$("#proxyServer").val(obj.proxyServer);
			$("#proxyPort").val(obj.proxyPort);
			$("#username").val(obj.username);
			$("#password").val(obj.password);
      	}}); 
      	$.ajax({ url: "config/read.json?name=maintenance_license_registration",success: function(msg){
			var obj = JSON.parse(msg); 
			$('#customerInfo').find("#companyName").val(obj.customerInfo.companyName);
			$('#customerInfo').find("#firstName").val(obj.customerInfo.firstName);
			$('#customerInfo').find("#lastName").val(obj.customerInfo.lastName);
			$('#customerInfo').find("#emailAddress").val(obj.customerInfo.emailAddress);
			$('#customerInfo').find("#faxNumber").val(obj.customerInfo.faxNumber);
			$('#customerInfo').find("#phoneNumber").val(obj.customerInfo.phoneNumber);
			$('#customerInfo').find("#address").val(obj.customerInfo.address);
			$('#customerInfo').find("#address2").val(obj.customerInfo.address2);
			$('#customerInfo').find("#zip").val(obj.customerInfo.zip);
			$('#customerInfo').find("#city").val(obj.customerInfo.city);
			$('#customerInfo').find("#state").val(obj.customerInfo.state);
			$('#customerInfo').find("#country").val(obj.customerInfo.country);
			
			$('#varInfo').find("#companyName").val(obj.varInfo.companyName);
			$('#varInfo').find("#firstName").val(obj.varInfo.firstName);
			$('#varInfo').find("#lastName").val(obj.varInfo.lastName);
			$('#varInfo').find("#emailAddress").val(obj.varInfo.emailAddress);
			$('#varInfo').find("#faxNumber").val(obj.varInfo.faxNumber);
			$('#varInfo').find("#phoneNumber").val(obj.varInfo.phoneNumber);
			$('#varInfo').find("#address").val(obj.varInfo.address);
			$('#varInfo').find("#address2").val(obj.varInfo.address2);
			$('#varInfo').find("#zip").val(obj.varInfo.zip);
			$('#varInfo').find("#city").val(obj.varInfo.city);
			$('#varInfo').find("#state").val(obj.varInfo.state);
			$('#varInfo').find("#country").val(obj.varInfo.country);
      	}}); 
      	
      	$.ajax({ url: "config/read.json?name=maintenance_license_registration_key",success: function(msg){
			var obj = JSON.parse(msg); 
			$.each(obj,function(i,it){
				$("#licenseList").append("<tr><td> <input type='checkbox'  name='licenseId' ></td><td>"+it.key+" </td><td>"+it.keyType+"</td><td>"+it.keyStatus+"</td></tr>");
      		});
      	}});
	}  
	function apply1() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={
 					"updateForm":$("input[name='updateForm']:checked").val(),
 					"serverAddress":$("#serverAddress").val(),
 					"proxy":$("input[name='proxy']:checked").val(),
 					"proxyServer":$("#proxyServer").val(),
 					"proxyPort":$("#proxyPort").val(),
 					"username":$("#username").val(),
 					"password":$("#password").val()
 				};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_license_server_setting&type=maintenance&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
		
		inventoryRefresh();
	}  

	function apply2() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={"customerInfo":{
	 					"companyName":$('#customerInfo').find("#companyName").val(),
	 					"firstName":$('#customerInfo').find("#firstName").val(),
	 					"lastName":$('#customerInfo').find("#lastName").val(),
	 					"emailAddress":$('#customerInfo').find("#emailAddress").val(),
	 					"faxNumber":$('#customerInfo').find("#faxNumber").val(),
	 					"phoneNumber":$('#customerInfo').find("#phoneNumber").val(),
	 					"address":$('#customerInfo').find("#address").val(),
	 					"address2":$('#customerInfo').find("#address2").val(),
	 					"zip":$('#customerInfo').find("#zip").val(),
	 					"city":$('#customerInfo').find("#city").val(),
	 					"state":$('#customerInfo').find("#state").val(),
	 					"country":$('#customerInfo').find("#country").val()
 					},
 					"varInfo":{
	 					"companyName":$('#varInfo').find("#companyName").val(),
	 					"firstName":$('#varInfo').find("#firstName").val(),
	 					"lastName":$('#varInfo').find("#lastName").val(),
	 					"emailAddress":$('#varInfo').find("#emailAddress").val(),
	 					"faxNumber":$('#varInfo').find("#faxNumber").val(),
	 					"phoneNumber":$('#varInfo').find("#phoneNumber").val(),
	 					"address":$('#varInfo').find("#address").val(),
	 					"address2":$('#varInfo').find("#address2").val(),
	 					"zip":$('#varInfo').find("#zip").val(),
	 					"city":$('#varInfo').find("#city").val(),
	 					"state":$('#varInfo').find("#state").val(),
	 					"country":$('#varInfo').find("#country").val()
 					}
 				};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_license_registration&type=maintenance&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
	
	function addLicense(){
		$("#licenseList").append("<tr><td> <input type='checkbox'  name='licenseId' ></td><td>"+$("#licenseKey").val()+" </td><td>200-AP</td><td>Registered</td></tr>");
		var license = new Array();
		$("#licenseList").find("tr").each(function(i,it){
		 	var td=	$(it).find("td");
		 	var key = {"key":$(td[1]).text(),"keyType":$(td[2]).text(),"keyStatus":$(td[3]).text()}; 
			license[i] = key;
		}); 
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_license_registration_key&type=maintenance&json="+ JSON.stringify(license), 
    		success: function(msg){                 
      			alert("registration Key success"); 
    		}
		});
	}
	
	function checkLicense(it){
		$.each($("input[name='licenseId']"),function(){
			$(this).attr("checked",it);
		});
		
	}
	function delLicense(){
		$.each($("input[name='licenseId']:checked"),function(){
			$(this).parent().parent().remove();
      	});
      	var license = new Array();
		$("#licenseList").find("tr").each(function(i,it){
		 	var td=	$(it).find("td");
		 	var key = {"key":$(td[1]).text(),"keyType":$(td[2]).text(),"keyStatus":$(td[3]).text()}; 
			license[i] = key;
		}); 
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_license_registration_key&type=maintenance&json="+ JSON.stringify(license), 
    		success: function(msg){                 
      			alert("delete key success"); 
    		}
		});
	}
	
	inventoryRefresh();
	function inventoryRefresh(){
		$("#inventoryLicense").empty();
		$.ajax({ url: "config/read.json?name=maintenance_license_registration_key",success: function(msg){
			var obj = JSON.parse(msg); 
			$.each(obj,function(i,it){
				$("#inventoryLicense").append("<tr><td>"+it.key+" </td><td>"+it.keyType+"</td><td>"+it.keyStatus+"</td></tr>");
      		});
      	}});
	}
	
	advancedReplace();
	function advancedReplace(){
		$("#advancedLicense").empty();
		$.ajax({ url: "config/read.json?name=maintenance_license_registration_key",success: function(msg){
			var obj = JSON.parse(msg); 
			$.each(obj,function(i,it){
				$("#advancedLicense").append("<tr><td>"+it.key+" </td><td>"+it.keyType+"</td><td>"+it.keyStatus+"</td></tr>");
      		});
      	}});
	}
</script>
 
        