<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<div class="main_content">
  <div class="row-fluid">
    <div class="span12">
    <div class="formSep">
            <span class="span3"><b>Self</b></span>
             <select id="region" name="region">
				<option>192.168.1.200</option>
		    </select>
          </div>
      <h3 class="heading">WLAN Group Assignmeng</h3>
      <table class="table table-striped table-bordered dTableR" id="dt_a">
        <thead>
          <tr>
            <th><span class="optional">IP</span></th>
            <th>MAC</th>
            <th><span class="essential persist">Model</span></th>
            <th>Name</th>
            <th>Builing</th>
            <th>Floor</th>
            <th>Status</th>
            <th>Remote</th>
            <th>Sentry</th>
            <th>Group Name</th>
          </tr>
        </thead>
        <tbody id="apList">
          
        </tbody>
      </table>
    </div>
     <div class="form-actions">
        <button class="btn" type="submit">Cancel</button>
        <button class="btn btn-primary" onclick="apply();" type="submit">Apply</button>
      </div>
  </div>
</div>

<script>

var groupName = "<option>Basic</option>"




$.ajax({ url: "configure/groups.json",async:false,success: function(msg){
	$.each(msg,function(i,it){ 
		groupName = groupName+"<option>"+it+"</option>"
	});
}});
      	
$.ajax({ url: "ap/apList.json",async:false,success: function(msg){
	$.each(msg,function(i,it){ 
	var str = "<tr>"
                    +"   <td>"+it.ip+"</td>"
                    +"   <td>"+it.mac+"</td>"
                    +"   <td>"+it.model+"</td>"
                    +"   <td>"+it.name+"</td>"
                    +"   <td>"+it.building+"</td>"
                    +"   <td>"+it.floor+"</td>"
                    +"   <td>"+it.status+"</td>"
                    +"   <td>"+it.remote+"</td>"
                    +"   <td>"+it.sentry+"</td>"
                    +"   <td><select id='"+it.id+"' name='groupName'>"+groupName+"</select></td>"
                  +"</tr>"
		$('#apList').append(str)
		$("select[id='"+it.id+"']").val(it.groupName);
	});
}});

function apply(){
		var apList = new Array();
		$("select[name='groupName']").each(function(i){
		 	var id=	$(this).attr("id");
		 	var val = $(this).val(); 
			apList[i] = {"id":id,"groupName":val};
		}); 
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "ap/updateGroupName.json",                               
    		data: "json="+ JSON.stringify(apList), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}
</script>