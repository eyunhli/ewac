<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Reboot/Reset Controllers</h3>
                      <div class="row-fluid">
                        <div class="formSep">
                        <label><b>Reset/Reboot</b> 
                          </label>
                          <input type="radio" name="resetReboot" id="resetReboot" value="reboot">
                          reboot
                           <input type="radio" name="resetReboot" id="resetReboot" value="reset">
                          reset</div> 
                          <div class="formSep">
                           <label><b>Reset type</b></label>
                          <input type="radio" name="resetType" id="resetType" value="hard">
                          hard
                          <input type="radio" name="resetType" id="resetType" value="soft">
                        soft</div>
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
		$.ajax({ url: "config/read.json?name=maintenance_controllers",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='resetReboot'][value="+obj.resetReboot+"]").attr("checked",true); 
			$("input[name='resetType'][value="+obj.resetType+"]").attr("checked",true); 
      	}}); 
	}  
	function apply() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={
 				"resetReboot":$("input[name='resetReboot']:checked").val(),
 				"resetType":$("input[name='resetType']:checked").val()
 				};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_controllers&type=maintenance&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>
  
