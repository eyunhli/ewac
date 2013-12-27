<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Channel Allocation</h3>
                      <div class="formSep">
                        <label><b>Automatic Channel allocation</b> </label>
                        <input type="radio" value="on" name="automaticChannelAllocation" />on
						<input type="radio" value="off" name="automaticChannelAllocation" />off 
					  </div>
                      <div class="formSep">
                        <label class="act-primary"><b >Valid corporate channels</b></label>
                        <input type="checkbox" value="0" name="ghz2.4" onclick="channels(this)"/> 2.4 Ghz &nbsp;
                        <input type="checkbox" value="1" name="ghz2.4" disabled/> 1&nbsp;
                        <input type="checkbox" value="2" name="ghz2.4" disabled/> 2&nbsp;
                        <input type="checkbox" value="3" name="ghz2.4" disabled/> 3&nbsp;
                        <input type="checkbox" value="4" name="ghz2.4" disabled/> 4&nbsp;
                        <input type="checkbox" value="5" name="ghz2.4" disabled/> 5&nbsp;
                        <input type="checkbox" value="6" name="ghz2.4" disabled/> 6&nbsp;
                        <input type="checkbox" value="7" name="ghz2.4" disabled/> 7&nbsp;
                        <input type="checkbox" value="8" name="ghz2.4" disabled/> 8&nbsp;
                        <input type="checkbox" value="9" name="ghz2.4" disabled/> 9
                        <br>
						<input type="checkbox" value="0" name="ghz5" onclick="channels(this)"/> 5 Ghz&nbsp;
						<input type="checkbox" value="36" name="ghz5" disabled/> 36&nbsp;
						<input type="checkbox" value="40" name="ghz5" disabled/> 40&nbsp;
						<input type="checkbox" value="44" name="ghz5" disabled/> 44&nbsp;
						<input type="checkbox" value="48" name="ghz5" disabled/> 48&nbsp;
						<input type="checkbox" value="52" name="ghz5" disabled/> 52&nbsp;
						<input type="checkbox" value="56" name="ghz5" disabled/> 56&nbsp;
						<input type="checkbox" value="60" name="ghz5" disabled/> 60&nbsp;
						<input type="checkbox" value="64" name="ghz5" disabled/> 64&nbsp;
						<input type="checkbox" value="100" name="ghz5" disabled/> 100&nbsp;
						<input type="checkbox" value="104" name="ghz5" disabled/> 104&nbsp;
						<input type="checkbox" value="108" name="ghz5" disabled/> 108&nbsp;
						<input type="checkbox" value="112" name="ghz5" disabled/> 112&nbsp; 
						<input type="checkbox" value="116" name="ghz5" disabled/> 116&nbsp;
						<input type="checkbox" value="120" name="ghz5" disabled/> 120&nbsp;
						<input type="checkbox" value="124" name="ghz5" disabled/> 124&nbsp;
						<input type="checkbox" value="128" name="ghz5" disabled/> 128&nbsp;
						<input type="checkbox" value="132" name="ghz5" disabled/> 132&nbsp;
						<input type="checkbox" value="136" name="ghz5" disabled/> 136&nbsp;
						<input type="checkbox" value="149" name="ghz5" disabled/> 149&nbsp;
						<input type="checkbox" value="153" name="ghz5" disabled/> 153&nbsp;
						<input type="checkbox" value="157" name="ghz5" disabled/> 157&nbsp;
						<input type="checkbox" value="161" name="ghz5" disabled/> 161&nbsp;
						<input type="checkbox" value="165" name="ghz5" disabled/> 165&nbsp;
                      </div>
                      <div class="formSep">
                        <p>
                          <label  class="act-primary"><b>Prevent channel change during</b></label>
                        Active voice call
                        <input type="radio" value="enable" name="activeVoiceCall" />enable
                        <input type="radio" value="disable" name="activeVoiceCall" />disable</p>
                        <p>High Traffic Loadl
                          <input type="radio" value="enable" name="highTrafficLoadl" />enable
						  <input type="radio" value="disable" name="highTrafficLoadl" />disable</p>
                      </div>
                      <div class="formSep">
                        <label class="act-primary"><b>Schedule channel allocation</b></label>
                         Run channel allocation at:
                          <select id="hrs" name="hrs"  style="width:80px;">
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
						<br>
                          Run channel allocation every
                        <input type="checkbox" value="1" id="schedule" name="schedule" />m 
						<input type="checkbox" value="2" id="schedule" name="schedule" />t 
						<input type="checkbox" value="3" id="schedule" name="schedule" />w  
						<input type="checkbox" value="4" id="schedule" name="schedule" />t 
						<input type="checkbox" value="5" id="schedule" name="schedule" />f 
						<input type="checkbox" value="6" id="schedule" name="schedule" />s 
						<input type="checkbox" value="7" id="schedule" name="schedule" />s 
                      </div>
                      <div class="form-actions">
                        <button class="btn" type="submit">Cancel</button>
                        <button class="btn btn-primary" type="submit" onclick="apply()">Apply</button>
                      </div>
                    </div>
                  </div>
        </div>

        <script type="text/javascript">
	 
	$.ajaxSetup ({
		cache: false 
	});
	
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_basic_channel_allocation",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#hrs").val(obj.hrs);
			$("#mins").val(obj.mins);
			$("input[name='activeVoiceCall'][value="+obj.activeVoiceCall+"]").attr("checked",true); 
			$("input[name='highTrafficLoadl'][value="+obj.highTrafficLoadl+"]").attr("checked",true); 
			$("input[name='automaticChannelAllocation'][value="+obj.automaticChannelAllocation+"]").attr("checked",true); 
			var schedule = obj.schedule.split(",");
			for(i in schedule){
				$("input[name='schedule'][value="+schedule[i]+"]").attr("checked",true); 
			}
			var ghz24 = obj.ghz24.split(",");
			for(i in ghz24){
				$("input[name='ghz2.4'][value="+ghz24[i]+"]").attr("checked",true); 
			}
			var ghz5 = obj.ghz5.split(",");
			for(i in ghz24){
				$("input[name='ghz5'][value="+ghz5[i]+"]").attr("checked",true); 
			}
      	}}); 
	}  
	read();
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
		
		var schedule = "";
		$("input[name='schedule']:checked").each(function(e) {
			if(schedule==""){
				schedule = this.value;
			}else{
				schedule += ","+this.value ;
			}
		});
		
		var ghz24 = "";
		$("input[name='ghz2.4']:checked").each(function(e) {
			if(ghz24==""){
				ghz24 = this.value;
			}else{
				ghz24 += ","+this.value ;
			}
		});
		var ghz5 = "";
		$("input[name='ghz5']:checked").each(function(e) {
			if(ghz5==""){
				ghz5 = this.value;
			}else{
				ghz5 += ","+this.value ;
			}
		});
 		var content={"hrs":$("#hrs").val(),
 					"mins":$("#mins").val(),
 					"ghz24":ghz24,
 					"ghz5":ghz5,
 					"activeVoiceCall":$("input[name='activeVoiceCall']:checked").attr("value"),
 					"highTrafficLoadl":$("input[name='highTrafficLoadl']:checked").attr("value"),
 					"automaticChannelAllocation":$("input[name='automaticChannelAllocation']:checked").attr("value"),
 					"schedule":schedule};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_basic_channel_allocation&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}
	function channels(name){
		var name = $(name);
        $("input[name='"+name.attr('name')+"'][value!=0]").each(function(e) {
			$(this).attr('disabled', name.attr("checked")!='checked');
        });
    }  
</script>
        
