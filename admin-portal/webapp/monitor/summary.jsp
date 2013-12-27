<%@ page contentType="text/html; charset=utf-8"%>
	<div class="main_content">
                  <div class="row-fluid">
                    <div class="span6">
                      <div class="heading clearfix">
                        <h3 class="pull-left">Network Status</h3>
                        <!--<span class="pull-right label label-success">?</span>--></div>
                      <table class="table table-striped table-bordered mediaTable">
                        <thead>
                          <tr>
                            <th class="optional">Device</th>
                            <th class="essential persist">Total  Up</th>
                            <th class="optional"><span class="essential persist">Total</span> Down</th>
                            <th class="optional">Alarms Critical</th>
                            <th class="essential"><span class="optional">Alarms</span> Major</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Access Points</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                          </tr>
                          <tr>
                            <td>Clients</td>
                            <td>0</td>
                            <td>NA</td>
                            <td>NA</td>
                            <td>NA</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="span6">
                      <div class="heading clearfix">
                        <h3 class="pull-left">Wireless Clients</h3>
                        <!--<span class="pull-right label label-success">?</span>--></div>
                      <table class="table table-striped table-bordered mediaTable">
                        <thead>
                          <tr>
                            <th class="optional">Open</th>
                            <th class="essential persist">WEP</th>
                            <th class="optional">WPA</th>
                            <th class="optional">WPA2</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
  </div>
                  <div class="row-fluid">
                     <div class="span6">
                      <div class="heading clearfix">
                        <h3 class="pull-left">Controller Info</h3>
                        <!--<span class="pull-right label label-success">?</span>--></div>
                      <ul class="list user_list">
								<li>
									<span class="  pull-right">3.1.0.9_1260
                                    </span>
									<b >Firmware Version</b><br />
								</li>
								<li>
									<span class="  pull-right">21 hours.45 mins, 51 secs
                                    </span>
									<b >Controller Uptime</b><br />
								</li>
								<li>
									<span class="  pull-right">Fri Oct 4 19:29:08 2013
                                    </span>
									<b >Last Reboot</b><br />
								</li>
								<li>
									<span class="  pull-right">Sat Oct 5 17:14:34 2013
                                    </span>
									<b >Last Configuration Change</b><br />
								</li>
								<li>
									<span class="  pull-right">Sat Oct 5 00:00:23 2013
                                    </span>
									<b >Last Channel Allocation</b><br />
								</li>
								<li>
									<span class="  pull-right">Sat Oct 5 17:14:34 2013
                                    </span>
									<b >Last Admin Login</b><br />
								</li>                                
                                
                        </ul>        
                    </div>
                    
                 
                    <div class="span6">
                      <div class="heading clearfix">
                        <h3 class="pull-left">Most Active APs</h3>
                        <!--<span class="pull-right label label-success">?</span>--></div>
                      <table class="table table-striped table-bordered mediaTable">
                        <thead>
                          <tr>
                            <th class="optional">Name</th>
                            <th class="essential persist">Model</th>
                            <th class="optional">MAC</th>
                            <th class="optional">Clients</th>
                            <th class="essential">Total</th>
                          </tr>
                        </thead>
                        <tbody>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <div class="row-fluid">
                    <div class="span6">
                      <div class="heading clearfix">
                        <h3 class="pull-left">Most Active Clients</h3>
                        <!--<span class="pull-right label label-success">?</span>--></div>
                      <table class="table table-striped table-bordered mediaTable">
                        <thead>
                          <tr>
                            <th class="optional">MAC</th>
                            <th class="essential persist">SSID</th>
                            <th class="optional">Usage(KBytes)</th>
                          </tr>
                        </thead>
                        <tbody>
                        </tbody>
                      </table>
                    </div>
                     
                    <div class="span6">
                      <div class="heading clearfix">
                        <h3 class="pull-left">Most Active SSIDs</h3>
                        <!--<span class="pull-right label label-success">?</span>--></div>
                      <table class="table table-striped table-bordered mediaTable">
                        <thead>
                          <tr>
                            <th class="optional"><span class="essential persist">SSID</span></th>
                            <th class="essential persist"><span class="optional">Clients</span></th>
                          </tr>
                        </thead>
                        <tbody>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Refresh</button>
                  </div>
        </div>
