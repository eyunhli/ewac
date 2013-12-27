<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Edit Profile(Basic)</h3>
                    </div>
                     
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                        <c:forEach items="${map}" var="it" varStatus="status">
                          <li class="${status.index==0?'active':''}"><a href="#tab${status.index}" data-toggle="tab">${it.key}</a></li>
                          </c:forEach>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <c:forEach items="${map}" var="it" varStatus="status">
                          <div class="tab-pane ${status.index==0?'active':''}" id="tab${status.index}">
                           <div class="tabbable tabbable-bordered">
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab${status.index}a" data-toggle="tab">802.11b/bg/ng</a></li>
                                <li> <a href="#tab${status.index}b" data-toggle="tab">802.11a/na</a></li>
                              </ul>
                              <div class="tab-content" style="height:500px; overflow-y:auto">
                                <!--tab1b-->
                                <div class="tab-pane active" id="tab${status.index}a">
                                  <table class="table table-striped table-bordered mediaTable">
                                    <thead>
                                      <tr>
                                        <th class="optional">Profile Name</th>
                                        <th class="essential persist">SSID</th>
                                        <th class="optional">Rate Limit</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${it.value}" var="info" varStatus="status1">
                                	<c:if test="${fn:contains(info.name,'_802_11b_bg_ng')}">
                                      <tr>
                                        <td>${info.jsonObject['name']}</td>
                                        <td>${info.jsonObject['ssid']}</td>
                                        <td><input type='text' id='${info.name}' class='rateLimit' value='50' size='3' style='width:30px; margin-left:8px;'/></td>
                                      </tr>
                                      </c:if>
                                      </c:forEach>
                                    </tbody>
                                  </table>
                                </div>
                                <!--tab2b-->
                                <div class="tab-pane" id="tab${status.index}b"> 
                                	<table class="table table-striped table-bordered mediaTable">
                                    <thead>
                                      <tr>
                                        <th class="optional">Profile Name</th>
                                        <th class="essential persist">SSID</th>
                                        <th class="optional">Rate Limit</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                     <c:forEach items="${it.value}" var="info" varStatus="status1">
                                	<c:if test="${fn:contains(info.name,'_802_11a_na')}">
                                      <tr>
                                        <td>${info.jsonObject['name']}</td>
                                        <td>${info.jsonObject['ssid']}</td>
                                        <td><input type='text' id='${info.name}' class='rateLimit' value='50' size='3' style='width:30px; margin-left:8px;'/></td>
                                      </tr>
                                   	  </c:if>
                                   	  </c:forEach>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                          </c:forEach>
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
	function read() {  
      	$.ajax({ url: "config/read.json?name=confing_profile_advanced_rate_limit",success: function(msg){
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
		$.each($("input.rateLimit"),function(i,it){ 
			var node = {"name":$(it).attr("id"),"value":$(it).val()}; 
			content[i] = node;
		});
		 
 		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_profile_advanced_rate_limit&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

</script>