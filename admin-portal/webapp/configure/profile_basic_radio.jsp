<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String path = request.getContextPath();
%>
<script>
function initTab(id,msg){
	var obj = JSON.parse(msg); 
	
	$("#title"+id).text(obj.name)
	$("#name"+id).val(obj.name)
	$("#ssid"+id).val(obj.ssid)
	$("input[name='broadcast"+id+"'][value="+obj.broadcast+"]").attr("checked",true); 
	$("#authentication"+id).val(obj.authentication)
	$("#dataEncryption"+id).val(obj.dataEncryption)
	$("#securitySeparation"+id).val(obj.securitySeparation)
	$("#vlan"+id).val(obj.vlan)
	$("input[name='macAcl"+id+"'][value="+obj.macAcl+"]").attr("checked",true); 
	$("#macAclGroup"+id).val(obj.macAclGroup)
	$("input[name='captivePotral"+id+"'][value="+obj.captivePotral+"]").attr("checked",true);
	$("input[name='wmm"+id+"'][value="+obj.wmm+"]").attr("checked",true);
	$("input[name='wmmPowersave"+id+"'][value="+obj.wmmPowersave+"]").attr("checked",true);
	
	
}
</script>
<div class="main_content">
              <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Edit Profile(Basic)</h3>
                    </div>
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">802.11b/bg/ng</a></li>
                          <li> <a href="#tab2" data-toggle="tab">802.11a/na</a></li>
                          <li></li>
                          <li></li>
                        </ul>
                        <div class="tab-content ">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                            <div class="tabbable tabbable-bordered">
                              <ul class="nav nav-tabs">
                              	<c:set var="index" value="0"/>
                                <c:forEach items="${list}" var="it" varStatus="status">
                                <c:if test="${fn:contains(it.name,'_802_11b_bg_ng')}">
                                <li class="${index==0?'active':''}"><a id="title${it.id}" href="#tab${it.id}b" data-toggle="tab">${it.id}</a></li>
                                <c:set var="index" value="1"/>
                                </c:if>
                                </c:forEach>
                                 
                                <li> <a href="javascript:void()" onclick="addTab('_802_11b_bg_ng')" data-toggle="tab">+</a></li>                              </ul>
                              <div class="tab-content" style="height:720px; overflow-y:auto">
                                <!--tab1b-->
                                <c:set var="index" value="0"/>
                                <c:forEach items="${list}" var="it" varStatus="status">
                                <c:if test="${fn:contains(it.name,'_802_11b_bg_ng')}">
                                <div class="tab-pane ${index==0?'active':''}" id="tab${it.id}b">
                                <c:set var="index" value="1"/>
                                    <div class="row-fluid">
                                      <div class="formSep">
                                        <label  class="act-primary"> <b>Profile Definition</b></label> 
                                          <span class="span5"><b>Name</b></span>
                                          <input type="text" id="name${it.id}" name="name${it.id}"/>
                                          <br>
                                   	 	  <span class="span5"><b>Wireless Network Name(SSID)</b></span></label>
                                          <input type="text" id="ssid${it.id}" name="ssid${it.id}"/>
                                          <br>
                                          <span class="span5"><b>Broadcast Wireless Network Name(SSID)</b></span>
                                          <input type="radio" name="broadcast${it.id}" id="broadcast${it.id}" value="yes">Yes
                                          <input type="radio" name="broadcast${it.id}" id="broadcast${it.id}" value="no">No
                                      </div>
                                      <div class="formSep">
                                        <label  class="act-primary"> <b>Client Authentication</b></label> 
                               <span class="span5"><b>Network Authentication</b></span>
                                            <select id="authentication${it.id}" name="authentication${it.id}" >
                                              <option>Open System</option>
                                            </select><br>
                               <span class="span5"><b>Data Encryption</b></span></label>
                                            <select id="dataEncryption${it.id}" name="dataEncryption${it.id}" >
                                              <option>None</option>
                                            </select><br>
                                    <span class="span5"><b>Wireless Client Security Separation</b></span>
                                        <select id="securitySeparation${it.id}" name="securitySeparation${it.id}" >
                                          <option>Disable</option>
                                        </select>
                                        <br>
                                     <span class="span5"><b>VLAN</b></span>
                                      <input id="vlan${it.id}" name="vlan${it.id}" type="text" value="1"/>
                                      </div> 
                                             
                                      <div class="formSep">
                                       <label class="act-primary"> <b>Authentication Settings</b></label> 
                                       <span class="span5"><b>MAC ACL</b></span>
                                       <input type="radio" name="macAcl${it.id}" id="macAcl${it.id}" value="local">Local                              
                                       <input type="radio" name="macAcl${it.id}" id="macAcl${it.id}" value="external">External <br>
                                       <br>
                                    <span class="span5"><b>Local MAC ACL Group</b></span>
                                            <select id="macAclGroup${it.id}"  name="macAclGroup${it.id}" >
                                              <option>basic</option>
                                            </select><br>
                                        <span class="span5"><b>
                                          
                                           Captive Potral</b></span> <input id="captivePotral${it.id}" name="captivePotral${it.id}" type="checkbox" value="1"  disabled/><br>

                                      </div>  
                                                                                  
                                      <div class="formSep">
                                        <span  class="act-primary"> <b>Wireless Qos</b></span><br>
                                          <span class="span5"><b>Wi-Fi MULTIMEDIA(WMM)</b></span>
                                          <input type="radio" name="wmm${it.id}" id="wmm${it.id}" value="enable"> enable
                                          <input type="radio" name="wmm${it.id}" id="wmm${it.id}" value="disable">disable <br><br>
                                         <span class="span5"><b> WMM Powersave</b></span></label>
                                          <input type="radio" name="wmmPowersave${it.id}" id="wmmPowersave${it.id}" value="enable">enable
                                          <input type="radio" name="wmmPowersave${it.id}" id="wmmPowersave${it.id}" value="disable">disable <br>
                                      </div>                                              
                                  </div>
                                  <script>initTab('${it.id}','${it.json}')</script>
                                  <div class="form-actions">
				                    <button class="btn" type="submit">Cancel</button>
				                    <button class="btn btn-warning" onclick="del('${it.name}')" type="submit">Delete</button>
				                    <button class="btn btn-primary" onclick="apply('${it.id}','${it.name}')" type="submit">Apply</button>
				                  </div>
                                </div>
                                </c:if>
                               </c:forEach>    
                                <!--tab2b-->
                              </div>
                            </div>
                          </div>
                          <!--tab2-->
                          <div class="tab-pane" id="tab2"> 
                          <div class="tabbable tabbable-bordered">
                              <ul class="nav nav-tabs">
                              	<c:set var="index" value="0"/>
                                <c:forEach items="${list}" var="it" varStatus="status">
                                <c:if test="${fn:contains(it.name,'_802_11a_na')}">
                                <li class="${index==0?'active':''}"><a id="title${it.id}" href="#tab${it.id}b" data-toggle="tab">${it.id}</a></li>
                               	<c:set var="index" value="1"/>
                               	</c:if>
                                </c:forEach>
                                 
                                <li> <a href="javascript:void()" onclick="addTab('_802_11a_na')" data-toggle="tab">+</a></li>                              </ul>
                              <div class="tab-content" style="height:720px; overflow-y:auto">
                                <!--tab1b-->
                                <c:set var="index" value="0"/>
                                <c:forEach items="${list}" var="it" varStatus="status">
                                <c:if test="${fn:contains(it.name,'_802_11a_na')}">
                                <div class="tab-pane ${index=='0'?'active':''}" id="tab${it.id}b">
                                <c:set var="index" value="1"/>
                                    <div class="row-fluid">
                                      <div class="formSep">
                                        <label  class="act-primary"> <b>Profile Definition</b></label> 
                                          <span class="span5"><b>Name</b></span>
                                          <input type="text" id="name${it.id}" name="name${it.id}"/>
                                          <br>
                                   	 	  <span class="span5"><b>Wireless Network Name(SSID)</b></span></label>
                                          <input type="text" id="ssid${it.id}" name="ssid${it.id}"/>
                                          <br>
                                          <span class="span5"><b>Broadcast Wireless Network Name(SSID)</b></span>
                                          <input type="radio" name="broadcast${it.id}" id="broadcast${it.id}" value="yes">Yes
                                          <input type="radio" name="broadcast${it.id}" id="broadcast${it.id}" value="no">No
                                      </div>
                                      <div class="formSep">
                                        <label  class="act-primary"> <b>Client Authentication</b></label> 
                               <span class="span5"><b>Network Authentication</b></span>
                                            <select id="authentication${it.id}" name="authentication${it.id}" >
                                              <option>Open System</option>
                                            </select><br>
                               <span class="span5"><b>Data Encryption</b></span></label>
                                            <select id="dataEncryption${it.id}" name="dataEncryption${it.id}" >
                                              <option>None</option>
                                            </select><br>
                                    <span class="span5"><b>Wireless Client Security Separation</b></span>
                                        <select id="securitySeparation${it.id}" name="securitySeparation${it.id}" >
                                          <option>Disable</option>
                                        </select>
                                        <br>
                                     <span class="span5"><b>VLAN</b></span>
                                      <input id="vlan${it.id}" name="vlan${it.id}" type="text" value="1"/>
                                      </div> 
                                             
                                      <div class="formSep">
                                       <label class="act-primary"> <b>Authentication Settings</b></label> 
                                       <span class="span5"><b>MAC ACL</b></span>
                                       <input type="radio" name="macAcl${it.id}" id="macAcl${it.id}" value="local">Local                              
                                       <input type="radio" name="macAcl${it.id}" id="macAcl${it.id}" value="external">External <br>
                                       <br>
                                    <span class="span5"><b>Local MAC ACL Group</b></span>
                                            <select id="macAclGroup${it.id}"  name="macAclGroup${it.id}" >
                                              <option>basic</option>
                                            </select><br>
                                        <span class="span5"><b>
                                          
                                           Captive Potral</b></span> <input id="captivePotral${it.id}" name="captivePotral${it.id}" type="checkbox" value="1"  disabled/><br>

                                      </div>  
                                                                                  
                                      <div class="formSep">
                                        <span  class="act-primary"> <b>Wireless Qos</b></span><br>
                                          <span class="span5"><b>Wi-Fi MULTIMEDIA(WMM)</b></span>
                                          <input type="radio" name="wmm${it.id}" id="wmm${it.id}" value="enable"> enable
                                          <input type="radio" name="wmm${it.id}" id="wmm${it.id}" value="disable">disable <br><br>
                                         <span class="span5"><b> WMM Powersave</b></span></label>
                                          <input type="radio" name="wmmPowersave${it.id}" id="wmmPowersave${it.id}" value="enable">enable
                                          <input type="radio" name="wmmPowersave${it.id}" id="wmmPowersave${it.id}" value="disable">disable <br>
                                      </div>                                              
                                  </div>
                                  <script>initTab('${it.id}','${it.json}')</script>
                                  <div class="form-actions">
				                    <button class="btn" type="submit">Cancel</button>
				                    <button class="btn btn-warning" onclick="del('${it.name}')" type="submit">Delete</button>
				                    <button class="btn btn-primary" onclick="apply('${it.id}','${it.name}')" type="submit">Apply</button>
				                  </div>
                                </div>
                                </c:if>
                               </c:forEach>    
                                   
                                
                                <!--tab2b-->
                              </div>
                            </div> 
                          </div>
                          
                        </div>
                      </div>
              </div>
                  
              </div>
        </div>

        
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	
	function apply(id,name) {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
 		var content={"name":$("#name"+id).val(),
 					 "ssid":$("#ssid"+id).val(),
 					 "broadcast":$("input[name='broadcast"+id+"']:checked").val(),
 					 "authentication":$("#authentication"+id).val(),
 					 "dataEncryption":$("#dataEncryption"+id).val(),
 					 "securitySeparation":$("#securitySeparation"+id).val(),
 					 "vlan":$("#vlan"+id).val(),
 					 "macAcl":$("input[name='macAcl"+id+"']:checked").val(),
 					 "macAclGroup":$("#macAclGroup"+id).val(),
 					 "captivePotral":$("input[name='captivePotral"+id+"']:checked").val(),
 					 "wmm":$("input[name='wmm"+id+"']:checked").val(),
 					 "wmmPowersave":$("input[name='wmmPowersave"+id+"']:checked").val(),
 					};
 		$("#title"+id).text($("#name"+id).val());
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name="+name+"&type=profileBasicRadio&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  

	function addTab(type){
		var timestamp=new Date().getTime();
		var content={"type":type,"name":"......"};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name="+type+"_"+timestamp+"&type=profileBasicRadio&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			$('#contentwrapper').load("<%=path%>/ac/configure/profileBasicRadio")   ; 
    		}
		});
	}
	
	function del(name){
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/delete.json",                                    
    		data: "name="+name, 
    		success: function(msg){            
      			$('#contentwrapper').load("<%=path%>/ac/configure/profileBasicRadio")   ; 
    		}
		});
	}
	
</script>
        