<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                             
                    <div class="span12">
                      <h3 class="heading">DHCP Server List <button class="btn  btn-primary btn-small" type="submit" onclick="location.href='con_sys_dh_new.html'" > <i class="icon-plus icon-white"></i>Add</button> </h3>
                          
                     
                      
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
                          <tr>
                           
                            <td>0</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                             <td> <button class="btn  btn-primary btn-small" type="submit" onclick="location.href='con_sys_dh_edit.html'" ><i class="icon-pencil icon-white"></i>Edit</button> <button class="btn btn-danger btn-small " type="submit"><i class="icon-trash  icon-white "></i>Remove</button>   </td>
                          </tr>
                        </tbody>
                      </table>
                      
                      
				    </div>
                  </div>
        </div>
