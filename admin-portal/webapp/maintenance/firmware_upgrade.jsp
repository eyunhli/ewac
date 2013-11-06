<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Firmware Upgrade</h3>
                     
                       
                        
                      <div class="row-fluid">
                        <div class="formSep">
                          <label  class="act-primary"> <b>Profile Definition</b></label>
              <input type="radio" name="radio" id="radio" value="radio">
                              TFTP
                              <input type="radio" name="radio" id="radio2" value="radio">
                          FTP 
                          <input type="radio" name="radio" id="radio3" value="radio">
                          Local File
                           &nbsp; &nbsp; &nbsp;
                          <button class="btn btn" type="submit" id="pickfiles"><i class="icon-plus"></i> file</button>
                           no file select
                        </div>
                        <div class="formSep">
                      <label  class="act-primary"> <b>Boot Information</b></label>
                              <span class="span3"><b>Active Partition</b></span>Partition 1(Firmware version:3.1.0.9_1260)<br>
              <br>
                              <span class="span3"><b>Boot Partition to Upgrade</b></span>
                              </label>
                              <input type="radio" name="radio" id="radio9" value="radio">
Partition 1
<input type="radio" name="radio" id="radio10" value="radio">
Partition 2<br>
<br>
                              <span class="span3"><b>After upgrade boot from</b></span>
                              <input type="radio" name="radio" id="radio11" value="radio">
Partition 1
<input type="radio" name="radio" id="radio12" value="radio">
Partition 2</div>
                        <div class="formSep">
                              <label class="act-primary"> <b>Schedule</b></label>
                            <span class="span3"><b>Scheduled Upgrade Status</b></span>
                              None
                              <br><br>
                             <span class="span3"><b> When to Upgrade?</b></span><br>
<br>

 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;          
                <input type="radio" name="radio" id="radio4" value="radio">
Later hr:
<select name="select2"  style="width:80px">
<option>21</option>
                          </select>
                              mins:<select name="select"  style="width:80px">
                                <option>4</option>
                              </select>
                              Month
                              <select name="select3"  style="width:80px">
                                <option>21</option>
                              </select>
                              Date:
                              <select name="select4"  style="width:80px">
                                <option>5</option>
                              </select>
                              Year:
                              <select name="select5"  style="width:80px">
                                <option>2013</option>
                              </select>
                              <br>
<br>

                 &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio" id="radio5" value="radio">
Now </div>
                      </div>
                  </div>
                </div>
                <div class="form-actions">
                  <button class="btn" type="submit">Cancel</button>
                  <button class="btn btn-primary" type="submit">Apply</button>
                </div>
              </div>
            </div></div>
