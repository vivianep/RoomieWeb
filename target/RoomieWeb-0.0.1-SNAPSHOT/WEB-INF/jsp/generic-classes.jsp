<!DOCTYPE html>
    <!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Material Admin</title>
    
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
            
        <!-- CSS -->
        <link href="css/app_1.min.css" rel="stylesheet">
        <link href="css/app_2.min.css" rel="stylesheet">
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

                    <li class="active"><a href="generic-classes.html"><i class="zmdi zmdi-layers"></i> Generic
                        Classes</a></li>
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
                        <h2>Generic Class Reference
                            <small>Following are the custom generic classes available with the template and can be used
                                alongside with any elements. To modify or delete, please refer 'generic.less'
                            </small>
                        </h2>

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

                    <div class="row">
                        <div class="col-sm-6">
                            <!-- Margin -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Margin
                                        <small>eg: <code>&lt;div class="m-10 m-b-0"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <strong class="d-block m-b-10">Margin</strong>

                                    <code>.m-0</code>
                                    <code>.m-5</code>
                                    <code>.m-10</code>
                                    <code>.m-15</code>
                                    <code>.m-20</code>
                                    <code>.m-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Margin Top</strong>

                                    <code>.m-t-0</code>
                                    <code>.m-t-5</code>
                                    <code>.m-t-10</code>
                                    <code>.m-t-15</code>
                                    <code>.m-t-20</code>
                                    <code>.m-t-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Margin Right</strong>

                                    <code>.m-r-0</code>
                                    <code>.m-r-5</code>
                                    <code>.m-r-10</code>
                                    <code>.m-r-15</code>
                                    <code>.m-r-20</code>
                                    <code>.m-r-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Margin Bottom</strong>

                                    <code>.m-b-0</code>
                                    <code>.m-b-5</code>
                                    <code>.m-b-10</code>
                                    <code>.m-b-15</code>
                                    <code>.m-b-20</code>
                                    <code>.m-b-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Margin Left</strong>

                                    <code>.m-l-0</code>
                                    <code>.m-l-5</code>
                                    <code>.m-l-10</code>
                                    <code>.m-l-15</code>
                                    <code>.m-l-20</code>
                                    <code>.m-l-25</code>
                                </div>
                            </div>

                            <!-- Font Size -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Font Size
                                        <small>eg: <code>&lt;div class="f-10"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.f-8</code>
                                    <code>.f-9</code>
                                    <code>.f-10</code>
                                    <code>.f-11</code>
                                    <code>.f-12</code>
                                    <code>.f-13</code>
                                    <code>.f-14</code>
                                    <code>.f-15</code>
                                    <code>.f-16</code>
                                    <code>.f-17</code>
                                    <code>.f-18</code>
                                    <code>.f-19</code>
                                    <code>.f-20</code>
                                </div>
                            </div>

                            <!-- Text Color -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Text Color
                                        <small>eg: <code>&lt;div class="c-blue"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <p>To see the color previews, please head on to <a
                                            href="colors.html">colors.html</a></p>

                                    <code>.c-red</code>
                                    <code>.c-pink</code>
                                    <code>.c-purple</code>
                                    <code>.c-deeppurple</code>
                                    <code>.c-indigo</code>
                                    <code>.c-blue</code>
                                    <code>.c-lightblue</code>
                                    <code>.c-cyan</code>
                                    <code>.c-teal</code>
                                    <code>.c-green</code>
                                    <code>.c-lightgreen</code>
                                    <code>.c-lime</code>
                                    <code>.c-yellow</code>
                                    <code>.c-amber</code>
                                    <code>.c-orange</code>
                                    <code>.c-deeporange</code>
                                    <code>.c-brown</code>
                                    <code>.c-gray</code>
                                    <code>.c-bluegray</code>
                                    <code>.c-black</code>
                                    <code>.c-white</code>

                                    <br/>
                                    <br/>

                                    <code>.text-muted</code>
                                </div>
                            </div>

                            <!-- Text Align-->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Text Align
                                        <small>eg: <code>&lt;div class="text-center"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.text-center</code>
                                    <code>.text-right</code>
                                    <code>.text-left</code>
                                    <code>.text-justify</code>
                                </div>
                            </div>

                            <!-- Position -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Position
                                        <small>eg: <code>&lt;div class="p-relative"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.p-relative</code>
                                    <code>.p-absolute</code>
                                    <code>.p-fixed</code>
                                    <code>.p-static</code>
                                </div>
                            </div>

                            <!-- Overflow -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Overflow
                                        <small>eg: <code>&lt;div class="o-hidden"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.o-hidden</code>
                                    <code>.o-visible</code>
                                    <code>.o-auto</code>
                                </div>
                            </div>

                            <!-- Image replacement -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Image replacement
                                        <small>eg: <code>&lt;div class="text-hide"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <p>Utilize the <code>.text-hide</code> class or mixin to help replace an element's
                                        text content with a background image.</p>
                                    <code>.text-hide</code>
                                </div>
                            </div>

                            <!-- Text Transform -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Text Transform
                                        <small>eg: <code>&lt;div class="text-uppercase"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.text-uppercase</code>
                                    <code>.text-lowercase</code>
                                    <code>.text-capitalize</code>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <!-- Padding -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Padding
                                        <small>eg: <code>&lt;div class="p-10 p-b-0"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <strong class="d-block m-b-10">Padding</strong>

                                    <code>.p-0</code>
                                    <code>.p-5</code>
                                    <code>.p-10</code>
                                    <code>.p-15</code>
                                    <code>.p-20</code>
                                    <code>.p-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Padding Top</strong>

                                    <code>.p-t-0</code>
                                    <code>.p-t-5</code>
                                    <code>.p-t-10</code>
                                    <code>.p-t-15</code>
                                    <code>.p-t-20</code>
                                    <code>.p-t-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Padding Right</strong>

                                    <code>.p-r-0</code>
                                    <code>.p-r-5</code>
                                    <code>.p-r-10</code>
                                    <code>.p-r-15</code>
                                    <code>.p-r-20</code>
                                    <code>.p-r-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Padding Bottom</strong>

                                    <code>.p-b-0</code>
                                    <code>.p-b-5</code>
                                    <code>.p-b-10</code>
                                    <code>.p-b-15</code>
                                    <code>.p-b-20</code>
                                    <code>.p-b-25</code>

                                    <br/>
                                    <br/>

                                    <strong class="d-block m-b-10">Padding Left</strong>

                                    <code>.p-l-0</code>
                                    <code>.p-l-5</code>
                                    <code>.p-l-10</code>
                                    <code>.p-l-15</code>
                                    <code>.p-l-20</code>
                                    <code>.p-l-25</code>
                                </div>
                            </div>

                            <!-- Background Color -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Background Color
                                        <small>eg: <code>&lt;div class="bgm-blue"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <p>To see the color previews, please head on to <a
                                            href="colors.html">colors.html</a></p>

                                    <code>.bgm-red</code>
                                    <code>.bgm-pink</code>
                                    <code>.bgm-purple</code>
                                    <code>.bgm-deeppurple</code>
                                    <code>.bgm-indigo</code>
                                    <code>.bgm-blue</code>
                                    <code>.bgm-lightblue</code>
                                    <code>.bgm-cyan</code>
                                    <code>.bgm-teal</code>
                                    <code>.bgm-green</code>
                                    <code>.bgm-lightgreen</code>
                                    <code>.bgm-lime</code>
                                    <code>.bgm-yellow</code>
                                    <code>.bgm-amber</code>
                                    <code>.bgm-orange</code>
                                    <code>.bgm-deeporange</code>
                                    <code>.bgm-brown</code>
                                    <code>.bgm-gray</code>
                                    <code>.bgm-bluegray</code>
                                    <code>.bgm-black</code>
                                    <code>.bgm-white</code>
                                </div>
                            </div>

                            <!-- Font Weight-->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Font Weight
                                        <small>eg: <code>&lt;div class="f-500"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.f-300</code>
                                    <code>.f-400</code>
                                    <code>.f-500</code>
                                    <code>.f-700</code>
                                </div>
                            </div>

                            <!-- Border Reset-->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Border Reset
                                        <small>eg: <code>&lt;div class="b-0"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.b-0</code>
                                </div>
                            </div>

                            <!-- Float -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Float
                                        <small>eg: <code>&lt;div class="pull-right"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.pull-right</code>
                                    <code>.pull-left</code>
                                </div>
                            </div>

                            <!-- Width -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Full Width
                                        <small>eg: <code>&lt;div class="w-100"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.w-100</code>
                                </div>
                            </div>

                            <!-- Visibility -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Visibility
                                        <small>eg: <code>&lt;div class="hidden"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.show</code> - display:block;

                                    <br/><br/>

                                    <code>.hidden</code> - display:none; visibility:hidden;

                                    <br/><br/>

                                    <code>.invisible</code> - visibility: hidden;
                                </div>
                            </div>

                            <!-- Border Radius -->
                            <div class="card">
                                <div class="card-header ch-alt">
                                    <h2>Border Radius
                                        <small>eg: <code>&lt;div class="brd-2"&gt;&lt;div&gt;</code></small>
                                    </h2>
                                </div>

                                <div class="card-body card-padding">
                                    <code>.brd-2</code>
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