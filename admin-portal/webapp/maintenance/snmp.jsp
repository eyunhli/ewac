<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Session Timeout</h3>
                   
                        <div class="formSep">
                          
                            <input type="checkbox" value="option1" name="optionsCheckboxList">
                            <b> SNMP
                          </b> 
                      </div>
                        <div class="formSep">
                          <span class="span3"><b>Read-Only Community Name</b> </span>
                          <input type="text" value=" public"/>
                      </div>
                       
                      <div class="formSep">
                          <span class="span3"><b>Read-Write Community Name</b></span>
                          <input type="text" value="private"/>
                        </div>
                      <div class="formSep">
                          <span class="span3"><b>Trap Community Name</b></span>
                          <input type="text" value="trap"/>
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>IP Address to Receive Traps</b></span>
                          <input type="text" value=" "/>
                        </div>
                        <div class="formSep">
                          <span class="span3"><b>Trap Port </b></span>
                          <input type="text" value="162"/>
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>SNMP Manager IP </b></span>
                        <input type="text" value="255.255.255.255"/>
                        </div>
                    </div>
                  </div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit">Apply</button>
                  </div>
        </div>
