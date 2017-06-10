<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Material Admin</title>
       
       <spring:url value="/resources/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" var="full_callendar_css" />
		<spring:url value="/resources/vendors/bower_components/animate.css/animate.min.css" var="animate_css" />
		<spring:url value="/resources/vendors/bower_components/sweetalert2/dist/sweetalert2.min.css" var="sweetalert_css" />
		<spring:url value="/resources/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" var="material_css" />
		<spring:url value="/resources/vendors/bower_components/chosen/chosen.css" var="chosen_css" />
		<spring:url value="/resources/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" var="datetimepicker_css" />
		<spring:url value="/resources/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" var="bootstrap_select_css" />
		<spring:url value="/resources/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" var="customScrollBar_css" />
		
		<spring:url value="/resources/vendors/bower_components/dropzone/dist/min/dropzone.min.css" var="dropzone_css" />
		<spring:url value="/resources/vendors/farbtastic/farbtastic.css" var="farbtastic_css" />
		<spring:url value="/resources/vendors/summernote/dist/summernote.css" var="summernote_css" />
		<spring:url value="/resources/vendors/bower_components/datatables.net-dt/css/jquery.dataTables.min.css" var="dataTables_css" />
		
		<spring:url value="/resources/css/app_1.min.css" var="app_1_css"/>
		<spring:url value="/resources/css/app_2.min.css" var="app_2_css"/>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
		<link href="${full_callendar_css}" rel="stylesheet" />
		<link href="${sweetalert_css}" rel="stylesheet" />
		<link href="${animate_css}" rel="stylesheet" />
		<link href="${material_css}" rel="stylesheet" />
		<link href="${customScrollBar_css}" rel="stylesheet" />
		<link href="${chosen_css}" rel="stylesheet" />
		<link href="${bootstrap_select_css}" rel="stylesheet" />
		<link href="${datetimepicker_css}" rel="stylesheet" />
		<link href="${summernote_css}" rel="stylesheet" />
		<link href="${farbtastic_css}" rel="stylesheet" />
		<link href="${dropzone_css}" rel="stylesheet" />
      
		<link href="${app_1_css}" rel="stylesheet" />
		<link href="${app_2_css}" rel="stylesheet" />
   
	 
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">
        <link href="vendors/bower_components/datatables.net-dt/css/jquery.dataTables.min.css" rel="stylesheet">


        <!-- CSS -->
        <link href="css/app_1.min.css" rel="stylesheet">
        <link href="css/app_2.min.css" rel="stylesheet">
    </head>
    <body>
           <jsp:include page="header.jsp" />
           
           <section id="main">
               
            <jsp:include page="sidebar.jsp" />
            <section id="content">
                <div class="container">
                    <div class="block-header">
                        <ul class="actions">
                           
                            <li class="dropdown">
                                <a href="" data-toggle="dropdown">
                                    <i class="zmdi zmdi-more-vert"></i>
                                </a>

                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>
                                        <a href="">Refresh</a>
                                    </li>
                                  
                                </ul>
                            </li>
                        </ul>
                    </div>
                <div class="card">
                        <div class="card-header">
                        	<h1>Reservations</h1>
                        </div>
                        
                        <table id="data-table-command" class="table table-striped table-vmiddle">
                            <thead>
                                <tr>
                                    <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
                                    <th data-column-id="meetingName">Meeting Name</th>
                                    <th data-column-id="startTime">Start Time</th>
                                    <th data-column-id="endTime">End Time</th>
                                    <th data-column-id="room">Room</th>
				                    <th data-column-id="roomLocation">Room Location</th>               
                                    <th data-column-id="commands" data-formatter="commands" data-sortable="false">Edit</th>
                               		<th data-column-id="commands" data-formatter="commands" data-sortable="false">Remove</th>
                               
                                </tr>
                            </thead>
                            <tbody>
                                 <c:forEach items="${meetings}" var="m">      
                                    <tr>
                                    	<td>${m.meetingId}</td>
	                                    <td>${m.meetingName}</td>
	                                    <td>${m.startTime}</td>
	                                    <td>${m.endTime}</td>
	                                    <td>${m.room.roomName}</td>
	                                    <td>${m.room.roomLocation}</td>
	                                  	<td>
	                                  	<form action="editMeeting" method="post">  
	                                  		<input type="hidden" name="meetingId" value="${m.meetingId}" >
	                                  		<button type="submit" class="btn btn-icon command-edit waves-effect waves-circle" >
	                                  		<span class="zmdi zmdi-edit"></span></button> 
	                                  		</form>
	                                  	</td>
	                                  	<td>
	                                  	<form action="doremoveMeeting" method="post">  
	                                  		<input type="hidden" name="meetingId" value="${m.meetingId}" >
	                                  		<button type="submit" class="btn btn-icon command-delete waves-effect waves-circle" >
	                                  		<span class="zmdi zmdi-edit"></span></button> 
	                                  		</form>
	                                  	</td>    
	                                    
                           			</tr>
                    			</c:forEach>

                     
                         
                            </tbody>
                        </table>
                    </div>
                                
                    
                </div>
            </section>
        </section>
            </section>
        </section>
        
        <footer id="footer">
            Copyright &copy; 2015 Material Admin
            
            <ul class="f-menu">
                <li><a href="">Home</a></li>
                <li><a href="">Dashboard</a></li>
                <li><a href="">Reports</a></li>
                <li><a href="">Support</a></li>
                <li><a href="">Contact</a></li>
            </ul>
        </footer>

        <!-- Page Loader -->
        <div class="page-loader">
            <div class="preloader pls-blue">
                <svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

                <p>Please wait...</p>
            </div>
        </div>

        <!-- Older IE warning message -->
        <!--[if lt IE 9]>
            <div class="ie-warning">
                <h1 class="c-white">Warning!!</h1>
                <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
                <div class="iew-container">
                    <ul class="iew-download">
                        <li>
                            <a href="http://www.google.com/chrome/">
                                <img src="img/browsers/chrome.png" alt="">
                                <div>Chrome</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.mozilla.org/en-US/firefox/new/">
                                <img src="img/browsers/firefox.png" alt="">
                                <div>Firefox</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.opera.com">
                                <img src="img/browsers/opera.png" alt="">
                                <div>Opera</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.apple.com/safari/">
                                <img src="img/browsers/safari.png" alt="">
                                <div>Safari</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                                <img src="img/browsers/ie.png" alt="">
                                <div>IE (New)</div>
                            </a>
                        </li>
                    </ul>
                </div>
                <p>Sorry for the inconvenience!</p>
            </div>   
        <![endif]-->

        <!-- Javascript Libraries -->
        
                 <spring:url value="/resources/vendors/bower_components/jquery/dist/jquery.min.js" var="jquery"/>
        <spring:url value="/resources/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js" var="bootstrap"/>

        <spring:url value="/resources/vendors/bower_components/flot/jquery.flot.js" var="flot"/>
        <spring:url value="/resources/vendors/bower_components/flot/jquery.flot.resize.js" var="flot_resize"/>
        <spring:url value="/resources/vendors/bower_components/flot.curvedlines/curvedLines.js" var="curvedLines"/>
        <spring:url value="/resources/vendors/sparklines/jquery.sparkline.min.js" var="sparkline"/>
        <spring:url value="/resources/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js" var="easypiechart"/>
        <spring:url value="/resources/vendors/bower_components/moment/min/moment.min.js" var="moment"/>
        <spring:url value="/resources/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"  var="full_calendar"/>
        <spring:url value="/resources/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js" var="simpleweather"/>
        <spring:url value="/resources/vendors/bower_components/Waves/dist/waves.min.js" var="waves"/>
        <spring:url value="/resources/vendors/bootstrap-growl/bootstrap-growl.min.js" var="growl"/>
        <spring:url value="/resources/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js" var="sweetalert2"/>
        <spring:url value="/resources/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js" var="customScrollBar"/>
        <spring:url value="/resources/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js" var="customScroolBar"/>
        <spring:url value="/resources/vendors/bower_components/autosize/dist/autosize.min.js" var="autosize_js"/>
        <spring:url value="/resources/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js" var="bootstrap_select_js"/>
        <spring:url value="/resources/vendors/bower_components/chosen/chosen.jquery.js" var="chosen_js"/>
        <spring:url value="/resources/vendors/bower_components/nouislider/distribute/nouislider.min.js" var="nouislider_js"/>
        <spring:url value="/resources/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js" var="datetimepicker_js"/>
        <spring:url value="/resources/vendors/farbtastic/farbtastic.min.js" var="farbtastic_js"/>
        <spring:url value="/resources/vendors/bower_components/dropzone/dist/min/dropzone.min.js" var="dropzone_js"/>
        <spring:url value="/resources/vendors/summernote/dist/summernote-updated.min.js" var="summerzone_js"/>
        <spring:url value="/resources/vendors/summernote/dist/summernote-updated.min.js" var="summerzone_js"/>
        <spring:url value="/resources/vendors/bootgrid/jquery.bootgrid.updated.min.js" var="bootgrid"/>
        
        

        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->

        <spring:url value="resources/vendors/bower_components/jquery-mask-plugin/dist/jquery.mask.min.js" var="jqueryMask"/>
        <spring:url value="resources/vendors/fileinput/fileinput.min.js" var="fileInput_js"/>
        <spring:url value="/resources/js/app.min.js" var="app"/>
        <spring:url value="/resources/vendors/bower_components/datatables.net/js/jquery.dataTables.min.js" var="dataTables_js"/>
        
        
        <script src="${jquery}"></script>
        <script src="${bootstrap}"></script>
        <script src="${bootgrid}"></script>   
        <script src="${flot}"></script>
        <script src="${flot_resize}"></script>
        <script src="${curvedLines}"></script>
        <script src="${sparkline}"></script>
        <script src="${waves}"></script>
        <script src="${easypiechart}"></script>
        <script src="${moment}"></script>
        <script src="${full_calendar}"></script>
        <script src="${simpleweather}"></script>
        <script src="${growl}"></script>
        <script src="${sweetalert2}"></script>
       	<script src="${customScrollBar}"></script>
        <script src="${autosize_js}"></script>
        <script src="${bootstrap_select_js}"></script>
        <script src="${chosen_js}"></script>
        <script src="${datetimepicker_js}"></script>
        <script src="${nouislider_js}"></script>
        <script src="${farbtastic_js}"></script>
        <script src="${summerzone_js}"></script>
        <script src="${dropzone_js}"></script>
        <script src="${dataTables_js}"></script>
        <script src="${fileInput_js}"></script>
        <script src="${jqueryMask}"></script>
        <script src="${app}"></script>
        
        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->

        <script src="js/app.min.js"></script>

        <script type="text/javascript">
            
            $(document).ready(function(){
                //Basic Example
                $("#data-table-basic").bootgrid({
                    css: {
                        icon: 'zmdi icon',
                        iconColumns: 'zmdi-view-module',
                        iconDown: 'zmdi-sort-amount-desc',
                        iconRefresh: 'zmdi-refresh',
                        iconUp: 'zmdi-sort-amount-asc'
                    },
                });

                //Selection
                $("#data-table-selection").bootgrid({
                    css: {
                        icon: 'zmdi icon',
                        iconColumns: 'zmdi-view-module',
                        iconDown: 'zmdi-sort-amount-desc',
                        iconRefresh: 'zmdi-refresh',
                        iconUp: 'zmdi-sort-amount-asc'
                    },
                    selection: true,
                    multiSelect: true,
                    rowSelect: true,
                    keepSelection: true
                });

                //Command Buttons
               
        </script>
            
        
    </body>
  </html>