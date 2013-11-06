<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    
                    <div class="span6">
                      <h3 class="heading">Log Settings</h3>
                      <div class="formSep">
                        <input type="checkbox" value="option1" name="optionsCheckboxList2">
                        <b>Event Tracing</b>
                      </div>
                      <div class="formSep">
                        <label><b>Time Duration </b></label>
                        hr:
                        <select name="select2"  style="width:80px;">
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                        </select>
                      mins:
                      <select name="select3"   style="width:80px;">
                        <option>30</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                      </select>
                      </div>
                      <div class="formSep">
                        <label><b>Log Level</b></label>
                        <select name="select" >
                          <option>LOG_LEVEL_WARN</option>
                          <option>LOG_LEVEL_WARN</option>
                        </select>
                      </div>
                    </div><div class="span6">
                      <h3 class="heading">SysLog Settings</h3>
                      <div class="formSep">
                        <input type="checkbox" value="option1" name="optionsCheckboxList2">
                        <b>Enable Syslog</b></div>
                      <div class="formSep">
                        <label><b>Syslog Server IP Address</b></label>
                        <input type="text" value=" "/>
                      </div>
                      <div class="formSep">
                        <label><b>Server Port Number</b></label>
                        <input type="text" value=" 514"/>
                      </div>
                      <div class="formSep">
                        <label><b>Log Level</b></label>
                        <select name="select4" >
                          <option>LOG_LEVEL_CRIT</option>
                        </select>
                      </div>
                    </div> 
                  </div><div class="form-actions">
                      <button class="btn" type="submit">Cancel</button>
                      <button class="btn btn-primary" type="submit">Apply</button>
                    </div>
        </div>
            
