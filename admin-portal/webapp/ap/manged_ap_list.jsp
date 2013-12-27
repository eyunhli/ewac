<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<div class="main_content">
  <div class="row-fluid">
    <div class="span12">
      <h3 class="heading">Managed AP List</h3>
      <table class="table table-striped table-bordered dTableR" id="dt_a">
        <thead>
          <tr>
            <th>&nbsp;</th>
            <th><span class="optional">IP</span></th>
            <th>MAC</th>
            <th><span class="essential persist">Model</span></th>
            <th>Name</th>
            <th>Status</th>
            <th>Site</th>
            <th>Group Name</th>
            <th>Capability</th>
            <th>2.4ghz Mode</th>
            <th>5ghz Mode</th>
            <th>Select</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${aps}" var="ap">
          <tr>
            <td>&nbsp;${ap.id}</td>
            <td>&nbsp;${ap.ip}</td>
            <td>&nbsp;${ap.mac}</td>
            <td class="center">&nbsp;${ap.model}</td>
            <td class="center">&nbsp;${ap.name}</td>
            <td class="center">&nbsp;${ap.status}</td>
            <td class="center">&nbsp;${ap.site}</td>
            <td class="center">&nbsp;${ap.groupName}</td>
            <td class="center">&nbsp;${ap.capability}</td>
            <td class="center">&nbsp;${ap.mode24ghz}</td>
            <td class="center">&nbsp;${ap.mode5ghz}</td>
            <td class="center">&nbsp;<span class='formSep'><input type='radio' value='${ap.id}' name='id'></span></td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div></div>

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
