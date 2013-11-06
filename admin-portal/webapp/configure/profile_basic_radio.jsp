<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
              <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Edit Profile(Basic)</h3>
                    </div>
                     
                      <div class="tabbable" >
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab1" data-toggle="tab">802.11b/bg/ng</a></li>
                          <li> <a href="#tab2" data-toggle="tab">802.11a/na</a></li>
                          <li></li>
                          <li></li>
                        </ul>
                        <div class="tab-content ">
                          <!--tab1-->
                          <div class="tab-pane active" id="tab1">
                            <div class="tabbable tabbable-bordered">
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1b" data-toggle="tab">NG_11g-01</a></li>
                                <li> <a href="#tab2b" data-toggle="tab">NG_11g-02</a></li>
                                 <li> <a href="#tab2b" data-toggle="tab">+</a></li>                              </ul>
                              <div class="tab-content" style="height:500px; overflow-y:auto">
                                <!--tab1b-->
                                <div class="tab-pane active" id="tab1b">
                                  
                                    <div class="row-fluid">
                               
                                      <div class="formSep">
                                        <label  class="act-primary"> <b>Profile Definition</b></label> 
                                          <span class="span5"><b>Name</b></span>
                                          <input type="text" value="NG_11g_01"/>
                                          <br>
                                    <span class="span5"><b>Wireless Network Name(SSID)</b></span></label>
                                    <input type="text" value="NG_11g_01"/>
                                    <br>
                                         <span class="span5"><b>Broadcast Wireless Network Name(SSID)</b></span>
                                        <input type="radio" name="radio" id="radio" value="radio">
                                        Yes
                                        <input type="radio" name="radio" id="radio2" value="radio">
                                        No
                                      </div>
                                      <div class="formSep">
                                        <label  class="act-primary"> <b>Client Authentication</b></label> 
                               <span class="span5"><b>Network Authentication</b></span>
                                            <select name="select" >
                                              <option>Open System</option>
                                            </select><br>
                               <span class="span5"><b>Data Encryption</b></span></label>
                                            <select name="select2" >
                                              <option>None</option>
                                            </select><br>
                                    <span class="span5"><b>Wireless Client Security Separation</b></span>
                                        <select name="select3" >
                                          <option>Disable</option>
                                        </select>
                                        <br>
                                     <span class="span5"><b>VLAN</b></span>
                                      <input type="text" value="1"/>
                                      </div> 
                                             
                                      <div class="formSep">
                                       <label class="act-primary"> <b>Authentication Settings</b></label> 
                                       <span class="span5"><b>MAC ACL</b></span>
                                       <input type="radio" name="radio" id="radio3" value="radio">Local                                       <input type="radio" name="radio" id="radio4" value="radio">External <br>
                                           <br>
                                    <span class="span5"><b>Local MAC ACL Group</b></span>
                                            <select name="select2" >
                                              <option>basic</option>
                                            </select><br>
                                        <span class="span5"><b>
                                          
                                           Captive Potral</b></span> <input type="checkbox"  disabled/><br>

                                      </div>  
                                                                                  
                                      <div class="formSep">
                                        <span  class="act-primary"> <b>Wireless Qos</b></span><br>
                                          <span class="span5"><b>Wi-Fi MULTIMEDIA(WMM)</b></span>
                                          <input type="radio" name="radio" id="radio5" value="radio"> enable
                                          <input type="radio" name="radio" id="radio6" value="radio">disable <br><br>
                                         <span class="span5"><b> WMM Powersave</b></span></label>
                                          <input type="radio" name="radio" id="radio7" value="radio">enable
                                           <input type="radio" name="radio" id="radio8" value="radio">disable <br>
  
                                      </div>                                              
                                                                               
                                  </div>
                                    
                                </div>
                                   
                                   
                                
                                <!--tab2b-->
                                <div class="tab-pane" id="tab2b">NG_11g-02</div>
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
                    <button class="btn btn-warning" type="submit">Delete</button>
                    <button class="btn btn-primary" type="submit">Apply</button>
                  </div>
              </div>
        </div>
