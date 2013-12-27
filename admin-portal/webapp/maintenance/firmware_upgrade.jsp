<%@ page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
%>
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/ajaxfileupload.js"></script>
<div id="contentwrapper">
              <div class="main_content">
                <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Firmware Upgrade</h3>
                      <div class="row-fluid">
                        <div class="formSep">
                          <label  class="act-primary"> <b>Profile Definition</b></label>
              			  <input type="radio" name="profileDefinition" id="profileDefinition" onclick="profileDefinition('tftp')" value="tftp">TFTP
                          <input type="radio" name="profileDefinition" id="profileDefinition" onclick="profileDefinition('ftp')" value="ftp">FTP 
                          <input type="radio" name="profileDefinition" id="profileDefinition" onclick="profileDefinition('file')" value="file"> Local File
                           &nbsp; &nbsp; &nbsp;
                           
                          <div id="file">
                          <br>
                          	<form action="/maintenance/uploadFile.jsp" id="form1" name="form1" encType="multipart/form-data"  method="post" target="hidden_frame">  
								<input type="file" id="file" name="file" onchange="fileUpload();"><br><br>
							</form>  
                         	<iframe name='hidden_frame' id="hidden_frame" style='display:none'></iframe>  
                          </div>
                       
                           <div id="ftp"><br>
                          	  <span class="span3"><b>Server IP</b></span>
                              <input type="text" name="serverIp" id="serverIp"><br>
                              <span class="span3"><b>File Name</b></span>
                              <input type="text" name="fileName" id="fileName"><br>
                              <span class="span3"><b>User Name</b></span>
                              <input type="text" name="username" id="username"><br>
                              <span class="span3"><b>Password</b></span>
                              <input type="text" name="password" id="password">
                        	</div>
                        </div>
                        <div class="formSep">
                      <label  class="act-primary"> <b>Boot Information</b></label>
                              <span class="span3"><b>Active Partition</b></span>Partition 1(Firmware version:3.1.0.9_1260)<br> <br>
                              <span class="span3"><b>Boot Partition to Upgrade</b></span>
                              </label>
                              <input type="radio" name="bootPartition" id="bootPartition" value="1">Partition 1
							  <input type="radio" name="bootPartition" id="bootPartition" value="2">Partition 2<br><br>
                              <span class="span3"><b>After upgrade boot from</b></span>
                              <input type="radio" name="upgradeBoot" id="upgradeBoot" value="radio">Partition 1
							  <input type="radio" name="upgradeBoot" id="upgradeBoot" value="radio">Partition 2</div>
                        	 <div class="formSep">
                              <label class="act-primary"> <b>Schedule</b></label>
                            <span class="span3"><b>Scheduled Upgrade Status</b></span>
                              None
                              <br><br>
                             <span class="span3"><b> When to Upgrade?</b></span><br><br>
 								&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;          
							<input type="radio" name="upgrade" id="upgrade" value="later">
							Later hr:
							<select id="hr"  name="hr"  style="width:80px">
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
                              mins:<select id="mins" name="mins"  style="width:80px">
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
                              Month
                              <select id="month" name="month"  style="width:80px">
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
                              </select>
                              Date:
                              <select id="date" name="date"  style="width:80px">
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
                              </select>
                              Year:
                              <select name="year"  style="width:80px">
                                <option>2013</option>
                                <option>2014</option>
                                <option>2015</option>
                                <option>2016</option>
                                <option>2017</option>
                                <option>2018</option>
                                <option>2019</option>
                                <option>2020</option>
                                <option>2021</option>
                                <option>2022</option>
                                <option>2023</option>
                              </select>
                              <br><br>

               &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="upgrade" id="upgrade" value="now">
Now </div>
                      </div>
                  </div>
                </div>
                <div class="form-actions">
                  <button class="btn" type="submit">Cancel</button>
                  <button class="btn btn-primary" type="submit" onclick="apply()">Apply</button>
                </div>
              </div>
            </div></div>

            
                   
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		$.ajax({ url: "config/read.json?name=maintenance_firmware_upgrade",success: function(msg){
			var obj = JSON.parse(msg); 
			profileDefinition(obj.profileDefinition)
			$("input[name='profileDefinition'][value="+obj.profileDefinition+"]").attr("checked",true); 
			$("#serverIp").val(obj.serverIp);
			$("#fileName").val(obj.fileName);
			$("#username").val(obj.username);
			$("#password").val(obj.password);
			$("input[name='bootPartition'][value="+obj.bootPartition+"]").attr("checked",true); 
			$("input[name='upgradeBoot'][value="+obj.upgradeBoot+"]").attr("checked",true); 
			$("input[name='upgrade'][value="+obj.upgrade+"]").attr("checked",true); 
			$("#hr").val(obj.hr);
			$("#mins").val(obj.mins);
			$("#month").val(obj.month);
			$("#date").val(obj.date);
			$("#year").val(obj.year);
      	}}); 
	}  
	function apply() {  
	  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={
 			"profileDefinition":$("input[name='profileDefinition']:checked").val(),
 			"serverIp":$("#serverIp").val(),
 			"fileName":$("#fileName").val(),
 			"username":$("#username").val(),
 			"password":$("#password").val(),
 			"bootPartition":$("input[name='bootPartition']:checked").val(),
 			"upgradeBoot":$("input[name='upgradeBoot']:checked").val(),
 			"upgrade":$("input[name='upgrade']:checked").val(),
 			"hr":$("#hr").val(),
 			"mins":$("#mins").val(),
 			"month":$("#month").val(),
 			"date":$("#date").val(),
 			"year":$("#year").val()};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=maintenance_firmware_upgrade&type=maintenance&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
	
	function profileDefinition(type){
		if(type=='tftp'){
			$("#file").hide();
			$("#ftp").show();
			$("#username").attr("disabled",true);
			$("#password").attr("disabled",true);
		}
		if(type=='ftp'){
			$("#file").hide();
			$("#ftp").show();
			$("#username").attr("disabled",false);
			$("#password").attr("disabled",false);
		}
		if(type=='file'){
			$("#ftp").hide();
			$("#file").show();
		}
	}
	$("#ftp").hide();
	$("#file").hide();
	function fileUpload(){
     	$("#form1").submit();
		var statusInterval = setInterval(
				function() {
					var bodyContent = $(document.getElementById('hidden_frame').contentWindow.document.body).html(); 
					alert(bodyContent);
					if (bodyContent != '') {
						clearInterval(statusInterval);
						
					}
				}.bind(this), 500);
     } 
	
</script>
            