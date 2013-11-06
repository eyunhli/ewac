<%@ page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
%>		
		<div class="sidebar">
				
				<div class="antiScroll">
					<div class="antiscroll-inner">
						<div class="antiscroll-content">
					
							<div class="sidebar_inner">
 								<div id="side_accordion" class="accordion">
									
									<div class="accordion-group">
										<div class="accordion-heading">
											<a href="#collapseOne" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
												<i class="icon-asterisk"></i> Discovery
											</a>
										</div>
										<div class="accordion-body in collapse" id="collapseOne">
											<div class="accordion-inner">
                                                <ul class="nav nav-list">
 													<li class="active"><a href="access_point.html">Discovery Wizard</a></li>
                                                    <li><a href="acc_dis_la.html">Last Discovered</a></li>
 													<li><a href="acc_dis_ma.html">Manged AP List</a></li>
 												</ul>											</div>
										</div>
							    </div>
									 
									 
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
			<script>
				$(document).ready(function() {
					//* show all elements & remove preloader
					setTimeout('$("html").removeClass("js")',1000);
				});
			</script>
