<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                <div class="row-fluid">
                       <h3 class="heading">MAC Authentication</h3>
                      <div class="formSep">
                    <span class="span3"><b>Import MAC List from a file</b></span> 
                    <select name="select4" >
                      <option>Merge</option>
                    </select>
                   <br>
<br>
               <span class="span3">&nbsp;</span>
                    <button class="btn btn-small" type="submit" style="margin"> 
                    <i class="icon-plus "></i>File</button> un-selected
                  </div>
                      <div class="formSep">
                        <span class="span3"><b>Treat ACL as</b></span>
                        <input type="radio" checked="" value="option1" id="optionsRadios3" name="optionsRadios">
Allow
<input type="radio" value="option2" id="optionsRadios4" name="optionsRadios">
Deny </div> 
               <div class="form-horizontal">
                         <div class="span5">
                        <label class="act-primary"><b>Selecte Wireless Clients</b>
                          <span class=" pull-right"><button class="btn  btn-primary btn-small" type="submit" style="margin"> <i class="icon-plus icon-white"></i>Add</button>  
                          <button class="btn btn-danger btn-small" type="submit"><i class="icon-trash  icon-white "></i>Delete</button></span>
                        </label>
                        <table class="table table-bordered " >
                          <thead>
                            <tr>
                              <th class="optional">MAC Address</th>
                              <th class="essential persist"><input type="checkbox" value="option1" name="optionsCheckboxList3"></th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td><input type="text" value=" "/></td>
                              <td>&nbsp;</td>
                            </tr>
                          </tbody>
                        </table></div>
                     
               <div class="span1 " style="margin-top:20px;"> <button class="btn" type="submit"><i class="icon-chevron-left"></i>Move</button></div>
                <div class="span5">
                         <label class="act-primary"><b>Availiable Wireless Clients</b></label>
                         <table class="table table-bordered " >
                           <thead>
                             <tr>
                               <th class="optional">MAC Address</th>
                               <th class="essential persist"><input type="checkbox" value="option1" name="optionsCheckboxList"></th>
                             </tr>
                           </thead>
                           <tbody>
                             <tr>
                               <td><input type="text" value=" "/></td>
                               <td>&nbsp;</td>
                             </tr>
                           </tbody>
                         </table>
                   </div></div></div>
                  <div class="form-actions">
                    <button class="btn" type="submit">Cancel</button>
                    <button class="btn btn-primary" type="submit">Import</button>
                    <button class="btn btn-primary" type="submit">Apply</button>
                  </div>
              </div>
            </div>
            </div> 
