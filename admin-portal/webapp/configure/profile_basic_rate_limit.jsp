<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Rate Limit</h3>
                    </div>
                     
      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">802.11b/bg/ng</a></li>
                          <li> <a href="#tab2" data-toggle="tab">802.11a/na</a></li>
                          <li></li>
                          <li></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                            <table class="table table-striped table-bordered mediaTable">
                              <thead>
                                <tr>
                                  <th class="optional">Profile Name</th>
                                  <th class="essential persist">SSID</th>
                                  <th class="optional">Rate Limit</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>NG_11g_01</td>
                                  <td>NG_11g_01</td>
                                  <td> <div class=" control-group">
                                    <div class="sepH_b progress progress-info progress-striped active pull-left" style="width:180px;">
									  <div style="width: 50%" class="bar"></div>
									</div>
									<div class=" pull-left"><input type="text" class="span1" value="50" size="3" style="width:30px; margin-left:8px;" disabled/></div>
								</div></td>
                                </tr>
                                <tr>
                                  <td>NG_11g_02</td>
                                  <td>NG_11g_02</td>
                                  <td><div class=" control-group">
                                    <div class="sepH_b progress progress-info progress-striped active pull-left" style="width:180px;">
                                      <div style="width: 50%" class="bar"></div>
                                    </div>
                                    <div class=" pull-left">
                                      <input type="text" class="span1" value="50" size="3" disabled style="width:30px; margin-left:8px;"/>
                                    </div>
                                  </div></td>
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
                  <button class="btn btn-primary" type="submit">Apply</button>
                </div>
              </div>
        </div>
