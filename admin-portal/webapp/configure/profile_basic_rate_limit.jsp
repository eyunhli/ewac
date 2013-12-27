<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Rate Limit</h3>
                    </div>
      				<div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">802.11b/bg/ng</a></li>
                          <li> <a href="#tab2" data-toggle="tab">802.11a/na</a></li>
                          <li></li>
                          <li></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                            <table class="table table-striped table-bordered mediaTable">
                              <thead>
                                <tr>
                                  <th class="optional">Profile Name</th>
                                  <th class="essential persist">SSID</th>
                                  <th class="optional">Rate Limit</th>
                                </tr>
                              </thead>
                              <tbody id='_802_11b_bg_ng'>
                              </tbody>
                            </table>
                          </div>
                          <!--tab2-->
                          <div class="tab-pane" id="tab2">
                           <table class="table table-striped table-bordered mediaTable">
                              <thead>
                                <tr>
                                  <th class="optional">Profile Name</th>
                                  <th class="essential persist">SSID</th>
                                  <th class="optional">Rate Limit</th>
                                </tr>
                              </thead>
                              <tbody id='_802_11a_na'>
                              </tbody>
                            </table>
                          </div>
                          <div class="tab-pane" id="tab3"> </div>
                          <div class="tab-pane" id="tab4"> </div>
                        </div>
                      </div>
                    </div>
                <div class="form-actions">
                  <button class="btn" type="submit">Cancel</button>
                  <button class="btn btn-primary" onclick="apply()" type="submit">Apply</button>
                </div>
              </div>
        </div>
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	var list;
	function read() { 
		$.ajax({ url: "config/list.json?type=profileBasicRadio",async:false,success: function(msg){
			list = msg;
			$.each(msg,function(i,it){ 
				var obj = JSON.parse(it.json); 
				if(it.name.indexOf('_802_11b_bg_ng')>-1){
					$('#_802_11b_bg_ng').append("<tr><td>"+obj.name+"</td><td>"+obj.ssid+"</td><td><input type='text' id='"+it.name+"'  class='span1' value='50' size='3' style='width:30px; margin-left:8px;'/></td></tr>");//  alert(msg[i].name)
				}else{
					$('#_802_11a_na').append("<tr><td>"+obj.name+"</td><td>"+obj.ssid+"</td><td><input type='text' id='"+it.name+"'   class='span1' value='50' size='3' style='width:30px; margin-left:8px;'/></td></tr>");//  alert(msg[i].name)
				} 
			});
      	}}); 
      	$.ajax({ url: "config/read.json?name=confing_profile_basic_rate_limit",success: function(msg){
			var obj = JSON.parse(msg); 
			$.each(obj,function(i,it){ 
				$("#"+it.name).val(it.value);
			});
      	}}); 
	}  
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
		var content = new Array();
		$.each(list,function(i,it){ 
			var node = {"name":it.name,"value":$("#"+it.name).val()}; 
			content[i] = node;
		});
		 
 		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_profile_basic_rate_limit&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>
        