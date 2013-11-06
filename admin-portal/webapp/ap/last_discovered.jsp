<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
	<div class="row-fluid">
		<div class="span4">
			<form id="Working Area" class="form-horizontal" action="ap_wizard_add.html">
				<fieldset title="Working Area">
					<h3 class="heading">Working Area</h3>
					<div class="control-group">
						<label for="s_building" class=""><strong>Building:</strong></b></label>
						<div class="">
							<input type="text" id="s_building" name="s_building" class="span10" value="吉隆坡双子塔A座" />
						</div>
					</div>
					<div class="control-group">
						<label for="s_floor" class=""><strong>Floor:</strong></b></label>
						<div class="">
							<input type="text" id="s_floor" name="s_floor" class="span10" value="32" />
						</div>
					</div>
					<div class="control-group">
						<label for="s_name" class=""><strong>Name:</strong></b></label>
						<div class="">
							<input type="text" id="s_name" name="s_name" class="span10" value="3201" />
						</div>
					</div>
					<div class="formSep control-group well">
						<label for="s_floor" class="control-label"></b></label>
						<div class="">
							<img src="img/ap_brand_1.jpg" />
						</div>
					</div>
					<span>connect your AP and press <em>Config</em> to process config</span>
					<button id="next_ap" type="button" class="finish btn btn-primary">
						<i class="icon-wrench icon-white"></i> Config
					</button>
				</fieldset>
			</form>
		</div>
		<div class="span4">
			<fieldset title="Information Panel">
				<h3 class="heading">Information Panel</h3>
				<label for="s_floor" class="control-label"><Strong>Progress</Strong></b></label>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label">Connecting ...... Done!</b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 100%" class="bar"></div>
					</div>
					<p style="text-align: right">
						Done &nbsp;<span class="percent icon-check"></span>
					</p>
				</div>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label">Authenticating ......</b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 100%" class="bar"></div>
					</div>
					<p style="text-align: right">
						Done &nbsp;<span class="percent icon-check"></span>
					</p>
				</div>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label">Set SSID ......</b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 100%" class="bar"></div>
					</div>
					<p style="text-align: right">
						Done &nbsp;<span class="percent icon-check"></span>
					</p>
				</div>
				<div class="formSep control-group">
					<label for="s_floor" class="control-label"><em>Set Security ......</em></b></label>
					<div class="sepH_b progress progress-info progress-striped active">
						<div style="width: 85%" class="bar"></div>
					</div>
				</div>
			</fieldset>
		</div>
		<div class="span12">
			<fieldset title="Information Panel">
				<h3 class="heading">Information Panel</h3>
				<div class="container">
					<div id="ex-tree" class="tree">
						<div class="tree-folder" style="display:none;">
							<div class="tree-folder-header">
								<i class="icon-folder-close"></i>
								<div class="tree-folder-name"></div>
							</div>
							<div class="tree-folder-content"></div>
							<div class="tree-loader" style="display:none"></div>
						</div>
						<div class="tree-item" style="display:none;">
							<i class="tree-dot"></i>
	
							<div class="tree-item-name"></div>
						</div>
					</div>
				</div>
			</fieldset>
		</div>
	</div>

