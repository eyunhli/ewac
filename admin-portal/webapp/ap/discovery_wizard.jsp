<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
  <div class="row-fluid">
    <div class="span12">
      <h3 class="heading">Access points discovery wizard</h3>
      <div class="row-fluid">
        <div class="span2"></div>
        <div class="span8">
          <form id="simple_wizard" class="stepy-wizzard form-horizontal">
            <fieldset title="State">
              <legend class="hide">Choose state of Access Points</legend>
              <div class="formSep control-group">
                <label class="uni-radio">
                  <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios">
                  Normal Mode: Specify the IP range and Configure the AP one by one. </b></label>
              </div>
              <div class="formSep control-group">
                <label class="radio">
                  <input type="radio"  value="option2" id="optionsRadios1" name="optionsRadios">
                  Engineering Mode: For initial configuration!(Static IP address required) </b></label>
              </div>
            </fieldset>
            <fieldset title="Configure">
              <legend class="hide">Specify IP Range</legend>
              <div class="formSep control-group">
                <label for="s_street" class="control-label">IP Range up</b></label>
                <div class="controls">
                  <input type="text" name="s_ip4" id="s_ip4" class="ipup" maxlength="3"/>
                  -
                  <input type="text" name="s_ip3" id="s_ip3" class="ipup" maxlength="3"/>
                  -
                  <input type="text" name="s_ip2" id="s_ip2" class="ipup" maxlength="3"/>
                  -
                  <input type="text" name="s_ip1" id="s_ip1" class="ipup" maxlength="3"/>
                </div>
              </div>
              <div class="formSep control-group">
                <label for="s_city" class="control-label">IP Range down</b></label>
                <div class="controls">
                  <input type="text" name="s1_ip4" id="s1_ip4" class="ipdown" maxlength="3" disable="true"/>
                  -
                  <input type="text" name="s1_ip3" id="s1_ip3" class="ipdown" maxlength="3"/>
                  -
                  <input type="text" name="s1_ip2" id="s1_ip2" class="ipdown" maxlength="3"/>
                  -
                  <input type="text" name="s1_ip1" id="s1_ip1" class="ipdown" maxlength="3"/>
                </div>
              </div>
            </fieldset>
            <fieldset title="AP Setup">
              <legend class="hide">Discover and setup APs</legend>
              <div class="formSep control-group">
                <label for="s_street" class="control-label">Street Address</b></label>
                <div id="progress1" class="sepH_b">
                  <div class="percent"></div>
                  <div class="pbar"></div>
                  <div class="elapsed"></div>
                </div>
                <div class="controls"></div>
              </div>
              <div class="formSep control-group">
                <label for="s_city" class="control-label">City</b></label>
                <div class="controls">
                  <input type="text" name="s_city" id="s_city" />
                </div>
              </div>
              <div class="sepH_c control-group">
                <label for="s_country" class="control-label">Country</b></label>
                <div class="controls">
                  <input type="text" name="s_country" id="s_country" />
                </div>
              </div>
            </fieldset>
            <button type="button" class="finish btn btn-primary"><i class="icon-ok icon-white"></i> Send registration</button>
          </form>
        </div>
      </div>
    </div>
  </div>		
<!-- wizard functions -->
<script src="js/gebo_wizard.js"></script>
<!-- form functions -->
<script src="js/ap_wizard.js"></script>
<script type="text/javascript">
	$.parser.parse("#contentwrapper");
</script>