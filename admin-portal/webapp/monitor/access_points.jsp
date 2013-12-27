<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Access Point</h3>
                      <table class="table table-striped table-bordered dTableR" id="dt_a">
                        <thead>
                          <tr>
                            <th><span class="optional">Select</span></th>
                            <th><span class="essential persist">Status</span></th>
                            <th><span class="essential persist">Name</span></th>
                            <th>Model</th>
                            <th>MAC</th>
                            <th>IP</th>
                            <th>Site</th>
                            <th>Group</th>
                            <th>Building</th>
                            <th>Floor</th>
                            <th>Location</th>
                            <th>2.4/5 GHz Channel</th>
                            <th>Uptime</th>
                          </tr>
                        </thead>
                        <tbody id="apList">
                          <tr>
                            <td>&nbsp; </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                            <td class="center">&nbsp;</td>
                          </tr>
                        </tbody>
                      </table>
                      <div class="form-actions">
                        <button class="btn" type="submit">Refresh</button> 
                        <button class="btn btn-primary" type="submit">Details</button>
                        <button class="btn btn-primary" type="submit">Export</button>
                      </div>
                    </div>
                  </div>
        </div>

  <script>
        $.ajax({ url: "ap/apList.json",async:false,success: function(msg){
      		$.each(msg,function(i,it){ 
      		var str = "<tr>"
                            +"   <td><span class='formSep'><input type='radio' value='"+it.id+"' name='id'></span></td>"
                            +"   <td>"+it.status+"</td>"
                            +"   <td>"+it.name+"</td>"
                            +"   <td>"+it.model+"</td>"
                            +"   <td>"+it.mac+"</td>"
                            +"   <td>"+it.ip+"</td>"
                            +"   <td>"+it.site+"</td>"
                            +"   <td>"+it.sroup+"</td>"
                            +"   <td>"+it.building+"</td>"
                            +"   <td>"+it.floor+"</td>"
                            +"   <td>"+it.location+"</td>"
                            +"   <td>"+it.mode24ghz+"/"+it.mode5ghz+"</td>"
                            +"   <td>"+it.uptime+"</td>"
                          +"</tr>"
      			$('#apList').append(str)
      		});
      		
      	}});
      	
      	function checkId(it){
      	alert(it)
			$("input[name='id']").attr("checked",it);
		}
        </script>