<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="main_content">
              <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Profile Groups</h3>
                    </div>
                    
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                        <c:forEach items="${map}" var="it" varStatus="status">
                          <li class="${status.index==0?'active':''}"><a href="#tab${status.index}" data-toggle="tab">${it.key}</a></li>
                        </c:forEach>
                           <li><a href="javascript:void()" onclick="$('#contentwrapper').load('/ac/configure/profileAdvancedRadioEdit?type=${group}')" data-toggle="tab"> + </a></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <c:forEach items="${map}" var="it" varStatus="status">
  						  <c:set var="key" value="${it.key}"/>
                          <div class="tab-pane ${status.index==0?'active':''}" id="tab${status.index}">
                            <table class="table table-striped table-bordered dTableR" id="dt_a">
                              <thead>
                                <tr>
                                  <th>Name</th>
                                  <th><span class="optional">Radio</span></th>
                                  <th><span class="essential persist">Authentication</span></th>
                                </tr>
                              </thead>
                              <tbody>
                             	<c:forEach items="${it.value}" var="info" varStatus="status">
                                <tr>
                                  <td>NG_11g-11</td>
                                  <td>802.11b/bg/ng</td>
                                  <td>Open System</td>
                                </tr>
                         		</c:forEach>
                              </tbody>
                            </table>
	                         <div class="form-actions">
			                    <button class="btn" type="submit">Cancel</button>
			                    <button class="btn btn-warning" onclick="delGroup('${it.key}')" type="submit">Delete</button>
			                    <button class="btn btn-primary" onclick="$('#contentwrapper').load('/ac/configure/profileAdvancedRadioEdit?type=${it.key}') " type="submit">Edit</button>
			                    <button class="btn btn-primary" type="submit">Apply</button>
			                  </div>
                          </div>
                          </c:forEach>
                          <!--tab2-->
                          
                        </div>
                      </div>
              </div>
                 
              </div>
        </div>
<script>

function delGroup(type){
	 $.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/delete.json",                                    
    		data: "type="+type, 
    		success: function(msg){            
      			$('#contentwrapper').load("/ac/configure/profileAdvancedRadio")   ; 
    		}
		});
}
</script>
        