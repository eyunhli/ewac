<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>		
		<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">User Management</h3>
                    </div>
                    
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">Management</a></li>
                          <li> <a href="#tab2" data-toggle="tab">Wifi Clients</a></li>
                          <li><a href="#tab3" data-toggle="tab">Captive Portl Account </a></li>
                          <li><a href="#tab4" data-toggle="tab">Captive Portal Users</a></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <div class="tab-pane active" value="1" id="tab1">
                            <table class="table table-bordered " >
                              <thead>
                                <tr>
                                  <th>&nbsp; </th>
                                  <th><span class="optional">User Name</span></th>
                                  <th><span class="essential persist">User type</span></th>
                                </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${users}" var="it">
                              <c:if test="${it.userType==1}">
                                <tr>
                                  <td><span class="formSep">
                                    <input name="id" type="radio" id="id" value="${it.userid}">
                                  </span></td>
                                  <td>${it.username}</td>
                                  <td>${it.type}</td>
                                </tr>
                                </c:if>
                               </c:forEach>
                              </tbody>
                            </table>
                          </div>
                          <!--tab2-->
                          <div class="tab-pane" value="2"  id="tab2">
							<table class="table table-bordered " >
                              <thead>
                                <tr>
                                  <th>&nbsp; </th>
                                  <th><span class="optional">User Name</span></th>
                                  <th><span class="essential persist">User type</span></th>
                                </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${users}" var="it">
                              <c:if test="${it.userType==2}">
                                <tr>
                                  <td><span class="formSep">
                                    <input name="id" type="radio" id="id" value="${it.userid}">
                                  </span></td>
                                  <td>${it.username}</td>
                                  <td>${it.type}</td>
                                </tr>
                                </c:if>
                               </c:forEach>
                              </tbody>
                            </table>
							</div>
                          <div class="tab-pane" value="3"  id="tab3">
							<table class="table table-bordered " >
                              <thead>
                                <tr>
                                  <th>&nbsp; </th>
                                  <th><span class="optional">Account Name</span></th>
                                  <th><span class="essential persist">Expiry</span></th>
                                <th><span class="essential persist">Amount</span></th>
                                </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${users}" var="it">
                              <c:if test="${it.userType==3}">
                                <tr>
                                  <td><span class="formSep">
                                   <input name="id" type="radio" id="id" value="${it.userid}">
                                  </span></td>
                                  <td>${it.username}</td>
                                  <td>${it.value} ${it.type}</td>
                                  <td>${it.password}</td>
                                </tr>
                                </c:if>
                               </c:forEach>
                              </tbody>
                            </table>
						  </div>
                          <div class="tab-pane" value="4"  id="tab4">
							<table class="table table-bordered " >
                              <thead>
                                <tr>
                                  <th>&nbsp; </th>
                                  <th><span class="optional">User Name</span></th>
                                  <th><span class="essential persist">User type</span></th>
                                </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${users}" var="it">
                              <c:if test="${it.userType==4}">
                                <tr>
                                  <td><span class="formSep">
                                    <input name="id" type="radio" id="id" value="${it.userid}">
                                  </span></td>
                                  <td>${it.username}</td>
                                  <td>${it.type}</td>
                                </tr>
                                </c:if>
                               </c:forEach>
                              </tbody>
                            </table>
						</div>
                        </div>
                      </div>
                    </div>
                  <div class="form-actions">
                  	<button class="btn btn-primary" onclick="add();"  type="submit">Add</button>
                    <button class="btn " type="submit"onclick="edit();">Edit</button> 
                    <button class="btn btn-warning" onclick="del();" type="submit">Remove</button> 
                    <button class="btn btn-primary" type="submit">Export</button> 
                  </div>
                </div>
          </div>
            </div>
<script type="text/javascript">
	$.ajaxSetup ({
		cache: false 
	});
	function del(id) {  
		if(!confirm("Are you sure you want to delete?")){
			return false;
		}
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "maintenance/userManagement/delete.json",                                    
    		data: "id="+$("input[name='id']:checked").val(), 
    		success: function(msg){                 
      			alert("delete success");
      			$('#contentwrapper').load('<%=path%>/ac/maintenance/userManagement'); 
    		}
		});
	}  
	function edit(){
		$('#contentwrapper').load('<%=path%>/ac/maintenance/userManagement/edit?id='+$("input[name='id']:checked").val());
	}
	function add(){
		$('#contentwrapper').load('<%=path%>/maintenance/user_management_add.jsp?tab='+$("div.active").attr('value'));
	}
</script>