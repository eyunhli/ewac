<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Alarm Actions</h3>
                     <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th>Serverity</th>
                            <th><span class="optional">Action</span></th>
                            <th><span class="essential persist">Email Address</span></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Minor</td>
                            <td> 
                              <select id="minorAction" onclick="email('minor')" name="minorAction" >
                                <option>No Action</option>
                                <option>Add To Syslog</option>
                                <option>Send Email</option>
                              </select>
                            </td>
                            <td>
                            <input type="text" id="minorEmail" name="minorEmail" class="span4" disabled/>
                            </td>
                          </tr>
                          <tr>
                            <td>Normal</td>
                            <td><select onclick="email('normal')"  id="normalAction" name="normalAction" >
                              <option>No Action</option>
                                <option>Add To Syslog</option>
                                <option>Send Email</option>
                            </select></td>
                            <td><input type="text" id="normalEmail" name="normalEmail" class="span4" disabled/>                              </span></td>
                          </tr>
                          <tr>
                            <td>Major</td>
                            <td><select onclick="email('major')"  id="majorAction" name="majorAction" >
                             	<option>No Action</option>
                                <option>Add To Syslog</option>
                                <option>Send Email</option>
                            </select></td>
                            <td><input type="text" id="majorEmail" name="majorEmail" class="span4" disabled/></td>
                          </tr>
                          <tr>
                            <td>Critical</td>
                            <td><select onclick="email('critical')"  id="criticalAction" name="criticalAction" >
                              <option>No Action</option>
                                <option>Add To Syslog</option>
                                <option>Send Email</option>
                            </select></td>
                            <td><input type="text"  id="criticalEmail" name="criticalEmail" class="span4" disabled/></td>
                          </tr>
                        </tbody>
                      </table>
                      
                     <div class="form-actions">
                      <button class="btn" type="submit">Cancel</button>
                      <button class="btn btn-primary" type="submit" onclick="apply()">Apply</button>
                    </div>                    </div>
                  </div>
        </div>
            
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	
	function email(name){
		if($("#"+name+"Action").val()=='Send Email'){
			$("#"+name+"Email").attr("disabled",false);
		}else{
			$("#"+name+"Email").attr("disabled",true);
		}
	}
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_alarms",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#minorAction").val(obj.minorAction);
			$("#minorEmail").val(obj.minorEmail);
			$("#normalAction").val(obj.normalAction);
			$("#normalEmail").val(obj.normalEmail);
			$("#majorAction").val(obj.majorAction);
			$("#majorEmail").val(obj.majorEmail);
			$("#criticalAction").val(obj.criticalAction);
			$("#criticalEmail").val(obj.criticalEmail)
      	}}); 
	}  
	function apply() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={
 					"minorAction":$("#minorAction").val(),
 					"minorEmail":$("#minorEmail").val(),
 					"normalAction":$("#normalAction").val(),
 					"normalEmail":$("#normalEmail").val(),
 					"majorAction":$("#majorAction").val(),
 					"majorEmail":$("#majorEmail").val(),
 					"criticalAction":$("#criticalAction").val(),
 					"criticalEmail":$("#criticalEmail").val()
 				  };
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_alarms&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>
            