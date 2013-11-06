<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Advanced Wireless Settings</h3>
                    </div>
                   
                      <div class="tabbable " >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">Group 1</a></li>
                          <li> <a href="#tab2" data-toggle="tab">Group 2</a></li>
                          <li> <a href="#tab3" data-toggle="tab">Group 3</a></li>
                          <li> <a href="#tab4" data-toggle="tab">Group 4</a></li>
                        </ul>
                        <div class="tab-content">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                            <div class="tabbable " >
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1b" data-toggle="tab">802.11b/bg/ng</a></li>
                                <li> <a href="#tab2b" data-toggle="tab">802.11a/na</a></li>
                              </ul>
                              <div class="tab-content" style="height:480px; overflow-y:auto">
                                <!--tab1b-->
                                <div class="tab-pane active" id="tab1b">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  disabled/>
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select name="select" >
                                              <option>802.11ng</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select name="select2" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select name="select3" >
                                              <option>20/40 MHz Dynamic</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select name="select4" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input type="text" value=" 2437" disabled/>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input type="text" value=" 2446" disabled/>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input type="text" value=" 100" disabled/>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input type="text" value=" 65535" disabled/>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                                            <span class="radio inline">
                                              <input type="radio" value="option7" name="reg_gender" />
                                              enable
                                              <input type="radio" value="option7" name="reg_gender" />
                                              disable </span> </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="option7" name="reg_gender" />
                                            enable
                                            <input type="radio" value="option7" name="reg_gender" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input type="text" value=" 65535" disabled/>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="option7" name="reg_gender" />
                                            Auto
                                            <input type="radio" value="option7" name="reg_gender" />
                                            Long </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <table class="table table-striped table-bordered dTableR" id="dt_a">
                                    <thead>
                                      <tr>
                                        <th>AP Name</th>
                                        <th><span class="essential persist"> Access Point Channel</span></th>
                                        <th>Tx Power</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td>0</td>
                                        <td>NA</td>
                                        <td>NA</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                                <!--tab2b-->
                                <div class="tab-pane" id="tab2b">802.11a/na</div>
                              </div>
                            </div>
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
          </div> 
