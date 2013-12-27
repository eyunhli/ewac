<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    
                    <div class="span6">
                      <h3 class="heading">Log Settings</h3>
                      <div class="formSep">
                        <input type="checkbox" value="1" id="eventTracing" name="eventTracing">
                        <b>Event Tracing</b>
                      </div>
                      <div class="formSep">
                        <label><b>Time Duration </b></label>
                        hr:
                        <select id="hr" name="hr"  style="width:80px;">
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                      mins:
                      <select id="mins" name="mins" style="width:80px;">
                        <option>0</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                        <option>28</option>
                        <option>29</option>
                        <option>30</option>
                        <option>31</option>
                        <option>32</option>
                        <option>33</option>
                        <option>34</option>
                        <option>35</option>
                        <option>36</option>
                        <option>37</option>
                        <option>38</option>
                        <option>39</option>
                        <option>40</option>
                        <option>41</option>
                        <option>42</option>
                        <option>43</option>
                        <option>44</option>
                        <option>45</option>
                        <option>46</option>
                        <option>47</option>
                        <option>48</option>
                        <option>49</option>
                        <option>50</option>
                        <option>51</option>
                        <option>52</option>
                        <option>53</option>
                        <option>54</option>
                        <option>55</option>
                        <option>56</option>
                        <option>57</option>
                        <option>58</option>
                        <option>59</option>
                      </select>
                      </div>
                      <div class="formSep">
                        <label><b>Log Level</b></label>
                        <select name="logLevel" id="logLevel" >
                          <option value="1">LOG_LEVEL_WARN</option>
                          <option value="2">LOG_LEVEL_ERROR</option>
                        </select>
                      </div>
                    </div><div class="span6">
                      <h3 class="heading">SysLog Settings</h3>
                      <div class="formSep">
                        <input type="checkbox" value="1" id="enableSyslog" name="enableSyslog">
                        <b>Enable Syslog</b></div>
                      <div class="formSep">
                        <label><b>Syslog Server IP Address</b></label>
                        <input type="text" id="serverIp" name="serverIp" value=" "/>
                      </div>
                      <div class="formSep">
                        <label><b>Server Port Number</b></label>
                        <input type="text" id="serverPort" name="serverPort" value=" 514"/>
                      </div>
                      <div class="formSep">
                        <label><b>Log Level</b></label>
                        <select id="sysLogLevel" name="sysLogLevel" >
                          <option value="1">LOG_LEVEL_CRIT</option>
                          <option value="2">LOG_LEVEL_CRIT2</option>
                        </select>
                      </div>
                    </div> 
                  </div><div class="form-actions">
                      <button class="btn" type="submit">Cancel</button>
                      <button class="btn btn-primary" onclick="apply();" type="submit">Apply</button>
                    </div>
        </div>
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_logs",success: function(msg){
			var obj = JSON.parse(msg); 
			$("input[name='eventTracing'][value="+obj.log.eventTracing+"]").attr("checked",true); 
			$("#hr").val(obj.log.hr);
			$("#mins").val(obj.log.mins);
			$("#logLevel").val(obj.log.logLevel);
			$("input[name='enableSyslog'][value="+obj.syslog.enableSyslog+"]").attr("checked",true); 
			$("#serverIp").val(obj.syslog.serverIp);
			$("#serverPort").val(obj.syslog.serverPort);
			$("#sysLogLevel").val(obj.syslog.sysLogLevel);
      	}}); 
	}  
	function apply() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={
 				"log":{
 					"eventTracing":$("input[name='eventTracing']:checked").val(),
 					"hr":$("#hr").val(),
 					"mins":$("#mins").val(),
 					"logLevel":$("#logLevel").val()
 				},
 				"syslog":{
 					"enableSyslog":$("input[name='enableSyslog']:checked").val(),
 					"serverIp":$("#serverIp").val(),
 					"serverPort":$("#serverPort").val(),
 					"sysLogLevel":$("#sysLogLevel").val()
 				}
 			};
 			alert(content);
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_logs&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>
 
