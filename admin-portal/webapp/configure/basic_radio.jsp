<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Schedule</h3>
                      <div class="formSep">
                        <span class="span3"><b>Current Time</b></span>
                        <%= new java.util.Date()%>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule Radio On/Off</b></span>										
						<input type="radio" value="0" name="schedule_radio" checked/>on
						<input type="radio" value="1" name="schedule_radio" />off
											 
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule at</b></span>
                        hrs:
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
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule On</b></span>
                       
						<input type="checkbox" value="1" id="schedule" name="schedule" />m 
						<input type="checkbox" value="2" id="schedule" name="schedule" />t 
						<input type="checkbox" value="3" id="schedule" name="schedule" />w  
						<input type="checkbox" value="4" id="schedule" name="schedule" />t 
						<input type="checkbox" value="5" id="schedule" name="schedule" />f 
						<input type="checkbox" value="6" id="schedule" name="schedule" />s 
						<input type="checkbox" value="7" id="schedule" name="schedule" />s 
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>Duration</b></span>
                        hrs:
                        <select style="width:80px;" id="d_hrs" name="d_hrs" >
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
						<select id="d_mins" name="d_mins" style="width:80px;">
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
                      <div class="form-actions">
                        <button class="btn" type="submit">Cancel</button>
                        <button class="btn btn-primary" onclick="apply();" type="submit">Apply</button>
                      </div>
                    </div>
                  </div>
        </div></div>
        <script type="text/javascript">
	 
	$.ajaxSetup ({
		cache: false 
	});
	
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_basic_radio",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#hrs").val(obj.hrs);
			$("#mins").val(obj.mins);
			$("input[name='schedule_radio'][value="+obj.schedule_radio+"]").attr("checked",true); 
			$("#d_hrs").val(obj.d_hrs);
			$("#d_mins").val(obj.d_mins);
			var schedule = obj.schedule.split(",");
			for(i in schedule){
				$("input[name='schedule'][value="+schedule[i]+"]").attr("checked",true); 
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
 		var content={"hrs":$("#hrs").val(),
 					"mins":$("#mins").val(),
 					"schedule_radio":$("input[name='schedule_radio']:checked").attr("value"),
 					"schedule":schedule,
 					"d_hrs":$("#d_hrs").val(),
 					"d_mins":$("#d_mins").val()};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_basic_radio&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
</script>
