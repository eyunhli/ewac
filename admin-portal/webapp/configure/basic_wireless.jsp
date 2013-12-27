<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                  <div class="span12"><h3 class="heading">Basic Wireless Settings</h3>
                  </div>
                   
                    <div class="tabbable " >
                      <ul class="nav nav-tabs">
                        <li><a id="atab1" href="#tab1" data-toggle="tab">802.11b/bg/ng</a></li>
                        <li> <a id="atab2"  href="#tab2" data-toggle="tab">802.11a/na</a></li>
                         
                      </ul>
                      <div class="tab-content" style="height:500px; overflow-y:auto">
                      
                      <!--tab1-->
                        <div class="tab-pane active" id="tab1">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode" name="wirelessMode" >
                                              <option>802.11ng</option>
                                              <option>802.11bg</option>
                                              <option>802.11b</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate" name="dataRate" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth" name="channelWidth" >
                                              <option>20/40 MHz Dynamic</option>
                                              
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval" name="guardInterval" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold" name="rtsThreshold" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength" name="fragmentationLength" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval" id="beaconInterval"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength" name="aggregationLength" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                                            
                                              <input type="radio" value="enable"  id="AMPDU" name="AMPDU" /> enable
                                              <input type="radio" value="disable"  id="AMPDU" name="AMPDU" />disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission" name="rifsTransmission" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission" name="rifsTransmission" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval" name="dtimInterval" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" name="preambleType" />
                                            Auto
                                            <input type="radio" value="Long" name="preambleType" />
                                            Long </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <table class="table table-striped table-bordered dTableR" id="dt_a">
                                    <thead>
                                      <tr>
                                        <th>AP Name</th>
                                        <th><span class="essential persist"> Access Point Channel</span></th>
                                        <th>Tx Power</th>
                                      </tr>
                                    </thead>
                                    <tbody id="apList">
                                   
                                    </tbody>
                                  </table>
                                </div>   
                       <!--tab2--> 
                        <div class="tab-pane active" id="tab2">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode1" name="wirelessMode1" >
                                              <option>802.11a</option>
                                              <option>802.11na</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate1" name="dataRate1" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth1"  name="channelWidth1" >
                                              <option>20/40 MHz Dynamic</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval1" name="guardInterval1" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold1" name="rtsThreshold1" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength1" name="fragmentationLength1" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval1" name="beaconInterval1"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength1" name="aggregationLength1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                               
                                              <input type="radio" value="enable" id="AMPDU1" name="AMPDU1" />  enable
                                              <input type="radio" value="disable" id="AMPDU1" name="AMPDU1" />  disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval1" name="dtimInterval1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" id="preambleType1" name="preambleType1" />
                                            Auto
                                            <input type="radio" value="Long" id="preambleType1" name="preambleType1" />
                                            Long </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <table class="table table-striped table-bordered dTableR" id="dt_a">
                                    <thead>
                                      <tr>
                                        <th>AP Name</th>
                                        <th><span class="essential persist"> Access Point Channel</span></th>
                                        <th>Tx Power</th>
                                      </tr>
                                    </thead>
                                    <tbody id="apList1">
                                 
                                    </tbody>
                                  </table>
                                </div>
                         
                      </div>
                    </div>
                  </div>
                  <div class="form-actions ">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit" onclick="apply()">Apply</button>
                  </div>
                </div>
            </div>
<script type="text/javascript"> 
	$("#atab1").click();
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		var obj
		$.ajax({ url: "config/read.json?name=confing_basic_wireless",async:false,success: function(msg){
			obj = JSON.parse(msg); 
			$("input[name='AMPDU'][value="+obj._802_11b_bg_ng.AMPDU+"]").attr("checked",true); 
			$("input[name='rifsTransmission'][value="+obj._802_11b_bg_ng.rifsTransmission+"]").attr("checked",true); 
			$("input[name='preambleType'][value="+obj._802_11b_bg_ng.preambleType+"]").attr("checked",true); 
			$("#wirelessMode").val(obj._802_11b_bg_ng.wirelessMode);
			$("#dataRate").val(obj._802_11b_bg_ng.dataRate);
			$("#channelWidth").val(obj._802_11b_bg_ng.channelWidth);
			$("#guardInterval").val(obj._802_11b_bg_ng.guardInterval);
			$("#rtsThreshold").val(obj._802_11b_bg_ng.rtsThreshold);
			$("#fragmentationLength").val(obj._802_11b_bg_ng.fragmentationLength);
			$("#aggregationLength").val(obj._802_11b_bg_ng.aggregationLength);
			$("#dtimInterval").val(obj._802_11b_bg_ng.dtimInterval);
			
			$("input[name='AMPDU1'][value="+obj._802_11a_na.AMPDU+"]").attr("checked",true); 
			$("input[name='rifsTransmission1'][value="+obj._802_11a_na.rifsTransmission+"]").attr("checked",true); 
			$("input[name='preambleType1'][value="+obj._802_11a_na.preambleType+"]").attr("checked",true); 
			$("#wirelessMode1").val(obj._802_11a_na.wirelessMode);
			$("#dataRate1").val(obj._802_11a_na.dataRate);
			$("#channelWidth1").val(obj._802_11a_na.channelWidth);
			$("#guardInterval1").val(obj._802_11a_na.guardInterval);
			$("#rtsThreshold1").val(obj._802_11a_na.rtsThreshold);
			$("#fragmentationLength1").val(obj._802_11a_na.fragmentationLength);
			$("#aggregationLength1").val(obj._802_11a_na.aggregationLength);
			$("#dtimInterval1").val(obj._802_11a_na.dtimInterval);
      	}}); 
      	
      	var str="";
      	$.ajax({ url: "config/read.json?name=confing_basic_channel_allocation",async:false,success: function(msg){
			var obj = JSON.parse(msg);
			if(obj.ghz24!=null){
				$.each(obj.ghz24.split(","),function(i,val){ 
	   				if(val>0){
	   					str += "<option>"+val+"/2.4GHZ</option>"
	   				}
				});
			} 
			if(obj.ghz5!=null){
				if(obj.ghz5!=null){
					$.each(obj.ghz5.split(","),function(i,val){ 
		   				if(val>0){
		   					str += "<option>"+val+"/5GHZ</option>"
		   				}
					});
				} 
			} 
      	}});
      	var str1="<option>Full</option><option>Half</option><option>Quarter</option><option>Eighth</option><option>Minimum</option>"
      	$.ajax({ url: "ap/apList.json",async:false,success: function(msg){
      		for(var i=0;i<msg.length;i++){
      			$('#apList').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");//  alert(msg[i].name)
      		}
      		for(var i=0;i<msg.length;i++){
      			$('#apList1').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");//  alert(msg[i].name)
      		}
      	}});
      	$.each(obj._802_11b_bg_ng.apList,function(i,it){ 
			$('#apList').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#apList').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
		$.each(obj._802_11a_na.apList,function(i,it){ 
			$('#apList1').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#apList1').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
      	
	}  
	
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
		
		var $tr = $('#apList').children();
		var apList = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList[i] = ap;
		}
		$tr = $('#apList1').children();
		var apList1 = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList1[i] = ap;
		}
 		var content={"_802_11b_bg_ng":
	 					{"wirelessMode":$("#wirelessMode").val(),
	 					"AMPDU":$("input[name='AMPDU']:checked").val(),
	 					"dataRate":$("#dataRate").val(),
	 					"channelWidth":$("#channelWidth").val(),
	 					"guardInterval":$("#guardInterval").val(),
	 					"rtsThreshold":$("#rtsThreshold").val(),
	 					"fragmentationLength":$("#fragmentationLength").val(),
	 					"beaconInterval":$("#beaconInterval").val(),
	 					"aggregationLength":$("#aggregationLength").val(),
	 					"rifsTransmission":$("input[name='rifsTransmission']:checked").val(),
	 					"dtimInterval":$("#dtimInterval").val(),
	 					"preambleType":$("input[name='preambleType']:checked").val(),
	 					"apList":apList
	 					},
 					"_802_11a_na":{
	 					"wirelessMode":$("#wirelessMode1").val(),
	 					"AMPDU":$("input[name='AMPDU1']:checked").val(),
	 					"dataRate":$("#dataRate1").val(),
	 					"channelWidth":$("#channelWidth1").val(),
	 					"guardInterval":$("#guardInterval1").val(),
	 					"rtsThreshold":$("#rtsThreshold1").val(),
	 					"fragmentationLength":$("#fragmentationLength1").val(),
	 					"beaconInterval":$("#beaconInterval1").val(),
	 					"aggregationLength":$("#aggregationLength1").val(),
	 					"rifsTransmission":$("input[name='rifsTransmission1']:checked").val(),
	 					"dtimInterval":$("#dtimInterval1").val(),
	 					"preambleType":$("input[name='preambleType1']:checked").val(),
	 					"apList":apList1}
 					};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_basic_wireless&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
</script>   