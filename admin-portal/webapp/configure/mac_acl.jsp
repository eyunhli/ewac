<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                <div class="row-fluid">
                       <h3 class="heading">MAC Authentication</h3>
                      <div class="formSep">
                    <span class="span3"><b>Import MAC List from a file</b></span> 
                    <select id="importMac" name="importMac" >
                      <option>Merge</option>
                      <option>Replace</option>
                    </select>
                   <br>
               <span class="span3">&nbsp;</span>
                          	<form action="/ac/upload" id="form1" name="form1" encType="multipart/form-data" method="post" target="hidden_frame">  
								<input  type="file" id="file" name="file"><br><br>
							</form>  
                         	<iframe name='hidden_frame' id="hidden_frame" style='display:none'></iframe>  
                  </div>
                      <div class="formSep">
                        <span class="span3"><b>Treat ACL as</b></span>
                        <input type="radio" checked="" value="allow" id="treatACL" name="treatACL">Allow
						<input type="radio" value="deny" id="treatACL" name="treatACL">Deny </div> 
               			<div class="form-horizontal">
                         <div class="span5">
                       <b>Selecte Wireless Clients</b>
                          <span class=" pull-right">
                          <button class="btn  btn-primary btn-small" type="submit" onclick="addMac();" style="margin"> <i class="icon-plus icon-white"></i>Add</button>  
                          <button class="btn btn-danger btn-small" type="submit" onclick="delMac();"><i class="icon-trash  icon-white "></i>Delete</button>
                          </span>
                      
                        <table class="table table-bordered " >
                          <thead>
                            <tr>
                              <th class="optional">MAC Address</th>
                              <th class="essential persist"><input type="checkbox"  onclick="checkMac('macId',this.checked)"></th>
                            </tr>
                          </thead>
                            <tr>
                              <td><input type="text" id="mac" name="mac" value=" "/></td>
                              <td>&nbsp;</td>
                            </tr>
                          <tbody id="macList"></tbody>
                        </table></div>
                     
               <div class="span1 " style="margin-top:20px;"> <button class="btn" type="submit" onclick="moveMac();"><i class="icon-chevron-left"></i>Move</button></div>
                <div class="span5">
                         <label class="act-primary"><b>Availiable Wireless Clients</b></label>
                         <table class="table table-bordered " >
                           <thead>
                             <tr>
                               <th class="optional">MAC Address</th>
                               <th class="essential persist"><input type="checkbox" onclick="checkMac('avaiMacId',this.checked)"></th>
                             </tr>
                           </thead>
                           <tbody id="avaiMacList">
                           <tr><td>00:00:11:11:22:26</td><td><input type='checkbox' name='avaiMacId'></td></tr>
                           <tr><td>00:00:11:11:22:27</td><td><input type='checkbox' name='avaiMacId'></td></tr>
                           <tr><td>00:00:11:11:22:28</td><td><input type='checkbox' name='avaiMacId'></td></tr>
                           <tr><td>00:00:11:11:22:29</td><td><input type='checkbox' name='avaiMacId'></td></tr>
                           </tbody>
                         </table>
                   </div></div></div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" onclick="fileUpload();" type="submit">Import</button>
                    <button class="btn btn-primary" onclick="apply();" type="submit">Apply</button>
                  </div>
              </div>
            </div>
            </div> 
            
            
<script>
read();
	function read() { 
		$.ajax({ url: "config/read.json?name=configure_mac_acl",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='treatACL'][value="+obj.treatACL+"]").attr("checked",true); 
			$.each(obj.macList,function(i,it){
				$('#macList').append("<tr><td>"+it.mac+"</td><td><input type='checkbox' name='macId'></td></tr>");
		  	});
      	}}); 
	}  
function apply(){
		var macList = new Array();
		$("#macList").find("tr").each(function(i,it){
		 	var td=	$(it).find("td");
		 	var key = {"mac":$(td[0]).text()}; 
			macList[i] = key;
		}); 
		var content={"treatACL":$("input[name='treatACL']:checked").val(),"macList":macList}
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=configure_mac_acl&type=configure&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}

function addMac(){
	var mac = $("#mac").val();
	if(exist(mac)==false)
	$('#macList').append("<tr><td>"+mac+"</td><td><input type='checkbox' name='macId'></td></tr>");
}
	
function fileUpload(){
 	$("#form1").submit();
	var statusInterval = setInterval(
			function() {
				var bodyContent = $(document.getElementById('hidden_frame').contentWindow.document.body).html(); 
				alert(bodyContent);
				if (bodyContent != '') {
					clearInterval(statusInterval);
					alert($("#importMac").val())
					if($("#importMac").val()=='Replace'){
						$('#macList').empty();
					}
					$.each(bodyContent.split(","),function(i,it){ 
	 					if(exist(it)==false)
	 					$('#macList').append("<tr><td>"+it+"</td><td><input type='checkbox' name='macId'></td></tr>");
					});
				}
			}.bind(this), 500);
}

function exist(mac){
	var flag=false;
	$("#macList").find("tr").each(function(i,it){
		 var td=$(it).find("td").text();
		 if($.trim(td)==$.trim(mac)){
		 	flag = true;
		 }
	}); 
	return flag
}
function checkMac(name,it){
	$.each($("input[name='"+name+"']"),function(){
		$(this).attr("checked",it);
	});
}

function delMac(){
	$.each($("input[name='macId']:checked"),function(){
		$(this).parent().parent().remove();
  	});
}

function moveMac(){
	$.each($("input[name='avaiMacId']:checked"),function(){
		var td=	$($(this).parent().parent()).find("td");
		if(exist($(td[0]).text())==false)
	 		$('#macList').append("<tr><td>"+$(td[0]).text()+"</td><td><input type='checkbox' name='macId'></td></tr>");
  	});
}
</script>
