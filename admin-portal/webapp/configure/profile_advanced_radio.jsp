<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
              <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Profile Groups</h3>
                    </div>
                    
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">Group-1</a></li>
                          <li> <a href="#tab2" data-toggle="tab">Group 2</a></li>
                          <li><a href="#tab3" data-toggle="tab">Group 3 </a></li>
                          <li><a href="#tab4" data-toggle="tab">Group 4</a></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                            <table class="table table-striped table-bordered dTableR" id="dt_a">
                              <thead>
                                <tr>
                                  <th>Name</th>
                                  <th><span class="optional">Radio</span></th>
                                  <th><span class="essential persist">Authentication</span></th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>NG_11g-11</td>
                                  <td>802.11b/bg/ng</td>
                                  <td>Open System</td>
                                </tr>
                                <tr>
                                  <td>NG_11a-11</td>
                                  <td>802.11a/na</td>
                                  <td>Open System</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                          <!--tab2-->
                          <div class="tab-pane" id="tab2"> </div>
                          <div class="tab-pane" id="tab3"> </div>
                          <div class="tab-pane" id="tab4"> </div>
                        </div>
                      </div>
              </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-warning" type="submit">Delete</button>
                    <button class="btn btn-primary" type="submit">Edit</button>
                    <button class="btn btn-primary" type="submit">Apply</button>
                  </div>
              </div>
        </div>
