<%@ page contentType="text/html; charset=utf-8"%>		
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
                          <div class="tab-pane active" id="tab1">
                            <table class="table table-bordered " >
                              <thead>
                                <tr>
                                  <th>&nbsp; </th>
                                  <th><span class="optional">User Name</span></th>
                                  <th><span class="essential persist">User type</span></th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td><span class="formSep">
                                    <input name="optionsRadios" type="radio" id="optionsRadios2" value="option2" checked>
                                  </span></td>
                                  <td>admin</td>
                                  <td>Administrator</td>
                                </tr>
                                <tr>
                                  <td><span class="formSep">
                                    <input type="radio" value="option2" id="optionsRadios" name="optionsRadios">
                                  </span></td>
                                  <td>guest</td>
                                  <td>Read Only</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                          <!--tab2-->
                          <div class="tab-pane" id="tab2">wifi</div>
                          <div class="tab-pane" id="tab3">captive</div>
                          <div class="tab-pane" id="tab4">portal</div>
                        </div>
                      </div>
                    </div>
                  <div class="form-actions">
                    <button class="btn " type="submit">Exit</button> 
                    <button class="btn btn-warning" type="submit">Remove</button> 
                    <button class="btn btn-primary" type="submit">Export</button> 
                    <button class="btn btn-primary" type="submit">Add</button>
                  </div>
                </div>
          </div>
            </div>
