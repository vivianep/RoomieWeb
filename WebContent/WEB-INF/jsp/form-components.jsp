<!DOCTYPE html>
    <!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Material Admin</title>

        <!-- Vendor CSS -->
        <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
        <link href="vendors/bower_components/nouislider/distribute/nouislider.min.css" rel="stylesheet">
        <link href="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="vendors/bower_components/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
        <link href="vendors/farbtastic/farbtastic.css" rel="stylesheet">
        <link href="vendors/bower_components/chosen/chosen.css" rel="stylesheet">
        <link href="vendors/summernote/dist/summernote.css" rel="stylesheet">

   		<spring:url value="/resources/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" var="full_callendar" />
		<spring:url value="/resources/vendors/bower_components/animate.css/animate.min.css" var="vendors_bower_animate" />
		<spring:url value="/resources/vendors/bower_components/sweetalert2/dist/sweetalert2.min.css" var="vendors_bower_sweetalert" />
		<spring:url value="/resources/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" var="vendors_bower_material" />
		<spring:url value="/resources/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" var="vendors_custom_scrollbar" />
		<spring:url value="/resources/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" var="bootstrap_select" />
		<spring:url value="/resources/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" var="full_callendar" />
		<spring:url value="/resources/vendors/bower_components/nouislider/distribute/nouislider.min.css" var="nouislider" />
		<spring:url value="/resources/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" var="datetimepicker" />
		<spring:url value="/resources/vendors/farbtastic/farbtastic.css" var="farbtastic" />
		<spring:url value="/resources/vendors/bower_components/chosen/chosen.css" var="chosen" />
		<spring:url value="/resources/vendors/summernote/dist/summernote.css" var="summer_note" />
		
		
		<spring:url value="/resources/css/app_1.min.css" var="app_1"/>
		<spring:url value="/resources/css/app_2.min.css" var="app_2"/>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
		<link href="${full_callendar}" rel="stylesheet" />
		<link href="${vendors_bower_sweetalert}" rel="stylesheet" />
		<link href="${vendors_bower_animate}" rel="stylesheet" />
		<link href="${vendors_bower_material}" rel="stylesheet" />
		
		<link href="${bootstrap_select}" rel="stylesheet" />
		<link href="${app_1}" rel="stylesheet" />
		<link href="${app_2}" rel="stylesheet" />
		<link href="${summer_note}" rel="stylesheet" />
		<link href="${chosen}" rel="stylesheet" />
		<link href="${farbtastic}" rel="stylesheet" />
		<link href="${bootstrap_select}" rel="stylesheet" />
		<link href="${datetimepicker}" rel="stylesheet" />
		<link href="${nouislider}" rel="stylesheet" />
		
		
        <!-- CSS -->
        <link href="css/app_1.min.css" rel="stylesheet">
        <link href="css/app_2.min.css" rel="stylesheet">

        <!-- Following CSS are used only for the Demp purposes thus you can remove this anytime. -->
        <link href="css/demo.css" rel="stylesheet">
    </head>

    <body>
        <header id="header" class="clearfix" data-ma-theme="blue">
            <ul class="h-inner">
                <li class="hi-trigger ma-trigger" data-ma-action="sidebar-open" data-ma-target="#sidebar">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </li>

                <li class="hi-logo hidden-xs">
                    <a href="index.html">Material Admin</a>
                </li>

                <li class="pull-right">
                    <ul class="hi-menu">

                        <li data-ma-action="search-open">
                            <a href=""><i class="him-icon zmdi zmdi-search"></i></a>
                        </li>

                        <li class="dropdown">
                            <a data-toggle="dropdown" href="">
                                <i class="him-icon zmdi zmdi-email"></i>
                                <i class="him-counts">6</i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg pull-right">
                                <div class="list-group">
                                    <div class="lg-header">
                                        Messages
                                    </div>
                                    <div class="lg-body">
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/1.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">David Belle</div>
                                                <small class="lgi-text">Cum sociis natoque penatibus et magnis dis parturient montes</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/2.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Jonathan Morris</div>
                                                <small class="lgi-text">Nunc quis diam diamurabitur at dolor elementum, dictum turpis vel</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/3.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Fredric Mitchell Jr.</div>
                                                <small class="lgi-text">Phasellus a ante et est ornare accumsan at vel magnauis blandit turpis at augue ultricies</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/4.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Glenn Jecobs</div>
                                                <small class="lgi-text">Ut vitae lacus sem ellentesque maximus, nunc sit amet varius dignissim, dui est consectetur neque</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/4.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Bill Phillips</div>
                                                <small class="lgi-text">Proin laoreet commodo eros id faucibus. Donec ligula quam, imperdiet vel ante placerat</small>
                                            </div>
                                        </a>
                                    </div>
                                    <a class="view-more" href="">View All</a>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a data-toggle="dropdown" href="">
                                <i class="him-icon zmdi zmdi-notifications"></i>
                                <i class="him-counts">9</i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg pull-right">
                                <div class="list-group him-notification">
                                    <div class="lg-header">
                                        Notification

                                        <ul class="actions">
                                            <li class="dropdown">
                                                <a href="" data-ma-action="clear-notification">
                                                    <i class="zmdi zmdi-check-all"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="lg-body">
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/1.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">David Belle</div>
                                                <small class="lgi-text">Cum sociis natoque penatibus et magnis dis parturient montes</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/2.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Jonathan Morris</div>
                                                <small class="lgi-text">Nunc quis diam diamurabitur at dolor elementum, dictum turpis vel</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/3.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Fredric Mitchell Jr.</div>
                                                <small class="lgi-text">Phasellus a ante et est ornare accumsan at vel magnauis blandit turpis at augue ultricies</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/4.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Glenn Jecobs</div>
                                                <small class="lgi-text">Ut vitae lacus sem ellentesque maximus, nunc sit amet varius dignissim, dui est consectetur neque</small>
                                            </div>
                                        </a>
                                        <a class="list-group-item media" href="">
                                            <div class="pull-left">
                                                <img class="lgi-img" src="img/demo/profile-pics/4.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lgi-heading">Bill Phillips</div>
                                                <small class="lgi-text">Proin laoreet commodo eros id faucibus. Donec ligula quam, imperdiet vel ante placerat</small>
                                            </div>
                                        </a>
                                    </div>

                                    <a class="view-more" href="">View Previous</a>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown hidden-xs">
                            <a data-toggle="dropdown" href="">
                                <i class="him-icon zmdi zmdi-view-list-alt"></i>
                                <i class="him-counts">2</i>
                            </a>
                            <div class="dropdown-menu pull-right dropdown-menu-lg">
                                <div class="list-group">
                                    <div class="lg-header">
                                        Tasks
                                    </div>
                                    <div class="lg-body">
                                        <div class="list-group-item">
                                            <div class="lgi-heading m-b-5">HTML5 Validation Report</div>

                                            <div class="progress">
                                                <div class="progress-bar" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                                                    <span class="sr-only">95% Complete (success)</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="lgi-heading m-b-5">Google Chrome Extension</div>

                                            <div class="progress">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                    <span class="sr-only">80% Complete (success)</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="lgi-heading m-b-5">Social Intranet Projects</div>

                                            <div class="progress">
                                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="lgi-heading m-b-5">Bootstrap Admin Template</div>

                                            <div class="progress">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    <span class="sr-only">60% Complete (warning)</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="lgi-heading m-b-5">Youtube Client App</div>

                                            <div class="progress">
                                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                    <span class="sr-only">80% Complete (danger)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <a class="view-more" href="">View All</a>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a data-toggle="dropdown" href=""><i class="him-icon zmdi zmdi-more-vert"></i></a>
                            <ul class="dropdown-menu dm-icon pull-right">
                                <li class="skin-switch hidden-xs">
                                    <span class="ss-skin bgm-lightblue" data-ma-action="change-skin" data-ma-skin="lightblue"></span>
                                    <span class="ss-skin bgm-bluegray" data-ma-action="change-skin" data-ma-skin="bluegray"></span>
                                    <span class="ss-skin bgm-cyan" data-ma-action="change-skin" data-ma-skin="cyan"></span>
                                    <span class="ss-skin bgm-teal" data-ma-action="change-skin" data-ma-skin="teal"></span>
                                    <span class="ss-skin bgm-orange" data-ma-action="change-skin" data-ma-skin="orange"></span>
                                    <span class="ss-skin bgm-blue" data-ma-action="change-skin" data-sma-kin="blue"></span>
                                </li>
                                <li class="divider hidden-xs"></li>
                                <li class="hidden-xs">
                                    <a data-ma-action="fullscreen" href=""><i class="zmdi zmdi-fullscreen"></i> Toggle Fullscreen</a>
                                </li>
                                <li>
                                    <a data-ma-action="clear-localstorage" href=""><i class="zmdi zmdi-delete"></i> Clear Local Storage</a>
                                </li>
                                <li>
                                    <a href=""><i class="zmdi zmdi-face"></i> Privacy Settings</a>
                                </li>
                                <li>
                                    <a href=""><i class="zmdi zmdi-settings"></i> Other Settings</a>
                                </li>
                            </ul>
                        </li>
                        <li class="hidden-xs ma-trigger" data-ma-action="sidebar-open" data-ma-target="#chat">
                            <a href=""><i class="him-icon zmdi zmdi-comment-alt-text"></i></a>
                        </li>
                    </ul>
                </li>
            </ul>

            <!-- Top Search Content -->
            <div class="h-search-wrap">
                <div class="hsw-inner">
                    <i class="hsw-close zmdi zmdi-arrow-left" data-ma-action="search-close"></i>
                    <input type="text">
                </div>
            </div>
        </header>

        <section id="main">
            <aside id="sidebar" class="sidebar c-overflow">
                <div class="s-profile">
                    <a href="" data-ma-action="profile-menu-toggle">
                        <div class="sp-pic">
                            <img src="img/demo/profile-pics/1.jpg" alt="">
                        </div>

                        <div class="sp-info">
                            Malinda Hollaway

                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                    </a>

                    <ul class="main-menu">
                        <li>
                            <a href="profile-about.html"><i class="zmdi zmdi-account"></i> View Profile</a>
                        </li>
                        <li>
                            <a href=""><i class="zmdi zmdi-input-antenna"></i> Privacy Settings</a>
                        </li>
                        <li>
                            <a href=""><i class="zmdi zmdi-settings"></i> Settings</a>
                        </li>
                        <li>
                            <a href=""><i class="zmdi zmdi-time-restore"></i> Logout</a>
                        </li>
                    </ul>
                </div>

                <ul class="main-menu">
                    <li><a href="index.html"><i class="zmdi zmdi-home"></i> Home</a></li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-chart"></i> Dashboards</a>

                        <ul>
                            <li><a href="dashboards/analytics.html">Analytics</a></li>
                            <li><a href="dashboards/school.html">School</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-view-compact"></i> Headers</a>

                        <ul>
                            <li><a href="textual-menu.html">Textual menu</a></li>
                            <li><a href="image-logo.html">Image logo</a></li>
                            <li><a href="top-mainmenu.html">Mainmenu on top</a></li>
                        </ul>
                    </li>
                    <li><a href="typography.html"><i class="zmdi zmdi-format-underlined"></i> Typography</a></li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-widgets"></i> Widgets</a>

                        <ul>
                            <li><a href="widget-templates.html">Templates</a></li>
                            <li><a href="widgets.html">Widgets</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-view-list"></i> Tables</a>

                        <ul>
                            <li><a href="tables.html">Normal Tables</a></li>
                            <li><a href="data-tables.html">Data Tables</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu active toggled">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-collection-text"></i> Forms</a>

                        <ul>
                            <li><a href="form-elements.html">Basic Form Elements</a></li>
                            <li><a class="active" href="form-components.html">Form Components</a></li>
                            <li><a href="form-examples.html">Form Examples</a></li>
                            <li><a href="form-validations.html">Form Validation</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-swap-alt"></i>User Interface</a>
                        <ul>
                            <li><a href="colors.html">Colors</a></li>
                            <li><a href="animations.html">Animations</a></li>
                            <li><a href="buttons.html">Buttons</a></li>
                            <li><a href="icons.html">Icons</a></li>
                            <li><a href="alerts.html">Alerts</a></li>
                            <li><a href="preloaders.html">Preloaders</a></li>
                            <li><a href="notification-dialog.html">Notifications & Dialogs</a></li>
                            <li><a href="media.html">Media</a></li>
                            <li><a href="components.html">Components</a></li>
                            <li><a href="other-components.html">Others</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-trending-up"></i>Charts & Maps</a>
                        <ul>
                            <li><a href="flot-charts.html">Flot Charts</a></li>
                            <li><a href="other-charts.html">Other Charts</a></li>
                            <li><a href="maps.html">Maps</a></li>
                        </ul>
                    </li>
                    <li><a href="calendar.html"><i class="zmdi zmdi-calendar"></i> Calendar</a></li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-image"></i>Photo Gallery</a>
                        <ul>
                            <li><a href="photos.html">Default</a></li>
                            <li><a href="photo-timeline.html">Timeline</a></li>
                        </ul>
                    </li>

                    <li><a href="generic-classes.html"><i class="zmdi zmdi-layers"></i> Generic Classes</a></li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-collection-item"></i> Sample
                            Pages</a>
                        <ul>

                            <li><a href="profile-about.html">Profile</a></li>
                            <li><a href="list-view.html">List View</a></li>
                            <li><a href="messages.html">Messages</a></li>
                            <li><a href="pricing-table.html">Pricing Table</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="wall.html">Wall</a></li>
                            <li><a href="invoice.html">Invoice</a></li>
                            <li><a href="login.html">Login and Sign Up</a></li>
                            <li><a href="lockscreen.html">Lockscreen</a></li>
                            <li><a href="404.html">Error 404</a></li>

                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-menu"></i> 3 Level Menu</a>

                        <ul>
                            <li><a href="form-elements.html">Level 2 link</a></li>
                            <li><a href="form-components.html">Another level 2 Link</a></li>
                            <li class="sub-menu">
                                <a href="" data-ma-action="submenu-toggle">I have children too</a>

                                <ul>
                                    <li><a href="">Level 3 link</a></li>
                                    <li><a href="">Another Level 3 link</a></li>
                                    <li><a href="">Third one</a></li>
                                </ul>
                            </li>
                            <li><a href="form-validations.html">One more 2</a></li>
                        </ul>
                    </li>
                </ul>
            </aside>

            <aside id="chat" class="sidebar">

                <div class="chat-search">
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Search People">
                        <i class="zmdi zmdi-search"></i>
                    </div>
                </div>

                <div class="lg-body c-overflow">
                    <div class="list-group">
                        <a class="list-group-item media" href="">
                            <div class="pull-left p-relative">
                                <img class="lgi-img" src="img/demo/profile-pics/2.jpg" alt="">
                                <i class="chat-status-busy"></i>
                            </div>
                            <div class="media-body">
                                <div class="lgi-heading">Jonathan Morris</div>
                                <small class="lgi-text">Available</small>
                            </div>
                        </a>

                        <a class="list-group-item media" href="">
                            <div class="pull-left">
                                <img class="lgi-img" src="img/demo/profile-pics/1.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="lgi-heading">David Belle</div>
                                <small class="lgi-text">Last seen 3 hours ago</small>
                            </div>
                        </a>

                        <a class="list-group-item media" href="">
                            <div class="pull-left p-relative">
                                <img class="lgi-img" src="img/demo/profile-pics/3.jpg" alt="">
                                <i class="chat-status-online"></i>
                            </div>
                            <div class="media-body">
                                <div class="lgi-heading">Fredric Mitchell Jr.</div>
                                <small class="lgi-text">Availble</small>
                            </div>
                        </a>

                        <a class="list-group-item media" href="">
                            <div class="pull-left p-relative">
                                <img class="lgi-img" src="img/demo/profile-pics/4.jpg" alt="">
                                <i class="chat-status-online"></i>
                            </div>
                            <div class="media-body">
                                <div class="lgi-heading">Glenn Jecobs</div>
                                <small class="lgi-text">Availble</small>
                            </div>
                        </a>

                        <a class="list-group-item media" href="">
                            <div class="pull-left">
                                <img class="lgi-img" src="img/demo/profile-pics/5.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="lgi-heading">Bill Phillips</div>
                                <small class="lgi-text">Last seen 3 days ago</small>
                            </div>
                        </a>

                        <a class="list-group-item media" href="">
                            <div class="pull-left">
                                <img class="lgi-img" src="img/demo/profile-pics/6.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="lgi-heading">Wendy Mitchell</div>
                                <small class="lgi-text">Last seen 2 minutes ago</small>
                            </div>
                        </a>
                    </div>
                </div>
            </aside>

            <section id="content">
                <div class="container">
                    <div class="block-header">
                        <h2>Form Components</h2>

                        <ul class="actions">
                            <li>
                                <a href="">
                                    <i class="zmdi zmdi-trending-up"></i>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="zmdi zmdi-check-all"></i>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="" data-toggle="dropdown">
                                    <i class="zmdi zmdi-more-vert"></i>
                                </a>

                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>
                                        <a href="">Refresh</a>
                                    </li>
                                    <li>
                                        <a href="">Manage Widgets</a>
                                    </li>
                                    <li>
                                        <a href="">Widgets Settings</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Input Groups
                                <small>Extend form controls by adding text or buttons before, after, or on both sides of
                                    any text-based inputs.
                                </small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <p class="c-black f-500 m-b-5">Basic Example</p>
                            <small>Place one add-on or button on either side of an input. You may also place one on both
                                sides of an input.
                            </small>

                            <br/><br/>

                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Full Name">
                                        </div>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-local-phone"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Contact Number">
                                        </div>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Email Address">
                                        </div>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-pin"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Home Address">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="input-group">
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Landscape">
                                        </div>
                                        <span class="input-group-addon last"><i class="zmdi zmdi-landscape"></i></span>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Weather">
                                        </div>
                                        <span class="input-group-addon last"><i class="zmdi zmdi-sun"></i></span>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Flight">
                                        </div>
                                        <span class="input-group-addon last"><i class="zmdi zmdi-airplane"></i></span>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Location">
                                        </div>
                                        <span class="input-group-addon last"><i
                                                class="zmdi zmdi-my-location"></i></span>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-arrow-missed"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Internet">
                                        </div>
                                        <span class="input-group-addon last"><i class="zmdi zmdi-globe"></i></span>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-money"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Notifications">
                                        </div>
                                        <span class="input-group-addon last"><i
                                                class="zmdi zmdi-plus-circle-o"></i></span>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-mail-send"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Layers">
                                        </div>
                                        <span class="input-group-addon last"><i class="zmdi zmdi-layers "></i></span>
                                    </div>

                                    <br/>

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-portable-wifi"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" placeholder="Messages">
                                        </div>
                                        <span class="input-group-addon last"><i class="zmdi zmdi-dialpad"></i></span>
                                    </div>
                                </div>
                            </div>

                            <br/><br/>
                            <p class="c-black f-500 m-b-5 m-t-20">Floating Labels</p>
                            <small>Basic example for input groups with floating labels</small>

                            <br/>
                            <br/>
                            <br/>

                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="input-group fg-float">
                                        <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control">
                                            <label class="fg-label">Full Name</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="input-group fg-float">
                                        <div class="fg-line">
                                            <input type="text" class="form-control">
                                            <label class="fg-label">Location</label>
                                        </div>
                                        <span class="input-group-addon last"><i
                                                class="zmdi zmdi-my-location"></i></span>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="input-group fg-float">
                                        <span class="input-group-addon"><i class="zmdi zmdi-mail-send"></i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control">
                                            <label class="fg-label">Layers</label>
                                        </div>
                                        <span class="input-group-addon last"><i class="zmdi zmdi-layers "></i></span>
                                    </div>
                                </div>
                            </div>


                            <br/>

                            <p class="c-black f-500 m-b-5 m-t-20">Different Sizes</p>
                            <small>You may use the extra sizing classes to change size of the feilds.</small>

                            <br/><br/>

                            <div class="input-group input-group-lg">
                                <span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
                                <div class="fg-line">
                                    <input type="text" class="form-control input-lg" placeholder="Weather">
                                </div>
                            </div>

                            <br/>

                            <div class="input-group">
                                <span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
                                <div class="fg-line">
                                    <input type="text" class="form-control" placeholder="Weather">
                                </div>
                            </div>

                            <br/>

                            <div class="input-group input-group-sm">
                                <span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
                                <div class="fg-line">
                                    <input type="text" class="form-control input-sm" placeholder="Weather">
                                </div>
                            </div>
                        </div>

                        <br/>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Input Mask
                                <small>An inputmask helps the user with the input by ensuring a predefined format. This
                                    can be useful for dates, numerics, phone numbers etc...
                                </small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <div class="row">
                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>Date</label>
                                        <input type="text" class="form-control input-mask" data-mask="00/00/0000"
                                               placeholder="eg: 23/05/2014">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>Time</label>
                                        <input type="text" class="form-control input-mask" data-mask="00:00:00"
                                               placeholder="eg: 23:06:55">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>Date Time</label>
                                        <input type="text" class="form-control input-mask"
                                               data-mask="00/00/0000 00:00:00" placeholder="eg: 00/00/0000 00:00:00">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>CEP</label>
                                        <input type="text" class="form-control input-mask" data-mask="00000-000"
                                               placeholder="eg: 00000-000">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>Phone Number</label>
                                        <input type="text" class="form-control input-mask" data-mask="000-00-0000000"
                                               placeholder="eg: 000-00-0000000">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>Phone with Odd</label>
                                        <input type="text" class="form-control input-mask" data-mask="(00) 0000-0000"
                                               placeholder="eg: (00) 0000-0000">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>US Phone Number</label>
                                        <input type="text" class="form-control input-mask" data-mask="(000) 000-0000"
                                               placeholder="eg: (000) 000-0000">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>CPF</label>
                                        <input type="text" class="form-control input-mask" data-mask="000.000.000-00"
                                               placeholder="eg: 000.000.000-00">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>Money</label>
                                        <input type="text" class="form-control input-mask"
                                               data-mask="000.000.000.000.000,00"
                                               placeholder="eg: 000.000.000.000.000,00">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>IP Address</label>
                                        <input type="text" class="form-control input-mask" data-mask="000.000.000.000"
                                               placeholder="eg: 000.000.000.000">
                                    </div>
                                </div>

                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label>Percentage</label>
                                        <input type="text" class="form-control input-mask" data-mask="00000,00%"
                                               placeholder="eg: 00000,00%">
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="form-group fg-line">
                                        <label>Credit Card</label>
                                        <input type="text" class="form-control input-mask"
                                               data-mask="0000 0000 0000 0000" placeholder="eg: 0000 0000 0000 0000">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Bootstrap Seelct - Custom Select
                                <small>Bootstrap-select is a jQuery plugin that utilizes Bootstrap's dropdown.js to style and bring additional functionality to standard select elements.</small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <div class="row">
                                <div class="col-sm-3 m-b-25">
                                    <p class="f-500 m-b-15 c-black">Basic Example</p>

                                    <select class="selectpicker">
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-25">
                                    <p class="f-500 m-b-15 c-black">Serach Option</p>

                                    <select class="selectpicker" data-live-search="true">
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                        <option>Tent</option>
                                        <option>Flashlight</option>
                                        <option>Toilet Paper</option>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-25">
                                    <p class="f-500 m-b-15 c-black">Option Groups</p>

                                    <select class="selectpicker">
                                        <optgroup label="Picnic">
                                            <option>Mustard</option>
                                            <option>Ketchup</option>
                                            <option>Relish</option>
                                        </optgroup>
                                        <optgroup label="Camping">
                                            <option>Tent</option>
                                            <option>Flashlight</option>
                                            <option>Toilet Paper</option>
                                        </optgroup>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-25">
                                    <p class="f-500 c-black m-b-15">Disabled Options</p>

                                    <select class="selectpicker">
                                        <option disabled="disabled">Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Mustard</option>
                                        <option disabled="disabled">Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row m-t-20">

                                <div class="col-sm-3 m-b-25">
                                    <p class="f-500 c-black m-b-15">Multi Select</p>

                                    <select class="selectpicker" multiple>
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                        <option>Toasted</option>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-25">
                                    <p class="f-500 c-black m-b-15">Limit Selection - Set to 2</p>

                                    <select class="selectpicker" multiple data-max-options="2"
                                            title='Choose some of...'>
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                        <option>Plain</option>
                                        <option>Steamed</option>
                                        <option>Toasted</option>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-25">
                                    <p class="f-500 c-black m-b-15">Display Count</p>

                                    <select class="selectpicker" multiple data-selected-text-format="count">
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Chosen
                                <small>Make long, unwieldy select boxes more user friendly.</small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <div class="row">
                                <div class="col-sm-3 m-b-15">
                                    <p class="f-500 c-black m-b-15">Basic Example</p>
                                    <select class="chosen" data-placeholder="Choose a Country...">
                                        <option value="United States">United States</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option value="Afghanistan">Afghanistan</option>
                                        <option value="Aland Islands">Aland Islands</option>
                                        <option value="Albania">Albania</option>
                                        <option value="Algeria">Algeria</option>
                                        <option value="American Samoa">American Samoa</option>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-15">
                                    <p class="f-500 c-black m-b-15">Disabled Items</p>
                                    <select class="chosen" data-placeholder="Choose a Country...">
                                        <option value="United States">United States</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option disabled value="Afghanistan">Afghanistan</option>
                                        <option disabled value="Aland Islands">Aland Islands</option>
                                        <option value="Albania">Albania</option>
                                        <option disabled value="Algeria">Algeria</option>
                                        <option value="American Samoa">American Samoa</option>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-15">
                                    <p class="f-500 c-black m-b-15">Multiple Example</p>
                                    <select class="chosen" multiple data-placeholder="Choose a Country...">
                                        <option value="United States">United States</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option value="Afghanistan">Afghanistan</option>
                                        <option value="Aland Islands">Aland Islands</option>
                                        <option value="Albania">Albania</option>
                                        <option value="Algeria">Algeria</option>
                                        <option value="American Samoa">American Samoa</option>
                                    </select>
                                </div>

                                <div class="col-sm-3 m-b-15">
                                    <p class="f-500 c-black m-b-15">Option Group</p>
                                    <select class="chosen" data-placeholder="Your Favorite Football Team">
                                        <optgroup label="NFC EAST">
                                            <option>Dallas Cowboys</option>
                                            <option>New York Giants</option>
                                            <option>Philadelphia Eagles</option>
                                            <option>Washington Redskins</option>
                                        </optgroup>
                                        <optgroup label="NFC NORTH">
                                            <option>Chicago Bears</option>
                                            <option>Detroit Lions</option>
                                            <option>Green Bay Packers</option>
                                            <option>Minnesota Vikings</option>
                                        </optgroup>
                                    </select>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Toggle Switch
                                <small>Material Desing look alike Toggle Switches based on Radio Box.</small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <p class="f-500 c-black m-b-5">Basic Examples</p>
                            <small>Default and Disabled options</small>
                            <br/>
                            <br/>
                            <br/>

                            <div class="row m-b-20">
                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo">
                                        <label for="ts1" class="ts-label">Toggle Swith Default</label>
                                        <input id="ts1" type="checkbox" hidden="hidden">
                                        <label for="ts1" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo disabled">
                                        <label for="tsd" class="ts-label">Toggle Swith Disabled</label>
                                        <input id="tsd" type="checkbox" hidden="hidden" checked="checked"
                                               disabled="disabled">
                                        <label for="tsd" class="ts-helper"></label>
                                    </div>
                                </div>
                            </div>

                            <p class="f-500 c-black m-b-5">Optional Color schemes</p>
                            <small>Use the given data attribute to change the color scheme of the Toggle Switch</small>
                            <br/>
                            <br/>
                            <br/>

                            <div class="row">
                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="red">
                                        <label for="ts2" class="ts-label">Toggle Swith Red</label>
                                        <input id="ts2" type="checkbox" hidden="hidden">
                                        <label for="ts2" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="blue">
                                        <label for="ts3" class="ts-label">Toggle Swith Blue</label>
                                        <input id="ts3" type="checkbox" hidden="hidden">
                                        <label for="ts3" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="green">
                                        <label for="ts4" class="ts-label">Toggle Swith Green</label>
                                        <input id="ts4" type="checkbox" hidden="hidden">
                                        <label for="ts4" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="cyan">
                                        <label for="ts5" class="ts-label">Toggle Swith Cyan</label>
                                        <input id="ts5" type="checkbox" hidden="hidden">
                                        <label for="ts5" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="lime">
                                        <label for="ts6" class="ts-label">Toggle Swith Lime</label>
                                        <input id="ts6" type="checkbox" hidden="hidden">
                                        <label for="ts6" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="amber">
                                        <label for="ts7" class="ts-label">Toggle Swith Amber</label>
                                        <input id="ts7" type="checkbox" hidden="hidden">
                                        <label for="ts7" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="purple">
                                        <label for="ts8" class="ts-label">Toggle Swith Purple</label>
                                        <input id="ts8" type="checkbox" hidden="hidden">
                                        <label for="ts8" class="ts-helper"></label>
                                    </div>
                                </div>

                                <div class="col-sm-4 m-b-20">
                                    <div class="toggle-switch toggle-switch-demo" data-ts-color="pink">
                                        <label for="ts9" class="ts-label">Toggle Swith Pink</label>
                                        <input id="ts9" type="checkbox" hidden="hidden">
                                        <label for="ts9" class="ts-helper"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Input Slider
                                <small>noUiSlider is a range slider without bloat. It offers a ton off features, and it
                                    is as small, lightweight and minimal as possible, which is great for mobile use on
                                    the many supported devices.
                                </small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <p class="f-500 c-black m-b-20">Basic Example</p>

                            <div id="input-slider" class="input-slider m-b-25"></div>

                            <br/>

                            <p class="f-500 c-black m-b-20">Range Slider</p>

                            <div id="input-slider-range" class="input-slider-range m-b-25"></div>

                            <br/>

                            <p class="f-500 c-black m-b-20">Output Value</p>

                            <div class="m-b-20 clearfix">
                                <div id="input-slider-value" class="input-slider-range m-b-15"></div>
                                <strong class="pull-left text-muted" id="input-slider-value-output"></strong>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Date Time Picker
                                <small>Date/time picker widget based on twitter bootstrap</small>
                            </h2>
                        </div>

                        <div class="card-padding card-header">

                            <div class="row">
                                <div class="col-sm-4">
                                    <p class="c-black f-500 m-b-20">Basic Example</p>

                                    <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                        <div class="dtp-container">
                                            <input type='text' class="form-control date-time-picker"
                                                   placeholder="Click here...">
                                        </div>
                                    </div>
                                </div>


                                <div class="col-sm-4">
                                    <p class="c-black f-500 m-b-20">Date Picker</p>

                                    <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                        <div class="dtp-container">
                                            <input type='text' class="form-control date-picker"
                                                   placeholder="Click here...">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <p class="c-black f-500 m-b-20">Time Picker</p>

                                    <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-time"></i></span>
                                        <div class="dtp-container">
                                            <input type='text' class="form-control time-picker"
                                                   placeholder="Click here...">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Color Picker
                                <small>Simplt HEX and HSL color picker with customizable options</small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="cp-container">
                                        <div class="input-group form-group">
                                            <span class="input-group-addon"><i
                                                    class="zmdi zmdi-invert-colors"></i></span>
                                            <div class="fg-line dropdown">
                                                <input type="text" class="form-control cp-value" value="#03A9F4"
                                                       data-toggle="dropdown">

                                                <div class="dropdown-menu">
                                                    <div class="color-picker" data-cp-default="#03A9F4"></div>
                                                </div>

                                                <i class="cp-value"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="cp-container">
                                        <div class="input-group form-group">
                                            <span class="input-group-addon"><i
                                                    class="zmdi zmdi-invert-colors"></i></span>
                                            <div class="fg-line dropdown">
                                                <input type="text" class="form-control cp-value" value="#8BC34A"
                                                       data-toggle="dropdown">

                                                <div class="dropdown-menu">
                                                    <div class="color-picker" data-cp-default="#8BC34A"></div>
                                                </div>

                                                <i class="cp-value"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="cp-container">
                                        <div class="input-group form-group">
                                            <span class="input-group-addon"><i
                                                    class="zmdi zmdi-invert-colors"></i></span>
                                            <div class="fg-line dropdown">
                                                <input type="text" class="form-control cp-value" value="#F44336"
                                                       data-toggle="dropdown">

                                                <div class="dropdown-menu">
                                                    <div class="color-picker" data-cp-default="#F44336"></div>
                                                </div>

                                                <i class="cp-value"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="cp-container">
                                        <div class="input-group form-group">
                                            <span class="input-group-addon"><i
                                                    class="zmdi zmdi-invert-colors"></i></span>
                                            <div class="fg-line dropdown">
                                                <input type="text" class="form-control cp-value" value="#FFC107"
                                                       data-toggle="dropdown">

                                                <div class="dropdown-menu">
                                                    <div class="color-picker" data-cp-default="#FFC107"></div>
                                                </div>

                                                <i class="cp-value"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <br/>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>HTML Editor
                                <small>Super Simple WYSIWYG Editor on Bootstrap</small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <p class="f-500 c-black m-b-20">Basic Example</p>

                            <div class="html-editor"></div>

                            <br/>
                            <br/>

                            <p class="f-500 c-black m-b-5">Click to edit</p>
                            <small>You can edit content on the fly</small>

                            <br/>
                            <br/>

                            <div class="m-b-10">
                                <button class="btn btn-primary btn-sm hec-button">Click here to edit the following
                                    content
                                </button>
                                <button class="btn btn-success btn-sm hec-save" style="display:none;">Save</button>
                            </div>
                            <div class="html-editor-click">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula erat sit amet
                                aliquam vehicula. Aliquam aliquet et risus et consequat. Quisque ultrices nulla eu magna
                                vulputate, quis varius massa tempor. Suspendisse sed condimentum purus, eget consequat
                                dolor. Fusce aliquet ultricies porta. Nunc semper commodo leo at maximus. Duis maximus
                                maximus leo, id lobortis nisi aliquam sit amet. Nullam vel ex id augue scelerisque
                                congue sit amet eget urna.
                            </div>

                            <br/>
                            <br/>

                            <p class="c-black f-500 m-b-5">Air-mode</p>
                            <small>Air-mode gives clearer interface with hiddened toolbar. To reveal toolbar, select a
                                text below where you want to shape up.
                            </small>

                            <br/>
                            <br/>

                            <div class="html-editor-airmod" contenteditable="true">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce euismod quam vel lacinia
                                facilisis. Sed condimentum nisi vel ante maximus, sit amet vestibulum leo euismod.
                                Curabitur viverra faucibus nisi eu molestie. Donec convallis finibus felis porttitor
                                tristique. Nulla pretium est et ante dignissim,
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Autocomplete
                                <small>Typeahead.js is a flexible JavaScript library that provides a strong foundation for building robust autocompletes.
                                </small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="fg-line">
                                        <input type="text" class="typeahead form-control" placeholder="States of USA">
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="fg-line">
                                        <input type="text" class="typeahead form-control" placeholder="States of USA">
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="fg-line">
                                        <input type="text" class="typeahead form-control" placeholder="States of USA">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Simple File Input
                                <small>The file input plugin allows you to create a visually appealing file or image
                                    input widgets
                                </small>
                            </h2>
                        </div>

                        <div class="card-body card-padding">
                            <!--[if IE 9 ]>
                                <div class="alert alert-warning"><i class="zmdi zmdi-alert-triangle"></i> Please note that this plugin is not supported in IE-10 and below</div>
                            <![endif]-->


                            <div class="row">
                                <div class="col-sm-4">
                                    <p class="f-500 c-black m-b-20">Basic Example</p>

                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <span class="btn btn-primary btn-file m-r-10">
                                            <span class="fileinput-new">Select file</span>
                                            <span class="fileinput-exists">Change</span>
                                            <input type="file" name="...">
                                        </span>
                                        <span class="fileinput-filename"></span>
                                        <a href="#" class="close fileinput-exists" data-dismiss="fileinput">&times;</a>
                                    </div>
                                </div>
                            </div>

                            <br/>
                            <br/>

                            <p class="f-500 c-black m-b-20">Image Preview</p>

                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-preview thumbnail" data-trigger="fileinput"></div>
                                <div>
                                    <span class="btn btn-info btn-file">
                                        <span class="fileinput-new">Select image</span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="...">
                                    </span>
                                    <a href="#" class="btn btn-danger fileinput-exists"
                                       data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>

                            <br/>
                            <br/>
                            <p><em>Image preview only works in IE10+, FF3.6+, Safari6.0+, Chrome6.0+ and Opera11.1+. In
                                older browsers the filename is shown instead.</em></p>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Drag’n’Drop File Uploader <small>DropzoneJS is an open source library that provides drag’n’drop file uploads with image previews. It’s lightweight, doesn't depend on any other library (like jQuery) and is highly customizable.</small></h2>
                        </div>
                        <div class="card-body card-padding">
                            <p>Please note that IE10 and below are not compatible with this plugin.</p>

                            <form class="dropzone" id="dropzone-upload"></form>
                        </div>
                    </div>
                </div>
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
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>

        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
        <script src="vendors/bower_components/nouislider/distribute/nouislider.min.js"></script>
        <script src="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/bower_components/typeahead.js/dist/typeahead.bundle.min.js"></script>
        <script src="vendors/bower_components/dropzone/dist/min/dropzone.min.js"></script>
        <script src="vendors/summernote/dist/summernote-updated.min.js"></script>


        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->

        <script src="vendors/bower_components/chosen/chosen.jquery.js"></script>
        <script src="vendors/bower_components/jquery-mask-plugin/dist/jquery.mask.min.js"></script>
        <script src="vendors/fileinput/fileinput.min.js"></script>
        <script src="vendors/farbtastic/farbtastic.min.js"></script>

        <script src="js/app.min.js"></script>
    </body>
</html>