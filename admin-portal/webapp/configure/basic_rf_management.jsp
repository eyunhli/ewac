<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">TX Power Settings</h3>
                      <div class="formSep">
                        <span class="span3"><b>Default Tx Settings</b></span>
                        <select id="txSettings"  name="txSettings">
                          <option>Full</option>
                          <option>Half</option>
                          <option>Quarter</option>
                          <option>Eighth</option>
                          <option>Minimum</option>
                        </select>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Automatic Tx Power Control</b></span>
                        <input type="radio" value="enable"  id="powerControl" name="powerControl" checked/>enable
                        <input type="radio" value="disable"  id="powerControl" name="powerControl" /> disable
</div>
                    
                      <h3 class="heading">WLAN Healing</h3>
                      <div class="formSep">
                        <span ><b>Maximum Neighbours to participate in Self-healing</b></span>
                        <select name="maximum" id="maximum" style="width:80px" >
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                        </select>
                      </div>
                      <div class="formSep">
                        <span ><b>Self healing wait Time after AP Failure(mins)</b></span>
                        <select id="mins" name="mins"   style="width:80px" >
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
                    
                      <h3 class="heading">Coverage Hole Detection</h3>
                      <div class="formSep">
                        <span ><b>Periodic Coverage Hole Detection</b></span>
                        <input type="radio" value="enable" id="holeDetection" name="holeDetection" checked/>enable
                        <input type="radio" value="disable" id="holeDetection" name="holeDetection" />disable </div>
                      <div class="formSep">
                        <span  ><b>Alert Serverity For Coverage Hole</b></span>
                        <input type="radio" value="Critical" id="coverageHole" name="coverageHole" checked/>Critical
                        <input type="radio" value="Major" id="coverageHole" name="coverageHole" />Major </div>
                    </div>
                  </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit" onclick="apply();" >Apply</button>
                  </div>
        </div>
        
        
        
   <script type="text/javascript">
	 
	$.ajaxSetup ({
		cache: false 
	});
	
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_basic_rf_management",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#txSettings").val(obj.txSettings);
			$("#maximum").val(obj.maximum);
			$("#mins").val(obj.mins);
			$("input[name='powerControl'][value="+obj.powerControl+"]").attr("checked",true); 
			$("input[name='holeDetection'][value="+obj.holeDetection+"]").attr("checked",true); 
			$("input[name='coverageHole'][value="+obj.coverageHole+"]").attr("checked",true); 
			 
      	}}); 
	}  
	read();
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)

 		var content={"txSettings":$("#txSettings").val(),
 					"maximum":$("#maximum").val(),
 					"powerControl":$("input[name='powerControl']:checked").attr("value"),
 					"mins":$("#mins").val(),
 					"holeDetection":$("input[name='holeDetection']:checked").attr("value"),
 					"coverageHole":$("input[name='coverageHole']:checked").attr("value")
 					};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_basic_rf_management&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
</script>
        
