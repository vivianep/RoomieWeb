<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Material Admin</title>

        <!-- Vendor CSS -->
        <link href="vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        

        <!-- CSS -->
        <link href="css/app_1.min.css" rel="stylesheet">
        <link href="css/app_2.min.css" rel="stylesheet">
        
    </head>
    <body>
        <header id="header-alt" class="clearfix" data-ma-theme="lightblue"> <!-- Make sure to change both class and data-current-skin when switching sking manually -->
            <ul class="h-inner clearfix">
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
                                <li class="hidden-xs">
                                    <a data-action="fullscreen" href=""><i class="zmdi zmdi-fullscreen"></i> Toggle Fullscreen</a>
                                </li>
                                <li>
                                    <a data-action="clear-localstorage" href=""><i class="zmdi zmdi-delete"></i> Clear Local Storage</a>
                                </li>
                                <li>
                                    <a href=""><i class="zmdi zmdi-face"></i> Privacy Settings</a>
                                </li>
                                <li>
                                    <a href=""><i class="zmdi zmdi-settings"></i> Other Settings</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li> 
            </ul>

            <div class="ha-search">
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Search...">
                </div>
            </div>

            <nav class="ha-menu">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li class="active dropdown">
                        <a href="" data-toggle="dropdown">Headers</a>

                        <ul class="dropdown-menu">
                            <li><a href="textual-menu.html">Textual menu</a></li>
                            <li><a href="image-logo.html">Image logo</a></li>
                            <li><a class="active" href="top-mainmenu.html">Mainmenu on top</a></li>
                        </ul>
                    </li>
                    <li><a href="typography.html">Typography</a></li>
                    <li class="dropdown">
                        <a href="" data-toggle="dropdown">Widgets</a>
                        <ul class="dropdown-menu">
                            <li><a href="widget-templates.html">Templates</a></li>
                            <li><a href="widgets.html">Widgets</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="" data-toggle="dropdown">Tables</a>
                        <ul class="dropdown-menu">
                            <li><a href="tables.html">Normal Tables</a></li>
                            <li class="dropdown">
                                <a data-toggle="dropdown" href="data-tables.html">Data Tables</a>
                                <ul class="dropdown-menu">
                                    <li><a href="">One</a></li>
                                    <li><a href="">Two</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="" data-toggle="dropdown">Forms</a>
                        <ul class="dropdown-menu">
                            <li><a href="form-elements.html">Basic Form Elements</a></li>
                            <li><a href="form-components.html">Form Components</a></li>
                            <li><a href="form-examples.html">Form Examples</a></li>
                            <li><a href="form-validations.html">Form Validation</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="" data-toggle="dropdown">User Interface</a>
                        <ul class="dropdown-menu">
                            <li><a href="colors.html">Colors</a></li>
                            <li><a href="animations.html">Animations</a></li>
                            <li><a href="box-shadow.html">Box Shadow</a></li>
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
                    <li><a href="calendar.html">Calendar</a></li>
                </ul>
            </nav>

            <div class="skin-switch dropdown hidden-xs">
                <button data-toggle="dropdown" class="btn ss-icon"><i class="zmdi zmdi-palette"></i></button>
                <div class="dropdown-menu">
                    <span class="ss-skin ss-1 bgm-lightblue" data-ma-action="change-skin" data-ma-skin="lightblue"></span>
                    <span class="ss-skin ss-2 bgm-bluegray" data-ma-action="change-skin" data-ma-skin="bluegray"></span>
                    <span class="ss-skin ss-3 bgm-cyan" data-ma-action="change-skin" data-ma-skin="cyan"></span>
                    <span class="ss-skin ss-4 bgm-teal" data-ma-action="change-skin" data-ma-skin="teal"></span>
                    <span class="ss-skin ss-5 bgm-green" data-ma-action="change-skin" data-ma-skin="green"></span>
                    <span class="ss-skin ss-6 bgm-orange" data-ma-action="change-skin" data-ma-skin="orange"></span>
                    <span class="ss-skin ss-7 bgm-blue" data-ma-action="change-skin" data-ma-skin="blue"></span>
                    <span class="ss-skin ss-8 bgm-purple" data-ma-action="change-skin" data-ma-skin="purple"></span>
                </div>
            </div>
        </header>
        
        <section id="main">
            <!-- Mobile Menu -->
            <aside id="sidebar" class="sidebar sidebar-alt c-overflow">
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
                    <li class="active">
                        <a href="index.html"><i class="zmdi zmdi-home"></i> Home</a>
                    </li>
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
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-collection-text"></i> Forms</a>

                        <ul>
                            <li><a href="form-elements.html">Basic Form Elements</a></li>
                            <li><a href="form-components.html">Form Components</a></li>
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
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-trending-up"></i>Charts</a>
                        <ul>
                            <li><a href="flot-charts.html">Flot Charts</a></li>
                            <li><a href="other-charts.html">Other Charts</a></li>
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
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-collection-item"></i> Sample Pages</a>
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
                    <li>
                        <a href="https://wrapbootstrap.com/theme/material-admin-responsive-angularjs-WB011H985"><i class="zmdi zmdi-money"></i> Buy this template</a>
                    </li>
                </ul>
            </aside>
            <!-- End Mobile Menu -->

            <section id="content" class="content-alt">
                <div class="container">
                    <div class="block-header">
                        <h2>Dashboard</h2>

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
                            <h2>Sales Statistics <small>Vestibulum purus quam scelerisque, mollis nonummy metus</small></h2>

                            <ul class="actions">
                                <li>
                                    <a href="">
                                        <i class="zmdi zmdi-refresh-alt"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <i class="zmdi zmdi-download"></i>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="" data-toggle="dropdown">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <a href="">Change Date Range</a>
                                        </li>
                                        <li>
                                            <a href="">Change Graph Type</a>
                                        </li>
                                        <li>
                                            <a href="">Other Settings</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                        <div class="card-body">
                            <div class="chart-edge">
                                <div id="curved-line-chart" class="flot-chart "></div>
                            </div>
                        </div>
                    </div>

                    <div class="mini-charts">
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-lightgreen">
                                    <div class="clearfix">
                                        <div class="chart stats-bar"></div>
                                        <div class="count">
                                            <small>Website Traffics</small>
                                            <h2>987,459</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-purple">
                                    <div class="clearfix">
                                        <div class="chart stats-bar-2"></div>
                                        <div class="count">
                                            <small>Website Impressions</small>
                                            <h2>356,785K</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-orange">
                                    <div class="clearfix">
                                        <div class="chart stats-line"></div>
                                        <div class="count">
                                            <small>Total Sales</small>
                                            <h2>$ 458,778</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-bluegray">
                                    <div class="clearfix">
                                        <div class="chart stats-line-2"></div>
                                        <div class="count">
                                            <small>Support Tickets</small>
                                            <h2>23,856</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="dash-widgets">
                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div id="site-visits" class="dw-item bgm-teal">
                                    <div class="dwi-header">
                                        <div class="p-30">
                                            <div class="dash-widget-visits"></div>
                                        </div>

                                        <div class="dwih-title">For the past 30 days</div>
                                    </div>

                                    <div class="list-group lg-even-white">
                                        <div class="list-group-item media sv-item">
                                            <div class="pull-right">
                                                <div class="stats-bar"></div>
                                            </div>
                                            <div class="media-body">
                                                <small>Page Views</small>
                                                <h3>47,896,536</h3>
                                            </div>
                                        </div>

                                        <div class="list-group-item media sv-item">
                                            <div class="pull-right">
                                                <div class="stats-bar-2"></div>
                                            </div>
                                            <div class="media-body">
                                                <small>Site Visitors</small>
                                                <h3>24,456,799</h3>
                                            </div>
                                        </div>

                                        <div class="list-group-item media sv-item">
                                            <div class="pull-right">
                                                <div class="stats-line"></div>
                                            </div>
                                            <div class="media-body">
                                                <small>Total Clicks</small>
                                                <h3>13,965</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6">
                                <div id="pie-charts" class="dw-item bgm-cyan c-white">
                                    <div class="">
                                        <div class="dwi-header">
                                            <div class="dwih-title">Email Statistics</div>
                                        </div>

                                        <div class="clearfix"></div>

                                        <div class="text-center p-20 m-t-25">
                                            <div class="easy-pie main-pie" data-percent="75">
                                                <div class="percent">45</div>
                                                <div class="pie-title">Total Emails Sent</div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="p-t-15 p-b-20 text-center">
                                        <div class="easy-pie sub-pie-1" data-percent="56">
                                            <div class="percent">56</div>
                                            <div class="pie-title">Bounce Rate</div>
                                        </div>
                                        <div class="easy-pie sub-pie-2" data-percent="84">
                                            <div class="percent">84</div>
                                            <div class="pie-title">Total Opened</div>
                                        </div>
                                        <div class="easy-pie sub-pie-2" data-percent="21">
                                            <div class="percent">21</div>
                                            <div class="pie-title">Total Ignored</div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6">
                                <div class="dw-item bgm-lime">
                                    <div id="weather-widget"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <!-- Recent Items -->
                            <div class="card">
                                <div class="card-header">
                                    <h2>Recent Items <small>Phasellus condimentum ipsum id auctor imperdie</small></h2>
                                    <ul class="actions">
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li>
                                                    <a href="">Refresh</a>
                                                </li>
                                                <li>
                                                    <a href="">Settings</a>
                                                </li>
                                                <li>
                                                    <a href="">Other Settings</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>

                                <div class="card-body m-t-0">
                                    <table class="table table-inner table-vmiddle">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th style="width: 60px">Price</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="f-500 c-cyan">2569</td>
                                            <td>Samsung Galaxy Mega</td>
                                            <td class="f-500 c-cyan">$521</td>
                                        </tr>
                                        <tr>
                                            <td class="f-500 c-cyan">9658</td>
                                            <td>Huawei Ascend P6</td>
                                            <td class="f-500 c-cyan">$440</td>
                                        </tr>
                                        <tr>
                                            <td class="f-500 c-cyan">1101</td>
                                            <td>HTC One M8</td>
                                            <td class="f-500 c-cyan">$680</td>
                                        </tr>
                                        <tr>
                                            <td class="f-500 c-cyan">6598</td>
                                            <td>Samsung Galaxy Alpha</td>
                                            <td class="f-500 c-cyan">$870</td>
                                        </tr>
                                        <tr>
                                            <td class="f-500 c-cyan">4562</td>
                                            <td>LG G3</td>
                                            <td class="f-500 c-cyan">$690</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="recent-items-chart" class="flot-chart"></div>
                            </div>

                            <!-- Todo -->
                            <div id="todo" class="card card-light">
                                <div class="card-header ch-alt">
                                    <h2>Todo Lists <small>Add, edit and manage your Todo Lists</small></h2>
                                </div>

                                <div class="card-body card-padding">
                                    <div class="t-add">
                                        <i class="ta-btn zmdi zmdi-plus" data-ma-action="todo-form-open"></i>

                                        <div class="ta-block">
                                            <textarea placeholder="What you want to do..."></textarea>

                                            <div class="tab-actions">
                                                <a data-ma-action="todo-form-close" href="" class="c-red"><i class="zmdi zmdi-close"></i></a>
                                                <a data-ma-action="todo-form-close" href="" class="c-green"><i class="zmdi zmdi-check"></i></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="list-group">
                                        <div class="list-group-item media">
                                            <div class="pull-right">
                                                <ul class="actions actions-alt">
                                                    <li class="dropdown">
                                                        <a href="" data-toggle="dropdown">
                                                            <i class="zmdi zmdi-more-vert"></i>
                                                        </a>

                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                            <li><a href="">Delete</a></li>
                                                            <li><a href="">Archive</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="media-body">
                                                <div class="checkbox checkbox-light">
                                                    <label>
                                                        <input type="checkbox">
                                                        <i class="input-helper"></i>
                                                        <span>
                                                            Duis vitae nibh molestie pharetra augue vitae
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="list-group-item media">
                                            <div class="pull-right">
                                                <ul class="actions actions-alt">
                                                    <li class="dropdown">
                                                        <a href="" data-toggle="dropdown">
                                                            <i class="zmdi zmdi-more-vert"></i>
                                                        </a>

                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                            <li><a href="">Delete</a></li>
                                                            <li><a href="">Archive</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="media-body">
                                                <div class="checkbox checkbox-light">
                                                    <label>
                                                        <input type="checkbox">
                                                        <i class="input-helper"></i>
                                                        <span>
                                                            Duis vitae nibh molestie pharetra augue vitae
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="list-group-item media">
                                            <div class="pull-right">
                                                <ul class="actions actions-alt">
                                                    <li class="dropdown">
                                                        <a href="" data-toggle="dropdown">
                                                            <i class="zmdi zmdi-more-vert"></i>
                                                        </a>

                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                            <li><a href="">Delete</a></li>
                                                            <li><a href="">Archive</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="media-body">
                                                <div class="checkbox checkbox-light">
                                                    <label>
                                                        <input type="checkbox">
                                                        <i class="input-helper"></i>
                                                        <span>
                                                            In vel imperdiet leoorbi mollis leo sit amet quam fringilla varius mauris orci turpis
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="list-group-item media">
                                            <div class="pull-right">
                                                <ul class="actions actions-alt">
                                                    <li class="dropdown">
                                                        <a href="" data-toggle="dropdown">
                                                            <i class="zmdi zmdi-more-vert"></i>
                                                        </a>

                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                            <li><a href="">Delete</a></li>
                                                            <li><a href="">Archive</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="media-body">
                                                <div class="checkbox checkbox-light">
                                                    <label>
                                                        <input type="checkbox">
                                                        <i class="input-helper"></i>
                                                        <span>
                                                            Suspendisse quis sollicitudin erosvel dictum nunc
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="list-group-item media">
                                            <div class="pull-right">
                                                <ul class="actions actions-alt">
                                                    <li class="dropdown">
                                                        <a href="" data-toggle="dropdown">
                                                            <i class="zmdi zmdi-more-vert"></i>
                                                        </a>

                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                            <li><a href="">Delete</a></li>
                                                            <li><a href="">Archive</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="media-body">
                                                <div class="checkbox checkbox-light">
                                                    <label>
                                                        <input type="checkbox">
                                                        <i class="input-helper"></i>
                                                        <span>
                                                            Curabitur egestas finibus sapien quis faucibusras bibendum ut justo at sagittis. In hac habitasse platea dictumst
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="list-group-item media">
                                            <div class="pull-right">
                                                <ul class="actions actions-alt">
                                                    <li class="dropdown">
                                                        <a href="" data-toggle="dropdown">
                                                            <i class="zmdi zmdi-more-vert"></i>
                                                        </a>

                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                            <li><a href="">Delete</a></li>
                                                            <li><a href="">Archive</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="media-body">
                                                <div class="checkbox checkbox-light">
                                                    <label>
                                                        <input type="checkbox">
                                                        <i class="input-helper"></i>
                                                        <span>
                                                            Suspendisse potenti. Cras dolor augue, tincidunt sit amet lorem id, blandit rutrum libero
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <!-- Calendar -->
                            <div class="card" id="calendar-widget">
                                <div class="card-header ch-alt bgm-teal">
                                    <div class="cwh-year"></div>
                                    <div class="cwh-day"></div>

                                    <button class="bgm-lightgreen btn btn-default bg btn-float"><i class="zmdi zmdi-plus"></i></button>
                                </div>

                                <div class="card-body card-padding-sm">
                                    <div id="cw-body"></div>
                                </div>
                            </div>

                            <!-- Recent Posts -->
                            <div class="card">
                                <div class="card-header ch-alt m-b-20">
                                    <h2>Recent Posts <small>Phasellus condimentum ipsum id auctor imperdie</small></h2>
                                    <ul class="actions">
                                        <li>
                                            <a href="">
                                                <i class="zmdi zmdi-refresh-alt"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <i class="zmdi zmdi-download"></i>
                                            </a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li>
                                                    <a href="">Change Date Range</a>
                                                </li>
                                                <li>
                                                    <a href="">Change Graph Type</a>
                                                </li>
                                                <li>
                                                    <a href="">Other Settings</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>

                                    <button class="btn bgm-cyan btn-float"><i class="zmdi zmdi-plus"></i></button>
                                </div>

                                <div class="card-body">
                                    <div class="list-group">
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
                                        <a class="view-more" href="">View All</a>
                                    </div>
                                </div>
                            </div>
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
        
        <script src="vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
        <script src="vendors/sparklines/jquery.sparkline.min.js"></script>
        <script src="vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
        
        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/fullcalendar/dist/fullcalendar.min.js "></script>
        <script src="vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
                <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->

        <script src="js/app.min.js"></script>
    </body>
  </html>