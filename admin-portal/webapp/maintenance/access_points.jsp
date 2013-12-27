<%@ page contentType="text/html; charset=utf-8"%>
 <div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Reboot Access Points</h3>
                      <table class="table table-striped table-bordered dTableR" id="dt_a">
                        <thead>
                          <tr>
                            <th><span class="formSep">
                              <input type="checkbox"  onclick="checkId(this.checked)">
                            </span></th>
                            <th>IP</th>
                            <th>MAC</th>
                            <th>Name</th>
                            <th>Building</th>
                            <th>Floor</th>
                            <th>Location</th>
                            <th>Status</th>
                          </tr>
                        </thead>
                        <tbody id="apList">
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit">Reboot</button>
                  </div>
        </div>
        <script>
        $.ajax({ url: "ap/apList.json",async:false,success: function(msg){
      		$.each(msg,function(i,it){ 
      		var str = "<tr>"
                            +"   <td><span class='formSep'><input type='checkbox' value='"+it.id+"' name='id'></span></td>"
                            +"   <td>"+it.ip+"</td>"
                            +"   <td>"+it.mac+"</td>"
                            +"   <td>"+it.name+"</td>"
                            +"   <td>"+it.building+"</td>"
                            +"   <td>"+it.floor+"</td>"
                            +"   <td>"+it.location+"</td>"
                            +"   <td>"+it.status+"</td>"
                          +"</tr>"
      			$('#apList').append(str)
      		});
      		
      	}});
      	
      	function checkId(it){
      	alert(it)
			$("input[name='id']").attr("checked",it);
		}
        </script>