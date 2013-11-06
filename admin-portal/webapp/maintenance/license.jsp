<%@ page contentType="text/html; charset=utf-8"%>
 <div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">License Settings</h3>
                    </div>
                     
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">Inventory</a></li>
                          <li> <a href="#tab2" data-toggle="tab">Server Settings</a></li>
                          <li><a href="#tab3" data-toggle="tab">Registration</a></li>
                          <li><a href="#tab4" data-toggle="tab">Advanced</a></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                          <div class="formSep">
                          <label class="act-primary"><b>Summary</b></label>
                           <span class="span3"><b>Total AP License</b></span>
                              200<br><br>
                          <span class="span3"><b>Nmode License Status</b></span>
                               Preinstalled<br><br>
                         <span class="span3"><b>Used License Count</b></span>
                              0<br>   <br>
                         <span class="span3"><b>Available License Count</b></span>
                               2000  
                          </div>



                          <label class="act-primary"><b>Key Details</b></label>
                          
                            <table class="table  table-bordered  "  >
                              <thead>
                                <tr>
                                  <th>Key </th>
                                  <th> Key Type </th>
                                  <th> Key Status </th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td> 
                                    NG2f8-12A9-E55C-D92A-F763-998F-F917-29D4-9534
                                   </td>
                                  <td>200-AP</td>
                                  <td>Registered</td>
                                </tr>
                              </tbody>
                            </table><div class="form-actions">
                    <button class="btn " type="submit">Refresh</button>
                  </div>
                          </div>
                          <!--tab2-->
                         <div class="tab-pane " id="tab2">
                          <div class="formSep">
                            
                          <label class="act-primary"><b>Update Form</b></label>
                          <p><input type="radio" checked="" value="option1" id="optionsRadios3" name="optionsRadios">
Default Update Server &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" checked="" value="option1" id="optionsRadios3" name="optionsRadios"> Specify Update Server </p>
                        <b>Server Address</b> <input type="text" value=" update1.beta.netgear"/>
                          <br>
                         <p> <input type="checkbox" value="option1" name="days2" /> 
                          <b>Use a Proxy Server to Connect to the Internet</b>
                          </p>
                          <span class="span3"><b>Proxy Server</b></span>
                          <input type="text"/>
                             <br>

                            <span class="span3"><b>Proxy Port</b></span>
                              <input type="text" value="0"/>
                             <br>
                          </div>

                        <label class="act-primary"><b>This Proxy Server Requires Authentication</b><br>
                        </label>
                         <span class="span3"><b>User Name</b></span>
                        <input type="text"/>
                        <br>
                        <span class="span3"><b>Password</b></span>
                        <input type="text"/>
                        </span> 
                        
                        <div class="form-actions">
                    <button class="btn " type="submit">Cancle</button>
                    <button class=" btn-primary" type="submit">Apply</button>                  </div>
                        
                        </div>
                         <!--tab3-->
                      <div class="tab-pane" id="tab3">
                        <div class="formSep">
                            <b>Registration Key</b> <input type="text" value=" "/>
                         </div>
                         <div class="pull-left" style="margin-bottom:5px;">
                          <button class="btn-primary" type="submit">Add</button>
                          <button class="btn-warning" type="submit">Delete</button>
                          </div><br>
<br>

                          <table class="table table-bordered "  >
                            <thead>
                                <tr>  <th> 
                                    <input type="checkbox" value="option1" name="optionsCheckboxList1" disabled>
                                   </th>
                                
                                  <th>Key </th>
                                  <th> Key Type </th>
                                  <th> Key Status </th>
                                </tr>
                            </thead>
                              <tbody>
                                <tr><td> 
                                    <input type="checkbox" value="option1" name="optionsCheckboxList2" disabled>
                                   </td>
                                  <td> 
                                    NG2f8-12A9-E55C-D92A-F763-998F-F917-29D4-9534
                                  </td>
                                  <td>200-AP</td>
                                  <td>Registered</td>
                                  
                                </tr>
                              </tbody>
                        </table>
                        
                       <br><br>
                           
                            <div class="row-fluid">
                              <div class="span6">
                                <label class="act-primary"><b>Customer Information</b></label>
                                <div class="formSep"><span class="span3"><b>Company Name</b></span>
                                  <input type="text" value=" "/>
                                  <br>
                                </div>
                                <div class="formSep"> <span class="span3"><b>First Name</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Last Name</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Email Address</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Fax Number</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Phone Number</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"> <span class="span3"><b>Address</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Address 2 </b></span> 
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Zip</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>City</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>State</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Country</b></span>
                                  <input type="text" value=" "/>
                                </div>
                              </div>
                              <div class="span6">
                                <label class="act-primary"><b>VAR Information</b></label>
                                <div class="formSep"><span class="span3"><b>Company Name</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>First Name</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Last Name</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Email Address</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Fax Number</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Phone Number</b></span>
                                  <input type="text" value=" "/>
                                </div> 
                                <div class="formSep"> <span class="span3"><b>Address</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Address 2</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Zip</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>City</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>State</b></span>
                                  <input type="text" value=" "/>
                                </div>
                                <div class="formSep"><span class="span3"><b>Country</b></span>
                                  <input type="text" value=" "/>
                                </div>
                              </div>
                            
                        </div>
                                                <div class="form-actions">
                    <button class="btn " type="submit">Cancle</button>
                    <button class=" btn" type="submit">Refresh</button> 
                    <button class=" btn-primary" type="submit">Apply</button>
                                     </div>

                      </div>
                          <!--tab4-->
                          <div class="tab-pane" id="tab4"> 
                           <table class="table table-striped table-bordered dTableR" id="dt_a">
                              <thead>
                                <tr>
                                  <th>Key </th>
                                  <th> Key Type </th>
                                  <th> Key Status </th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td> 
                                    NG2f8-12A9-E55C-D92A-F763-998F-F917-29D4-9534
                                   </td>
                                  <td>200-AP</td>
                                  <td>Registered</td>
                                </tr>
                              </tbody>
                            </table>
                          <div class="form-actions">
                    <button class=" btn-primary " type="submit">Replace</button>
                                      </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
        </div>
