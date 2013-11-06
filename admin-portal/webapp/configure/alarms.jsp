<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                  <div class="row-fluid">
                    <div class="span12">
                      <h3 class="heading">Alarm Actions</h3>
                     <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th>Serverity</th>
                            <th><span class="optional">Action</span></th>
                            <th><span class="essential persist">Email Address</span></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Minor</td>
                            <td> 
                              <select name="select4" >
                                <option>No Action</option>
                              </select>
                            </td>
                            <td>
                            <input type="text" class="span4" disabled/>
                            </td>
                          </tr>
                          <tr>
                            <td>Normal</td>
                            <td><select name="select6" >
                              <option>No Action</option>
                            </select></td>
                            <td><input type="text" class="span4" disabled/>                              </span></td>
                          </tr>
                          <tr>
                            <td>Major</td>
                            <td><select name="select4" >
                              <option>Add To Syslog</option>
                            </select></td>
                            <td><input type="text" class="span4" disabled/></td>
                          </tr>
                          <tr>
                            <td>Critical</td>
                            <td><select name="select" >
                              <option>Add To Syslog</option>
                            </select></td>
                            <td><input type="text" class="span4" disabled/></td>
                          </tr>
                        </tbody>
                      </table>
                      
                     <div class="form-actions">
                      <button class="btn" type="submit">Cancel</button>
                      <button class="btn btn-primary" type="submit">Apply</button>
                    </div>                    </div>
                  </div>
        </div>
            
