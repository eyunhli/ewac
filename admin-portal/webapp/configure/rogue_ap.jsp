<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Rogue AP</h3>
                      <div class="formSep">
                        <label><b>Rogue AP Detection</b></label>
                        <input type="radio"  value="enable" id="detection" name="detection" checked> enable
                        <input type="radio" value="disable" id="detection" name="detection"> disable </div>
                      <div class="formSep">
                        <label><b>Alert Serverity</b></label>
                        <input type="radio" name="alertServerity"  id="alertServerity" value="Major" checked  >
                        Major
                        <input type="radio" name="alertServerity"  id="alertServerity" value="Minor">
                        Minor </div>
                      <div class="form-actions">
                        <button class="btn btn-primary" type="submit"  onclick="apply()">Apply</button>
                        <button class="btn" type="submit">Cancel</button>
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
		$.ajax({ url: "config/read.json?name=confing_rogue_ap",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='detection'][value="+obj.detection+"]").attr("checked",true); 
			$("input[name='alertServerity'][value="+obj.alertServerity+"]").attr("checked",true); 
      	}}); 
	}  
	function apply() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={"detection":$("input[name='detection']:checked").val(),"alertServerity":$("input[name='alertServerity']:checked").val()};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_rogue_ap&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>
        