<%@ page contentType="text/html; charset=utf-8"%>
<div id="contentwrapper">
                <div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">General Settings</h3>
                      <div class="formSep">
                        <span class="span3"><b>Name</b></span>
                        <input id="name" name="name" type="text" value="wc2415af"/>
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>Country/Region</b></span>
                         <select id="region" name="region">
							<option selected="selected">American</option>
							<option>Afghanistan </option>
							<option>Albania </option>
							<option>Antigua </option>
							<option >5</option>
					    </select>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Controller Location Code</b></span>
                        <input id="location_code" name="location_code" type="text" value=" "/>
                      </div>
                       <div class="form-actions">
                       <button class="btn" type="submit">Cancel</button> 
                        <button id="btnSubmit" class="btn btn-primary" type="submit" onclick="apply();">Apply</button>
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
		$.ajax({ url: "config/read.json?name=confing_general",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#name").val(obj.name);
			$("#region").val(obj.region);
			$("#location_code").val(obj.location_code);
      	}}); 
	}  
	function apply() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={"name":$("#name").val(),"region":$("#region").val(),"location_code":$("#location_code").val()};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_general&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>
