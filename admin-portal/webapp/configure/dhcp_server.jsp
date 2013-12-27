<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<div class="main_content">
                  <div class="row-fluid">
                             
                    <div class="span12">
                      <h3 class="heading">DHCP Server List <button class="btn  btn-primary btn-small" type="submit" onclick="$('#contentwrapper').load('<%=path%>/configure/dhcp_server_add.jsp')" > <i class="icon-plus icon-white"></i>Add</button> </h3>
                      <table class="table table-striped table-bordered dTableR" id="dt_a">
                        <thead>
                          <tr>
                           
                            <th>VLAN</th>
                            <th><span class="essential persist"> IP Network</span></th>
                            <th>Subnet Mask</th>
                            <th>Default Gateway</th>
                            <th>Start IP</th>
                            <th>End IP</th>
                            <th>Primary DNS</th>
                            <th>Secondary DNS</th>
                            <th>WINS Server</th>
                            <th>Enable</th>
                             <th>Edit/Remove</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${dhcpServers}" var="it">
                          <tr>
                            <td>${it.vlan}</td>
                            <td>${it.ipNetwork}</td>
                            <td>${it.subnetMask}</td>
                            <td>${it.defaultGateway}</td>
                            <td>${it.startIp}</td>
                            <td>${it.endIp}</td>
                            <td>${it.primaryDns}</td>
                            <td>${it.secondaryDns}</td>
                            <td>${it.winsServer}</td>
                            <td>${it.enable}</td>
                             <td> <button class="btn  btn-primary btn-small" type="submit" onclick="$('#contentwrapper').load('<%=path%>/ac/configure/dhcpServer/edit?id=${it.id}');" ><i class="icon-pencil icon-white"></i>Edit</button> <button class="btn btn-danger btn-small "  onclick="del('${it.id}');" type="submit"><i class="icon-trash  icon-white "></i>Remove</button>   </td>
                          </tr>
                        </c:forEach>
                        </tbody>
                      </table>
                      
                      
				    </div>
                  </div>
        </div>
 <!-- datatable -->
<script src="<%=path%>/lib/datatables/jquery.dataTables.min.js"></script>
<script src="<%=path%>/lib/datatables/extras/Scroller/media/js/dataTables.scroller.min.js"></script>
<!-- datatable table tools -->
<script src="<%=path%>/lib/datatables/extras/TableTools/media/js/TableTools.min.js"></script>
<script src="<%=path%>/lib/datatables/extras/TableTools/media/js/ZeroClipboard.js"></script>
<!-- datatables bootstrap integration -->
<script src="<%=path%>/lib/datatables/jquery.dataTables.bootstrap.min.js"></script>
<!-- datatable functions -->
<script src="<%=path%>/js/gebo_datatables.js"></script>

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
   	 		url: "configure/dhcpServer/delete.json",                                    
    		data: "id="+id, 
    		success: function(msg){                 
      			alert("delete success");
      			$('#contentwrapper').load('<%=path%>/ac/configure/dhcpServer/index'); 
    		}
		});
	}  

</script>