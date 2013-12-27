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
                                <li class="active"><a id="atab1" href="#tab1a" data-toggle="tab">802.11b/bg/ng</a></li>
                                <li> <a href="#tab2b" data-toggle="tab">802.11a/na</a></li>
                              </ul>
                              <div class="tab-content" style="height:480px; overflow-y:auto">
                                <!--tab1b-->
                                  <div class="tab-pane active" id="tab1a">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode" name="wirelessMode" >
                                              <option>802.11ng</option>
                                              <option>802.11bg</option>
                                              <option>802.11b</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate" name="dataRate" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth" name="channelWidth" >
                                              <option>20/40 MHz Dynamic</option>
                                              
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval" name="guardInterval" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold" name="rtsThreshold" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength" name="fragmentationLength" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval" id="beaconInterval"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength" name="aggregationLength" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                                            
                                              <input type="radio" value="enable"  id="AMPDU" name="AMPDU" /> enable
                                              <input type="radio" value="disable"  id="AMPDU" name="AMPDU" />disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission" name="rifsTransmission" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission" name="rifsTransmission" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval" name="dtimInterval" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" name="preambleType" />
                                            Auto
                                            <input type="radio" value="Long" name="preambleType" />
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
                                    <tbody id="apList">
                                   
                                    </tbody>
                                  </table>
                                </div>   
                       			<!--tab2--> 
                        		<div class="tab-pane active" id="tab2b">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode1" name="wirelessMode1" >
                                              <option>802.11a</option>
                                              <option>802.11na</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate1" name="dataRate1" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth1"  name="channelWidth1" >
                                              <option>20/40 MHz Dynamic</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval1" name="guardInterval1" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold1" name="rtsThreshold1" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength1" name="fragmentationLength1" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval1" name="beaconInterval1"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength1" name="aggregationLength1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                               
                                              <input type="radio" value="enable" id="AMPDU1" name="AMPDU1" />  enable
                                              <input type="radio" value="disable" id="AMPDU1" name="AMPDU1" />  disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval1" name="dtimInterval1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" id="preambleType1" name="preambleType1" />
                                            Auto
                                            <input type="radio" value="Long" id="preambleType1" name="preambleType1" />
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
                                    <tbody id="apList1">
                                 
                                    </tbody>
                                  </table>
                                </div>
                     		</div>
                              </div>
                            </div>

                          <!--tab2-->
                          <div class="tab-pane" id="tab2"> 
                          <div class="tabbable " >
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1a" data-toggle="tab">802.11b/bg/ng</a></li>
                                <li> <a href="#tab2b" data-toggle="tab">802.11a/na</a></li>
                              </ul>
                              <div class="tab-content" style="height:480px; overflow-y:auto">
                                <!--tab1b-->
                                  <div class="tab-pane active" id="tab1a">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode" name="wirelessMode" >
                                              <option>802.11ng</option>
                                              <option>802.11bg</option>
                                              <option>802.11b</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate" name="dataRate" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth" name="channelWidth" >
                                              <option>20/40 MHz Dynamic</option>
                                              
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval" name="guardInterval" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold" name="rtsThreshold" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength" name="fragmentationLength" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval" id="beaconInterval"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength" name="aggregationLength" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                                            
                                              <input type="radio" value="enable"  id="AMPDU" name="AMPDU" /> enable
                                              <input type="radio" value="disable"  id="AMPDU" name="AMPDU" />disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission" name="rifsTransmission" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission" name="rifsTransmission" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval" name="dtimInterval" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" name="preambleType" />
                                            Auto
                                            <input type="radio" value="Long" name="preambleType" />
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
                                    <tbody id="apList">
                                   
                                    </tbody>
                                  </table>
                                </div>   
                       			<!--tab2--> 
                        		<div class="tab-pane active" id="tab2b">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode1" name="wirelessMode1" >
                                              <option>802.11a</option>
                                              <option>802.11na</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate1" name="dataRate1" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth1"  name="channelWidth1" >
                                              <option>20/40 MHz Dynamic</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval1" name="guardInterval1" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold1" name="rtsThreshold1" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength1" name="fragmentationLength1" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval1" name="beaconInterval1"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength1" name="aggregationLength1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                               
                                              <input type="radio" value="enable" id="AMPDU1" name="AMPDU1" />  enable
                                              <input type="radio" value="disable" id="AMPDU1" name="AMPDU1" />  disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval1" name="dtimInterval1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" id="preambleType1" name="preambleType1" />
                                            Auto
                                            <input type="radio" value="Long" id="preambleType1" name="preambleType1" />
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
                                    <tbody id="apList1">
                                 
                                    </tbody>
                                  </table>
                                </div>
                     		</div>
                              </div>
                          </div>
                          <div class="tab-pane" id="tab3"> 
                          <div class="tabbable " >
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1a" data-toggle="tab">802.11b/bg/ng</a></li>
                                <li> <a href="#tab2b" data-toggle="tab">802.11a/na</a></li>
                              </ul>
                              <div class="tab-content" style="height:480px; overflow-y:auto">
                                <!--tab1b-->
                                  <div class="tab-pane active" id="tab1a">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode" name="wirelessMode" >
                                              <option>802.11ng</option>
                                              <option>802.11bg</option>
                                              <option>802.11b</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate" name="dataRate" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth" name="channelWidth" >
                                              <option>20/40 MHz Dynamic</option>
                                              
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval" name="guardInterval" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold" name="rtsThreshold" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength" name="fragmentationLength" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval" id="beaconInterval"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength" name="aggregationLength" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                                            
                                              <input type="radio" value="enable"  id="AMPDU" name="AMPDU" /> enable
                                              <input type="radio" value="disable"  id="AMPDU" name="AMPDU" />disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission" name="rifsTransmission" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission" name="rifsTransmission" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval" name="dtimInterval" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" name="preambleType" />
                                            Auto
                                            <input type="radio" value="Long" name="preambleType" />
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
                                    <tbody id="apList">
                                   
                                    </tbody>
                                  </table>
                                </div>   
                       			<!--tab2--> 
                        		<div class="tab-pane active" id="tab2b">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode1" name="wirelessMode1" >
                                              <option>802.11a</option>
                                              <option>802.11na</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate1" name="dataRate1" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth1"  name="channelWidth1" >
                                              <option>20/40 MHz Dynamic</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval1" name="guardInterval1" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold1" name="rtsThreshold1" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength1" name="fragmentationLength1" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval1" name="beaconInterval1"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength1" name="aggregationLength1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                               
                                              <input type="radio" value="enable" id="AMPDU1" name="AMPDU1" />  enable
                                              <input type="radio" value="disable" id="AMPDU1" name="AMPDU1" />  disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval1" name="dtimInterval1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" id="preambleType1" name="preambleType1" />
                                            Auto
                                            <input type="radio" value="Long" id="preambleType1" name="preambleType1" />
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
                                    <tbody id="apList1">
                                 
                                    </tbody>
                                  </table>
                                </div>
                     		</div>
                              </div>
                          </div>
                          <div class="tab-pane" id="tab4">
                          <div class="tabbable " >
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1a" data-toggle="tab">802.11b/bg/ng</a></li>
                                <li> <a href="#tab2b" data-toggle="tab">802.11a/na</a></li>
                              </ul>
                              <div class="tab-content" style="height:480px; overflow-y:auto">
                                <!--tab1b-->
                                  <div class="tab-pane active" id="tab1a">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode" name="wirelessMode" >
                                              <option>802.11ng</option>
                                              <option>802.11bg</option>
                                              <option>802.11b</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate" name="dataRate" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth" name="channelWidth" >
                                              <option>20/40 MHz Dynamic</option>
                                              
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval" name="guardInterval" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold" name="rtsThreshold" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength" name="fragmentationLength" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval" id="beaconInterval"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength" name="aggregationLength" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                                            
                                              <input type="radio" value="enable"  id="AMPDU" name="AMPDU" /> enable
                                              <input type="radio" value="disable"  id="AMPDU" name="AMPDU" />disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission" name="rifsTransmission" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission" name="rifsTransmission" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval" name="dtimInterval" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" name="preambleType" />
                                            Auto
                                            <input type="radio" value="Long" name="preambleType" />
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
                                    <tbody id="apList">
                                   
                                    </tbody>
                                  </table>
                                </div>   
                       			<!--tab2--> 
                        		<div class="tab-pane active" id="tab2b">
                                  <div class="formSep">
                                    <div class="row-fluid">
                                      <div class="span12">
                                        <input type="checkbox"  />
                                        Turn Radio On </div>
                                    </div>
                                  </div>
                                  <div class="row-fluid">
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Wireless Mode</b></label>
                                            <select id="wirelessMode1" name="wirelessMode1" >
                                              <option>802.11a</option>
                                              <option>802.11na</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DataRate</b></label>
                                            <select id="dataRate1" name="dataRate1" >
                                              <option>Bests</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Channel Width</b></label>
                                            <select id="channelWidth1"  name="channelWidth1" >
                                              <option>20/40 MHz Dynamic</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Guard Interval</b></label>
                                            <select id="guardInterval1" name="guardInterval1" >
                                              <option>800 ns</option>
                                            </select>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RTS Threshold(0-2347)<span class="f_req">*</span></b></label>
                                            <input id="rtsThreshold1" name="rtsThreshold1" type="text" value=" 2437" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Fragmentation Length(256-2346)</b></label>
                                            <input id="fragmentationLength1" name="fragmentationLength1" type="text" value=" 2446" />
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="span6">
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Beacon Interval(100-1000)</b></label>
                                            <input id="beaconInterval1" name="beaconInterval1"  type="text" value=" 100" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Aggregation Length(1024-65535)</b></label>
                                            <input id="aggregationLength1" name="aggregationLength1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>AMPDU</b></label>
                               
                                              <input type="radio" value="enable" id="AMPDU1" name="AMPDU1" />  enable
                                              <input type="radio" value="disable" id="AMPDU1" name="AMPDU1" />  disable  </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>RIFS Transmission</b></label>
                                            <input type="radio" value="enable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            enable
                                            <input type="radio" value="disable" id="rifsTransmission1"  name="rifsTransmission1" />
                                            disable </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>DTIM Interval(1-255)<span class="f_req">*</span></b></label>
                                            <input id="dtimInterval1" name="dtimInterval1" type="text" value=" 65535" />
                                          </div>
                                        </div>
                                      </div>
                                      <div class="formSep">
                                        <div class="row-fluid">
                                          <div class="span12">
                                            <label><b>Preamble Type<span class="f_req">*</span></b></label>
                                            <input type="radio" value="Auto" id="preambleType1" name="preambleType1" />
                                            Auto
                                            <input type="radio" value="Long" id="preambleType1" name="preambleType1" />
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
                                    <tbody id="apList1">
                                 
                                    </tbody>
                                  </table>
                                </div>
                     		</div>
                              </div>
                           </div>
                        </div>
                      </div>
                </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit" onclick="apply()">Apply</button>
                  </div>
              </div>
          </div>
          </div> 

          
          
          <script type="text/javascript"> 
	$("#atab1").click();
	$.ajaxSetup ({
		cache: false 
	});
	read();
	function read() { 
		var obj
		$.ajax({ url: "config/read.json?name=confing_advanced_wireless",async:false,success: function(msg){
			obj = JSON.parse(msg); 
			$('#tab1').find("input[name='AMPDU'][value="+obj.group1._802_11b_bg_ng.AMPDU+"]").attr("checked",true); 
			$('#tab1').find("input[name='rifsTransmission'][value="+obj.group1._802_11b_bg_ng.rifsTransmission+"]").attr("checked",true); 
			$('#tab1').find("input[name='preambleType'][value="+obj.group1._802_11b_bg_ng.preambleType+"]").attr("checked",true); 
			$('#tab1').find("#wirelessMode").val(obj.group1._802_11b_bg_ng.wirelessMode);
			$('#tab1').find("#dataRate").val(obj.group1._802_11b_bg_ng.dataRate);
			$('#tab1').find("#channelWidth").val(obj.group1._802_11b_bg_ng.channelWidth);
			$('#tab1').find("#guardInterval").val(obj.group1._802_11b_bg_ng.guardInterval);
			$('#tab1').find("#rtsThreshold").val(obj.group1._802_11b_bg_ng.rtsThreshold);
			$('#tab1').find("#fragmentationLength").val(obj.group1._802_11b_bg_ng.fragmentationLength);
			$('#tab1').find("#aggregationLength").val(obj.group1._802_11b_bg_ng.aggregationLength);
			$('#tab1').find("#dtimInterval").val(obj.group1._802_11b_bg_ng.dtimInterval);
			
			$('#tab1').find("input[name='AMPDU1'][value="+obj.group1._802_11a_na.AMPDU+"]").attr("checked",true); 
			$('#tab1').find("input[name='rifsTransmission1'][value="+obj.group1._802_11a_na.rifsTransmission+"]").attr("checked",true); 
			$('#tab1').find("input[name='preambleType1'][value="+obj.group1._802_11a_na.preambleType+"]").attr("checked",true); 
			$('#tab1').find("#wirelessMode1").val(obj.group1._802_11a_na.wirelessMode);
			$('#tab1').find("#dataRate1").val(obj.group1._802_11a_na.dataRate);
			$('#tab1').find("#channelWidth1").val(obj.group1._802_11a_na.channelWidth);
			$('#tab1').find("#guardInterval1").val(obj.group1._802_11a_na.guardInterval);
			$('#tab1').find("#rtsThreshold1").val(obj.group1._802_11a_na.rtsThreshold);
			$('#tab1').find("#fragmentationLength1").val(obj.group1._802_11a_na.fragmentationLength);
			$('#tab1').find("#aggregationLength1").val(obj.group1._802_11a_na.aggregationLength);
			$('#tab1').find("#dtimInterval1").val(obj.group1._802_11a_na.dtimInterval);
			
			
			$('#tab2').find("input[name='AMPDU'][value="+obj.group2._802_11b_bg_ng.AMPDU+"]").attr("checked",true); 
			$('#tab2').find("input[name='rifsTransmission'][value="+obj.group2._802_11b_bg_ng.rifsTransmission+"]").attr("checked",true); 
			$('#tab2').find("input[name='preambleType'][value="+obj.group2._802_11b_bg_ng.preambleType+"]").attr("checked",true); 
			$('#tab2').find("#wirelessMode").val(obj.group2._802_11b_bg_ng.wirelessMode);
			$('#tab2').find("#dataRate").val(obj.group2._802_11b_bg_ng.dataRate);
			$('#tab2').find("#channelWidth").val(obj.group2._802_11b_bg_ng.channelWidth);
			$('#tab2').find("#guardInterval").val(obj.group2._802_11b_bg_ng.guardInterval);
			$('#tab2').find("#rtsThreshold").val(obj.group2._802_11b_bg_ng.rtsThreshold);
			$('#tab2').find("#fragmentationLength").val(obj.group2._802_11b_bg_ng.fragmentationLength);
			$('#tab2').find("#aggregationLength").val(obj.group2._802_11b_bg_ng.aggregationLength);
			$('#tab2').find("#dtimInterval").val(obj.group2._802_11b_bg_ng.dtimInterval);
			
			$('#tab2').find("input[name='AMPDU1'][value="+obj.group2._802_11a_na.AMPDU+"]").attr("checked",true); 
			$('#tab2').find("input[name='rifsTransmission1'][value="+obj.group2._802_11a_na.rifsTransmission+"]").attr("checked",true); 
			$('#tab2').find("input[name='preambleType1'][value="+obj.group2._802_11a_na.preambleType+"]").attr("checked",true); 
			$('#tab2').find("#wirelessMode1").val(obj.group2._802_11a_na.wirelessMode);
			$('#tab2').find("#dataRate1").val(obj.group2._802_11a_na.dataRate);
			$('#tab2').find("#channelWidth1").val(obj.group2._802_11a_na.channelWidth);
			$('#tab2').find("#guardInterval1").val(obj.group2._802_11a_na.guardInterval);
			$('#tab2').find("#rtsThreshold1").val(obj.group2._802_11a_na.rtsThreshold);
			$('#tab2').find("#fragmentationLength1").val(obj.group2._802_11a_na.fragmentationLength);
			$('#tab2').find("#aggregationLength1").val(obj.group2._802_11a_na.aggregationLength);
			$('#tab2').find("#dtimInterval1").val(obj.group2._802_11a_na.dtimInterval);
			
			
			$('#tab3').find("input[name='AMPDU'][value="+obj.group3._802_11b_bg_ng.AMPDU+"]").attr("checked",true); 
			$('#tab3').find("input[name='rifsTransmission'][value="+obj.group3._802_11b_bg_ng.rifsTransmission+"]").attr("checked",true); 
			$('#tab3').find("input[name='preambleType'][value="+obj.group3._802_11b_bg_ng.preambleType+"]").attr("checked",true); 
			$('#tab3').find("#wirelessMode").val(obj.group3._802_11b_bg_ng.wirelessMode);
			$('#tab3').find("#dataRate").val(obj.group3._802_11b_bg_ng.dataRate);
			$('#tab3').find("#channelWidth").val(obj.group3._802_11b_bg_ng.channelWidth);
			$('#tab3').find("#guardInterval").val(obj.group3._802_11b_bg_ng.guardInterval);
			$('#tab3').find("#rtsThreshold").val(obj.group3._802_11b_bg_ng.rtsThreshold);
			$('#tab3').find("#fragmentationLength").val(obj.group3._802_11b_bg_ng.fragmentationLength);
			$('#tab3').find("#aggregationLength").val(obj.group3._802_11b_bg_ng.aggregationLength);
			$('#tab3').find("#dtimInterval").val(obj.group3._802_11b_bg_ng.dtimInterval);
			
			$('#tab3').find("input[name='AMPDU1'][value="+obj.group3._802_11a_na.AMPDU+"]").attr("checked",true); 
			$('#tab3').find("input[name='rifsTransmission1'][value="+obj.group3._802_11a_na.rifsTransmission+"]").attr("checked",true); 
			$('#tab3').find("input[name='preambleType1'][value="+obj.group3._802_11a_na.preambleType+"]").attr("checked",true); 
			$('#tab3').find("#wirelessMode1").val(obj.group3._802_11a_na.wirelessMode);
			$('#tab3').find("#dataRate1").val(obj.group3._802_11a_na.dataRate);
			$('#tab3').find("#channelWidth1").val(obj.group3._802_11a_na.channelWidth);
			$('#tab3').find("#guardInterval1").val(obj.group3._802_11a_na.guardInterval);
			$('#tab3').find("#rtsThreshold1").val(obj.group3._802_11a_na.rtsThreshold);
			$('#tab3').find("#fragmentationLength1").val(obj.group3._802_11a_na.fragmentationLength);
			$('#tab3').find("#aggregationLength1").val(obj.group3._802_11a_na.aggregationLength);
			$('#tab3').find("#dtimInterval1").val(obj.group3._802_11a_na.dtimInterval);
			
			
			
			$('#tab4').find("input[name='AMPDU'][value="+obj.group4._802_11b_bg_ng.AMPDU+"]").attr("checked",true); 
			$('#tab4').find("input[name='rifsTransmission'][value="+obj.group4._802_11b_bg_ng.rifsTransmission+"]").attr("checked",true); 
			$('#tab4').find("input[name='preambleType'][value="+obj.group4._802_11b_bg_ng.preambleType+"]").attr("checked",true); 
			$('#tab4').find("#wirelessMode").val(obj.group4._802_11b_bg_ng.wirelessMode);
			$('#tab4').find("#dataRate").val(obj.group4._802_11b_bg_ng.dataRate);
			$('#tab4').find("#channelWidth").val(obj.group4._802_11b_bg_ng.channelWidth);
			$('#tab4').find("#guardInterval").val(obj.group4._802_11b_bg_ng.guardInterval);
			$('#tab4').find("#rtsThreshold").val(obj.group4._802_11b_bg_ng.rtsThreshold);
			$('#tab4').find("#fragmentationLength").val(obj.group4._802_11b_bg_ng.fragmentationLength);
			$('#tab4').find("#aggregationLength").val(obj.group4._802_11b_bg_ng.aggregationLength);
			$('#tab4').find("#dtimInterval").val(obj.group4._802_11b_bg_ng.dtimInterval);
			
			$('#tab4').find("input[name='AMPDU1'][value="+obj.group4._802_11a_na.AMPDU+"]").attr("checked",true); 
			$('#tab4').find("input[name='rifsTransmission1'][value="+obj.group4._802_11a_na.rifsTransmission+"]").attr("checked",true); 
			$('#tab4').find("input[name='preambleType1'][value="+obj.group4._802_11a_na.preambleType+"]").attr("checked",true); 
			$('#tab4').find("#wirelessMode1").val(obj.group4._802_11a_na.wirelessMode);
			$('#tab4').find("#dataRate1").val(obj.group4._802_11a_na.dataRate);
			$('#tab4').find("#channelWidth1").val(obj.group4._802_11a_na.channelWidth);
			$('#tab4').find("#guardInterval1").val(obj.group4._802_11a_na.guardInterval);
			$('#tab4').find("#rtsThreshold1").val(obj.group4._802_11a_na.rtsThreshold);
			$('#tab4').find("#fragmentationLength1").val(obj.group4._802_11a_na.fragmentationLength);
			$('#tab4').find("#aggregationLength1").val(obj.group4._802_11a_na.aggregationLength);
			$('#tab4').find("#dtimInterval1").val(obj.group4._802_11a_na.dtimInterval);
      	}}); 
      	
      	var str="";
      	$.ajax({ url: "config/read.json?name=confing_basic_channel_allocation",async:false,success: function(msg){
			var obj = JSON.parse(msg);
			if(obj.ghz24!=null){
				$.each(obj.ghz24.split(","),function(i,val){ 
	   				if(val>0){
	   					str += "<option>"+val+"/2.4GHZ</option>"
	   				}
				});
			} 
			if(obj.ghz5!=null){
				if(obj.ghz5!=null){
					$.each(obj.ghz5.split(","),function(i,val){ 
		   				if(val>0){
		   					str += "<option>"+val+"/5GHZ</option>"
		   				}
					});
				} 
			} 
      	}});
      	var str1="<option>Full</option><option>Half</option><option>Quarter</option><option>Eighth</option><option>Minimum</option>"
      	$.ajax({ url: "ap/apList.json",async:false,success: function(msg){
      		for(var i=0;i<msg.length;i++){
      			$('#tab1').find('#apList').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");//  alert(msg[i].name)
      			$('#tab2').find('#apList').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");
      			$('#tab3').find('#apList').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");
      			$('#tab4').find('#apList').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");
      		}
      		for(var i=0;i<msg.length;i++){
      			$('#tab1').find('#apList1').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");//  alert(msg[i].name)
      			$('#tab2').find('#apList1').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");
      			$('#tab3').find('#apList1').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");
      			$('#tab4').find('#apList1').append("<tr id="+msg[i].name+"><td>"+msg[i].name+"</td><td><select id='apChannel' name='apChannel'>"+str+"</select></td><td><select id='txPower' name='txPower'>"+str1+"</select></td> </tr>");
      		}
      	}});
      	$.each(obj.group1._802_11b_bg_ng.apList,function(i,it){ 
			$('#tab1').find('#apList').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab1').find('#apList').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
		$.each(obj.group1._802_11a_na.apList,function(i,it){ 
			$('#tab1').find('#apList1').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab1').find('#apList1').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
		
		$.each(obj.group2._802_11b_bg_ng.apList,function(i,it){ 
			$('#tab2').find('#apList').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab2').find('#apList').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
		$.each(obj.group2._802_11a_na.apList,function(i,it){ 
			$('#tab2').find('#apList1').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab2').find('#apList1').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
		
		
		$.each(obj.group3._802_11b_bg_ng.apList,function(i,it){ 
			$('#tab3').find('#apList').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab3').find('#apList').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
		$.each(obj.group3._802_11a_na.apList,function(i,it){ 
			$('#tab3').find('#apList1').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab3').find('#apList1').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
      	
      	$.each(obj.group4._802_11b_bg_ng.apList,function(i,it){ 
			$('#tab4').find('#apList').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab4').find('#apList').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
		$.each(obj.group4._802_11a_na.apList,function(i,it){ 
			$('#tab4').find('#apList1').find("tr#"+it.apName).find("select#apChannel").val(it.apChannel)
			$('#tab4').find('#apList1').find("tr#"+it.apName).find("select#txPower").val(it.txPower)
		});
	}  
	
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
		
		var $tr = $('#tab1').find('#apList').children();
		var apList = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList[i] = ap;
		}
		$tr = $('#tab1').find('#apList1').children();
		var apList1 = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList1[i] = ap;
		}
 		var group1={"_802_11b_bg_ng":
	 					{"wirelessMode":$('#tab1').find("#wirelessMode").val(),
	 					"AMPDU":$('#tab1').find("input[name='AMPDU']:checked").val(),
	 					"dataRate":$('#tab1').find("#dataRate").val(),
	 					"channelWidth":$('#tab1').find("#channelWidth").val(),
	 					"guardInterval":$('#tab1').find("#guardInterval").val(),
	 					"rtsThreshold":$('#tab1').find("#rtsThreshold").val(),
	 					"fragmentationLength":$('#tab1').find("#fragmentationLength").val(),
	 					"beaconInterval":$('#tab1').find("#beaconInterval").val(),
	 					"aggregationLength":$('#tab1').find("#aggregationLength").val(),
	 					"rifsTransmission":$('#tab1').find("input[name='rifsTransmission']:checked").val(),
	 					"dtimInterval":$('#tab1').find("#dtimInterval").val(),
	 					"preambleType":$('#tab1').find("input[name='preambleType']:checked").val(),
	 					"apList":apList
	 					},
 					"_802_11a_na":{
	 					"wirelessMode":$('#tab1').find("#wirelessMode1").val(),
	 					"AMPDU":$('#tab1').find("input[name='AMPDU1']:checked").val(),
	 					"dataRate":$('#tab1').find("#dataRate1").val(),
	 					"channelWidth":$('#tab1').find("#channelWidth1").val(),
	 					"guardInterval":$('#tab1').find("#guardInterval1").val(),
	 					"rtsThreshold":$('#tab1').find("#rtsThreshold1").val(),
	 					"fragmentationLength":$('#tab1').find("#fragmentationLength1").val(),
	 					"beaconInterval":$('#tab1').find("#beaconInterval1").val(),
	 					"aggregationLength":$('#tab1').find("#aggregationLength1").val(),
	 					"rifsTransmission":$('#tab1').find("input[name='rifsTransmission1']:checked").val(),
	 					"dtimInterval":$('#tab1').find("#dtimInterval1").val(),
	 					"preambleType":$('#tab1').find("input[name='preambleType1']:checked").val(),
	 					"apList":apList1}
 					};
 					
 		$tr = $('#tab2').find('#apList').children();
		apList = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList[i] = ap;
		}
		$tr = $('#tab2').find('#apList1').children();
		apList1 = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList1[i] = ap;
		}
 		var group2={"_802_11b_bg_ng":
	 					{"wirelessMode":$('#tab2').find("#wirelessMode").val(),
	 					"AMPDU":$('#tab2').find("input[name='AMPDU']:checked").val(),
	 					"dataRate":$('#tab2').find("#dataRate").val(),
	 					"channelWidth":$('#tab2').find("#channelWidth").val(),
	 					"guardInterval":$('#tab2').find("#guardInterval").val(),
	 					"rtsThreshold":$('#tab2').find("#rtsThreshold").val(),
	 					"fragmentationLength":$('#tab2').find("#fragmentationLength").val(),
	 					"beaconInterval":$('#tab2').find("#beaconInterval").val(),
	 					"aggregationLength":$('#tab2').find("#aggregationLength").val(),
	 					"rifsTransmission":$('#tab2').find("input[name='rifsTransmission']:checked").val(),
	 					"dtimInterval":$('#tab2').find("#dtimInterval").val(),
	 					"preambleType":$('#tab2').find("input[name='preambleType']:checked").val(),
	 					"apList":apList
	 					},
 					"_802_11a_na":{
	 					"wirelessMode":$('#tab2').find("#wirelessMode1").val(),
	 					"AMPDU":$('#tab2').find("input[name='AMPDU1']:checked").val(),
	 					"dataRate":$('#tab2').find("#dataRate1").val(),
	 					"channelWidth":$('#tab2').find("#channelWidth1").val(),
	 					"guardInterval":$('#tab2').find("#guardInterval1").val(),
	 					"rtsThreshold":$('#tab2').find("#rtsThreshold1").val(),
	 					"fragmentationLength":$('#tab2').find("#fragmentationLength1").val(),
	 					"beaconInterval":$('#tab2').find("#beaconInterval1").val(),
	 					"aggregationLength":$('#tab2').find("#aggregationLength1").val(),
	 					"rifsTransmission":$('#tab2').find("input[name='rifsTransmission1']:checked").val(),
	 					"dtimInterval":$('#tab2').find("#dtimInterval1").val(),
	 					"preambleType":$('#tab2').find("input[name='preambleType1']:checked").val(),
	 					"apList":apList1}
 					};	
 							
 		$tr = $('#tab3').find('#apList').children();
		apList = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList[i] = ap;
		}
		$tr = $('#tab3').find('#apList1').children();
		apList1 = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList1[i] = ap;
		}
 		var group3={"_802_11b_bg_ng":
	 					{"wirelessMode":$('#tab3').find("#wirelessMode").val(),
	 					"AMPDU":$('#tab3').find("input[name='AMPDU']:checked").val(),
	 					"dataRate":$('#tab3').find("#dataRate").val(),
	 					"channelWidth":$('#tab3').find("#channelWidth").val(),
	 					"guardInterval":$('#tab3').find("#guardInterval").val(),
	 					"rtsThreshold":$('#tab3').find("#rtsThreshold").val(),
	 					"fragmentationLength":$('#tab3').find("#fragmentationLength").val(),
	 					"beaconInterval":$('#tab3').find("#beaconInterval").val(),
	 					"aggregationLength":$('#tab3').find("#aggregationLength").val(),
	 					"rifsTransmission":$('#tab3').find("input[name='rifsTransmission']:checked").val(),
	 					"dtimInterval":$('#tab3').find("#dtimInterval").val(),
	 					"preambleType":$('#tab3').find("input[name='preambleType']:checked").val(),
	 					"apList":apList
	 					},
 					"_802_11a_na":{
	 					"wirelessMode":$('#tab3').find("#wirelessMode1").val(),
	 					"AMPDU":$('#tab3').find("input[name='AMPDU1']:checked").val(),
	 					"dataRate":$('#tab3').find("#dataRate1").val(),
	 					"channelWidth":$('#tab3').find("#channelWidth1").val(),
	 					"guardInterval":$('#tab3').find("#guardInterval1").val(),
	 					"rtsThreshold":$('#tab3').find("#rtsThreshold1").val(),
	 					"fragmentationLength":$('#tab3').find("#fragmentationLength1").val(),
	 					"beaconInterval":$('#tab3').find("#beaconInterval1").val(),
	 					"aggregationLength":$('#tab3').find("#aggregationLength1").val(),
	 					"rifsTransmission":$('#tab3').find("input[name='rifsTransmission1']:checked").val(),
	 					"dtimInterval":$('#tab3').find("#dtimInterval1").val(),
	 					"preambleType":$('#tab3').find("input[name='preambleType1']:checked").val(),
	 					"apList":apList1}
 					};		
 					
 		$tr = $('#tab4').find('#apList').children();
		apList = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList[i] = ap;
		}
		$tr = $('#tab4').find('#apList1').children();
		apList1 = new Array();
		for(var i=0;i< $tr.length;i++){   
			var ap = {"apName":$($tr[i]).attr("id"),"apChannel":$($tr[i]).find("select#apChannel").attr("value"),"txPower":$($tr[i]).find("select#txPower").attr("value")}; 
			apList1[i] = ap;
		}
 		var group4={"_802_11b_bg_ng":
	 					{"wirelessMode":$('#tab4').find("#wirelessMode").val(),
	 					"AMPDU":$('#tab4').find("input[name='AMPDU']:checked").val(),
	 					"dataRate":$('#tab4').find("#dataRate").val(),
	 					"channelWidth":$('#tab4').find("#channelWidth").val(),
	 					"guardInterval":$('#tab4').find("#guardInterval").val(),
	 					"rtsThreshold":$('#tab4').find("#rtsThreshold").val(),
	 					"fragmentationLength":$('#tab4').find("#fragmentationLength").val(),
	 					"beaconInterval":$('#tab4').find("#beaconInterval").val(),
	 					"aggregationLength":$('#tab4').find("#aggregationLength").val(),
	 					"rifsTransmission":$('#tab4').find("input[name='rifsTransmission']:checked").val(),
	 					"dtimInterval":$('#tab4').find("#dtimInterval").val(),
	 					"preambleType":$('#tab4').find("input[name='preambleType']:checked").val(),
	 					"apList":apList
	 					},
 					"_802_11a_na":{
	 					"wirelessMode":$('#tab4').find("#wirelessMode1").val(),
	 					"AMPDU":$('#tab4').find("input[name='AMPDU1']:checked").val(),
	 					"dataRate":$('#tab4').find("#dataRate1").val(),
	 					"channelWidth":$('#tab4').find("#channelWidth1").val(),
	 					"guardInterval":$('#tab4').find("#guardInterval1").val(),
	 					"rtsThreshold":$('#tab4').find("#rtsThreshold1").val(),
	 					"fragmentationLength":$('#tab4').find("#fragmentationLength1").val(),
	 					"beaconInterval":$('#tab4').find("#beaconInterval1").val(),
	 					"aggregationLength":$('#tab4').find("#aggregationLength1").val(),
	 					"rifsTransmission":$('#tab4').find("input[name='rifsTransmission1']:checked").val(),
	 					"dtimInterval":$('#tab4').find("#dtimInterval1").val(),
	 					"preambleType":$('#tab4').find("input[name='preambleType1']:checked").val(),
	 					"apList":apList1}
 					};		
 						
 		var content={"group1":group1,"group2":group2,"group3":group3,"group4":group4}
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_advanced_wireless&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
</script>   