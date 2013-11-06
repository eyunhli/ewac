<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Query System Logs</h3>
                      <table class="table table-striped table-bordered dTableR" id="dt_a">
                        <thead>
                          <tr>
                            <th>Select</th>
                            <th><span class="optional">Status</span></th>
                            <th>IP</th>
                            <th>MAC</th>
                            <th>Model</th>
                            <th>Name</th>
                          </tr>
                        </thead>
                        <tbody>
                        </tbody>
                      </table><br>
<br>

                      <div class="formSep">
                         <span class="span2"><b>AP MAC</b> </span>
                        <input type="text"/>
                      </div>
                      <div class="formSep">
                         <span class="span2"><b>Client MAC</b> </span>
                        <input type="text"/>
                      </div>
                      <div class="formSep">
                        <span class="span2"><b>SSID </b> </span>
                        <input type="text"/>
                      </div>
                    </div>
                  </div>
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Save System Logs</h3>
                      Save a copy of HP EWAC-7500 data base logs to a file by clicking Save button below
                    </div>
                  </div>
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Clear System Logs</h3>
                      Clear All HP EWAC-7500 data base logs to a file by clicking Clear all button below </div>
                  </div>
                  <div class="form-actions">
                    <button class="btn " type="submit">Query </button>
                    <button class="btn btn-warning" type="submit">Clear all</button>
                    <button class="btn btn-primary" type="submit">Save</button>
                  </div>
        </div>
