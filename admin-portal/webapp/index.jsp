<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>HP EWAC-7050</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css" />
            <link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-responsive.min.css" />
        <!-- jQuery UI theme-->
            <link rel="stylesheet" href="<%=path%>/lib/jquery-ui/css/Aristo/Aristo.css" />            
        <!-- gebo blue theme-->
            <link rel="stylesheet" href="<%=path%>/css/blue.css" id="link_theme" />
        <!-- breadcrumbs-->
            <link rel="stylesheet" href="<%=path%>/lib/jBreadcrumbs/css/BreadCrumb.css" />
        <!-- tooltips-->
            <link rel="stylesheet" href="<%=path%>/lib/qtip2/jquery.qtip.min.css" />
        <!-- colorbox -->
            <link rel="stylesheet" href="<%=path%>/lib/colorbox/colorbox.css" />    
        <!-- code prettify -->
            <link rel="stylesheet" href="<%=path%>/lib/google-code-prettify/prettify.css" />    
        <!-- notifications -->
            <link rel="stylesheet" href="<%=path%>/lib/sticky/sticky.css" />    
        <!-- wizard -->
            <link rel="stylesheet" href="<%=path%>/lib/stepy/css/jquery.stepy.css" />
        <!-- splashy icons -->
            <link rel="stylesheet" href="<%=path%>/img/splashy/splashy.css" />
        <!-- nice form elements -->
            <link rel="stylesheet" href="<%=path%>/lib/uniform/Aristo/uniform.aristo.css" />         
		<!-- flags -->
            <link rel="stylesheet" href="<%=path%>/img/flags/flags.css" />	
		<!-- datatables -->
            <link rel="stylesheet" href="<%=path%>/lib/datatables/extras/TableTools/media/css/TableTools.css">
            
        <!-- main styles -->
            <link rel="stylesheet" href="<%=path%>/css/style.css" />
			
            <!--link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans" /-->
	
        <!-- Favicon -->
            <link rel="shortcut icon" href="<%=path%>/favicon.ico" />
		
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="<%=path%>/css/ie.css" />
            <script src="<%=path%>/js/ie/html5.js"></script>
			<script src="<%=path%>/js/ie/respond.min.js"></script>
			<script src="<%=path%>/lib/flot/excanvas.min.js"></script>
        <![endif]-->
		
		<script>
			//* hide all elements & show preloader
			document.documentElement.className += 'js';
		</script>
		<style type="text/css">
		input.ipup {width:30px;}
		input.ipdown {width:30px;}
		</style>
    </head>
    <body>
		<div id="loading_layer" style="display:none"><img src="<%=path%>/img/ajax_loader.gif" alt="" /></div>
		<div class="style_switcher">
			<div class="sepH_c">
				<p>Colors:</p>
				<div class="clearfix">
					<a href="javascript:void(0)" class="style_item jQclr blue_theme style_active" title="blue">blue</a>
					<a href="javascript:void(0)" class="style_item jQclr dark_theme" title="dark">dark</a>
					<a href="javascript:void(0)" class="style_item jQclr green_theme" title="green">green</a>
					<a href="javascript:void(0)" class="style_item jQclr brown_theme" title="brown">brown</a>
					<a href="javascript:void(0)" class="style_item jQclr eastern_blue_theme" title="eastern_blue">eastern blue</a>
					<a href="javascript:void(0)" class="style_item jQclr tamarillo_theme" title="tamarillo">tamarillo</a>
				</div>
			</div>
			<div class="sepH_c">
				<p>Backgrounds:</p>
				<div class="clearfix">
					<span class="style_item jQptrn style_active ptrn_def" title=""></span>
					<span class="ssw_ptrn_a style_item jQptrn" title="ptrn_a"></span>
					<span class="ssw_ptrn_b style_item jQptrn" title="ptrn_b"></span>
					<span class="ssw_ptrn_c style_item jQptrn" title="ptrn_c"></span>
					<span class="ssw_ptrn_d style_item jQptrn" title="ptrn_d"></span>
					<span class="ssw_ptrn_e style_item jQptrn" title="ptrn_e"></span>
				</div>
			</div>
			<div class="sepH_c">
				<p>Layout:</p>
				<div class="clearfix">
					<label class="radio inline"><input type="radio" name="ssw_layout" id="ssw_layout_fluid" value="" checked /> Fluid</b></label>
					<label class="radio inline"><input type="radio" name="ssw_layout" id="ssw_layout_fixed" value="gebo-fixed" /> Fixed</b></label>
				</div>
			</div>
			<div class="sepH_c">
				<p>Sidebar position:</p>
				<div class="clearfix">
					<label class="radio inline"><input type="radio" name="ssw_sidebar" id="ssw_sidebar_left" value="" checked /> Left</b></label>
					<label class="radio inline"><input type="radio" name="ssw_sidebar" id="ssw_sidebar_right" value="sidebar_right" /> Right</b></label>
				</div>
			</div>
			<div class="sepH_c">
				<p>Show top menu on:</p>
				<div class="clearfix">
					<label class="radio inline"><input type="radio" name="ssw_menu" id="ssw_menu_click" value="" checked /> Click</b></label>
					<label class="radio inline"><input type="radio" name="ssw_menu" id="ssw_menu_hover" value="menu_hover" /> Hover</b></label>
				</div>
			</div>
			
			<div class="gh_button-group">
				<a href="#" id="showCss" class="btn btn-primary btn-mini">Show CSS</a>
				<a href="#" id="resetDefault" class="btn btn-mini">Reset</a>
			</div>
			<div class="hide">
				<ul id="ssw_styles">
					<li class="small ssw_mbColor sepH_a" style="display:none">body {<span class="ssw_mColor sepH_a" style="display:none"> color: #<span></span>;</span> <span class="ssw_bColor" style="display:none">background-color: #<span></span> </span>}</li>
					<li class="small ssw_lColor sepH_a" style="display:none">a { color: #<span></span> }</li>
				</ul>
			</div>
		</div>
		
		<div id="maincontainer" class="clearfix">
			<!-- header -->
            <header>
                <div class="navbar navbar-fixed-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="brand" href="#"><!--<i class="icon-home icon-white"></i>--> HP EWAC-7050</a>
                            <ul class="nav user_menu pull-right">
                                <li class="hidden-phone hidden-tablet">
                                    <div class="nb_boxes clearfix">
                                       <!-- <a data-toggle="modal" data-backdrop="static" href="#myMail" class="label ttip_b" title="New messages">25 <i class="splashy-mail_light"></i></a>
                                        <a data-toggle="modal" data-backdrop="static" href="#myTasks" class="label ttip_b" title="New tasks">10 <i class="splashy-calendar_week"></i></a>
                                   --> </div>
                                </li>
								<li class="divider-vertical hidden-phone hidden-tablet"></li>
                                <li class="dropdown">
                                   <!-- <a href="#" class="dropdown-toggle nav_condensed" data-toggle="dropdown"><i class="flag-gb"></i> <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
										<li><a href="javascript:void(0)"><i class="flag-de"></i> Deutsch</a></li>
										<li><a href="javascript:void(0)"><i class="flag-fr"></i> Français</a></li>
										<li><a href="javascript:void(0)"><i class="flag-es"></i> Español</a></li>
										<li><a href="javascript:void(0)"><i class="flag-ru"></i> Pусский</a></li>
                                    </ul>-->
                                </li>
                                <li class="divider-vertical hidden-phone hidden-tablet"></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=path%>/img/user_avatar.png" alt="" class="user_avatar" /> ${username} <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
								<!--		<li><a href="user_profile.html">My Profile</a></li>
										<li><a href="javascrip:void(0)">Another action</a></li>
										<li class="divider"></li>-->
										<li><a href="/ac/login">Log Out</a></li>
                                    </ul>
                                </li>
                            </ul>
							<ul class="nav" id="mobile-nav-n">
								<c:forEach items="${menus}" var="menu">
								<li>
									<a href="javascript:void(0)" id="${menu.id}" onclick="switchMenu(this)"><i class="${menu.icon} icon-white" ></i> ${menu.name} </a>								
								</li>
								</c:forEach> 
							</ul>
		                  </div>
                    </div>
                </div>
                <div class="modal hide fade" id="myMail">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">×</button>
                        <h3>New messages</h3>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                        <table class="table table-condensed table-striped" data-provides="rowlink">
                            <thead>
                                <tr>
                                    <th>Sender</th>
                                    <th>Subject</th>
                                    <th>Date</th>
                                    <th>Size</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Declan Pamphlett</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>23/05/2012</td>
                                    <td>25KB</td>
                                </tr>
                                <tr>
                                    <td>Erin Church</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>24/05/2012</td>
                                    <td>15KB</td>
                                </tr>
                                <tr>
                                    <td>Koby Auld</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>25/05/2012</td>
                                    <td>28KB</td>
                                </tr>
                                <tr>
                                    <td>Anthony Pound</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>25/05/2012</td>
                                    <td>33KB</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:void(0)" class="btn">Go to mailbox</a>
                    </div>
                </div>
                <div class="modal hide fade" id="myTasks">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">×</button>
                        <h3>New Tasks</h3>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                        <table class="table table-condensed table-striped" data-provides="rowlink">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Summary</th>
                                    <th>Updated</th>
                                    <th>Priority</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>P-23</td>
                                    <td><a href="javascript:void(0)">Admin should not break if URL&hellip;</a></td>
                                    <td>23/05/2012</td>
                                    <td class="tac"><span class="label label-important">High</span></td>
                                    <td>Open</td>
                                </tr>
                                <tr>
                                    <td>P-18</td>
                                    <td><a href="javascript:void(0)">Displaying submenus in custom&hellip;</a></td>
                                    <td>22/05/2012</td>
                                    <td class="tac"><span class="label label-warning">Medium</span></td>
                                    <td>Reopen</td>
                                </tr>
                                <tr>
                                    <td>P-25</td>
                                    <td><a href="javascript:void(0)">Featured image on post types&hellip;</a></td>
                                    <td>22/05/2012</td>
                                    <td class="tac"><span class="label label-success">Low</span></td>
                                    <td>Updated</td>
                                </tr>
                                <tr>
                                    <td>P-10</td>
                                    <td><a href="javascript:void(0)">Multiple feed fixes and&hellip;</a></td>
                                    <td>17/05/2012</td>
                                    <td class="tac"><span class="label label-warning">Medium</span></td>
                                    <td>Open</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:void(0)" class="btn">Go to task manager</a>
                    </div>
                </div>
            </header>
            
            <!-- main content -->
            <div id="contentwrapper">
            
            </div>
            
            
			<!-- sidebar -->
            <a href="javascript:void(0)" class="sidebar_switch on_switch ttip_r" title="Hide Sidebar">Sidebar switch</a>
            <div class="sidebar">
				
				<div class="antiScroll">
					<div class="antiscroll-inner">
						<div class="antiscroll-content">
					
							<div class="sidebar_inner">
 								<div id="side_accordion" class="accordion">							 
									 
							</div>
						</div>
					</div>
				</div>
			</div></div></div> 
            
            <script src="<%=path%>/js/jquery.min.js"></script>
            <script src="<%=path%>/js/jquery-migrate.min.js"></script>
				<script src="<%=path%>/lib/jquery-ui/jquery-ui-1.10.0.custom.min.js"></script>            
			<!-- smart resize event -->
			<script src="<%=path%>/jquery.debouncedresize.min.js"></script>
			<!-- hidden elements width/height -->
			<script src="<%=path%>/js/jquery.actual.min.js"></script>
			<!-- js cookie plugin -->
			<script src="<%=path%>/js/jquery_cookie.min.js"></script>
			<!-- main bootstrap js -->
			<script src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
             <!-- bootstrap plugins -->
			<script src="<%=path%>/js/bootstrap.plugins.min.js"></script>
			<!-- tooltips -->
			<script src="<%=path%>/lib/qtip2/jquery.qtip.min.js"></script>
         <!-- styled form elements -->
         <script src="<%=path%>/lib/uniform/jquery.uniform.min.js"></script>			
			<!-- animated progressbars -->
         <script src="<%=path%>/js/forms/jquery.progressbar.anim.js"></script>
			<!-- jBreadcrumbs -->
			<script src="<%=path%>/lib/jBreadcrumbs/js/jquery.jBreadCrumb.1.1.min.js"></script>
			<!-- fix for ios orientation change -->
			<script src="<%=path%>/js/ios-orientationchange-fix.js"></script>
			<!-- scrollbar -->
			<script src="<%=path%>/lib/antiscroll/antiscroll.js"></script>
			<script src="<%=path%>/lib/antiscroll/jquery-mousewheel.js"></script>
			<!-- lightbox -->
            <script src="<%=path%>/lib/colorbox/jquery.colorbox.min.js"></script>
			<!-- mobile nav -->
			<script src="<%=path%>/js/selectNav.js"></script>
            <!-- common functions -->
			<script src="<%=path%>/js/gebo_common.js"></script>
			
			<!-- validation -->
			<script src="<%=path%>/lib/validation/jquery.validate.min.js"></script>
			<!-- wizard -->
			<script src="<%=path%>/lib/stepy/js/jquery.stepy.min.js"></script>
			<!-- wizard functions -->
			<script src="<%=path%>/js/gebo_wizard.js"></script>
			<!-- form functions -->
         	<script src="<%=path%>/js/ap_wizard.js"></script>
         	
         	 <!-- datatable -->
            <script src="<%=path%>/lib/datatables/jquery.dataTables.min.js"></script>
            <script src="<%=path%>/lib/datatables/extras/Scroller/media/js/dataTables.scroller.min.js"></script>
            <!-- datatable table tools -->
            <script src="<%=path%>/lib/datatables/extras/TableTools/media/js/TableTools.min.js"></script>
            <script src="<%=path%>/lib/datatables/extras/TableTools/media/js/ZeroClipboard.js"></script>
            <!-- datatables bootstrap integration -->
            <script src="<%=path%>/lib/datatables/jquery.dataTables.bootstrap.min.js"></script>
            <!-- datatable functions -->
            <script src="<%=path%>/js/gebo_datatables.js"></script>
			<script>
				$(document).ready(function() {
					//* show all elements & remove preloader
					setTimeout('$("html").removeClass("js")',1000);
					
				});
				$.ajaxSetup ({
					cache: false //关闭AJAX相应的缓存
				});
				
				var activeMenu = null;
		        function switchMenu(m) {
		            if (activeMenu != null) {
		                $(activeMenu).removeClass("active");
		            }
		            $(m.parentNode).addClass("active");
		            activeMenu = m.parentNode;
					$('#side_accordion').load("<%=path%>/ac/menus.json?id="+m.id,function(){
						$('#side_accordion').find("li a")[0].click();
					})  
		        }
		        
		        var activeLeft = null;
		        function main(m,url){
		        	if (activeLeft != null) {
		                $(activeLeft).removeClass("active");
		            }
		        	$(m.parentNode).addClass("active");
		        	activeLeft = m.parentNode;
		        	$('#contentwrapper').load("<%=path%>/"+url)    
		        }
       
	       		switchMenu($('#mobile-nav-n').find("a")[0]);	      
		</script>
	</body>
</html>