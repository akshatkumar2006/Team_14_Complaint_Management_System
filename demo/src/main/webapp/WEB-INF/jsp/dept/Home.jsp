<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=Mdevice-width, initial-scale=1">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../public/assets/images/favicon.png">
    <title>Department Panel</title>
    <!-- Custom CSS -->
    <link href="../public/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="../public/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../public/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../public/dist/css/style.css" rel="stylesheet">

</head>

<body>
	<%@ include file="Header.jsp" %>
	<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">
							<!--<span id="greetings">Good Morning</span> -->
							
                        </h3>
<!--                         <div class="d-flex align-items-center"> -->
<!--                             <nav aria-label="breadcrumb"> -->
<!--                                 <ol class="breadcrumb m-0 p-0"> -->
<!--                                     <li class="breadcrumb-item"> -->
<!--                                     	<a href="javascript:void(0);">Department Dashboard</a> -->
<!--                                     </li> -->
<!--                                 </ol> -->
<!--                             </nav> -->
<!--                         </div> -->
                    </div>	
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <div class="card-group">
                    <div class="card blue">
                        <div class="card-body ">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-orange mb-1 font-weight-medium count"></h2>

                                    </div>
                                    <h6 class="text-white font-weight-medium mb-0 w-100 text-truncate">Total Complaint</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="save"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card green">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <h2 class="text-green mb-1 w-100 text-truncate font-weight-medium count"></h2>
                                    <h6 class="text-white font-weight-normal mb-0 w-100 text-truncate">Complaints Solved
                                    </h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="check-circle"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card pink">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-primary mb-1 font-weight-medium count"></h2>
                                        <!--span
                                            class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">-18.33%</span-->
                                    </div>
                                    <h6 class="text-white font-weight-normal mb-0 w-100 text-truncate">Pending Complaints</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="info"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card red">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <h2 class="text-danger mb-1 font-weight-medium count"></h2>
                                    <h6 class="text-white font-weight-normal mb-0 w-100 text-truncate">Closed Complaints</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="x-circle"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                         <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Complaints</h4>
                                <div id="net" class="mt-2" style="height:100px; width:100%;"></div>
                                <ul class="list-style-none mb-0">
                                    <li>
                                        <i class="fas fa-circle text-green font-10 mr-2"></i>
                                        <span class="text-muted">Solved Complaints</span>
                                        <span class="text-dark float-right font-weight-medium"></span>
                        </li>
                        <li class="mt-3">
                            <i class="fas fa-circle text-primary font-10 mr-2"></i>
                            <span class="text-muted">Pending Complaints</span>
                            <span class="text-dark float-right font-weight-medium"></span>
                        </li>
                        <li class="mt-3">
                            <i class="fas fa-circle text-danger font-10 mr-2"></i>
                            <span class="text-muted">Closed Complaints</span>
                            <span class="text-dark float-right font-weight-medium"></span>
                        </li>
                        </ul>


                    </div>
                </div>
            </div>


        <div class="col-lg-12 col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Complaints by Departmental Category</h4>
                    
                    
                    <div class="row mb-3 align-items-center mt-1 mt-5">
                        <div class="col-4 text-center">
                            <span class="text-dark font-16"></span>
                        </div>
                        <div class="col-5">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-primary" role="progressbar" style="width:" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="col-3 text-center">
                            <span class="mb-0 font-14 text-dark font-weight-medium"></span>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- *************************************************************** -->
    <!-- End Sales Charts Section -->
    <!-- *************************************************************** -->
    <!-- *************************************************************** -->
    <!-- Start Top Leader Table -->
    <!-- *************************************************************** -->
    <div class="row">
        <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">Departmental List</h4>
                                    <div class="ml-auto">
                                        <div class="dropdown sub-dropdown">
                                            <button class="btn btn-link text-muted dropdown-toggle" type="button" id="dd1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i data-feather="more-vertical"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dd1">
                                                <a class="dropdown-item" href="#">Insert</a>
                                                <a class="dropdown-item" href="#">Update</a>
                                                <a class="dropdown-item" href="#">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table no-wrap v-middle mb-0">
                                        <thead>
                                            <tr class="border-0">
                                                <th class="border-0 font-14 font-weight-medium text-muted">Departmental Admin
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium text-muted px-2">Department
                                                </th>
                                                
                                                <th class="border-0 font-14 font-weight-medium text-muted">Total Complaints Solved </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="border-top-0 px-2 py-4">
                                                    <div class="d-flex no-block align-items-center">
                                                        <div class="mr-3"><img src="../public/assets/images/users/widget-table-pic1.jpg" alt="user" class="rounded-circle" width="45" height="45" /></div>
                                                        <div class="">
                                                            <h5 class="text-dark mb-0 font-16 font-weight-medium">Hanna
                                                                Gover</h5>
                                                            <span class="text-muted font-14">hgover@gmail.com</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="border-top-0 text-muted px-2 py-4 font-14">IT Department</td>

                                                
                                                <td class="text-center font-weight-medium text-dark border-top-0 px-2 py-4"><b>86</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="px-2 py-4">
                                                    <div class="d-flex no-block align-items-center">
                                                        <div class="mr-3"><img src="../public/assets/images/users/widget-table-pic2.jpg" alt="user" class="rounded-circle" width="45" height="45" /></div>
                                                        <div class="">
                                                            <h5 class="text-dark mb-0 font-16 font-weight-medium">Daniel
                                                                Kristeen
                                                            </h5>
                                                            <span class="text-muted font-14">Kristeen@gmail.com</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-muted px-2 py-4 font-14">Transportation Department</td>

                                                
                                                <td class="text-center font-weight-medium text-dark px-2 py-4"><b>103</b></td>
                                            </tr>
                                            <tr>
                                                <td class="px-2 py-4">
                                                    <div class="d-flex no-block align-items-center">
                                                        <div class="mr-3"><img src="../public/assets/images/users/widget-table-pic3.jpg" alt="user" class="rounded-circle" width="45" height="45" /></div>
                                                        <div class="">
                                                            <h5 class="text-dark mb-0 font-16 font-weight-medium">Julian
                                                                Josephs
                                                            </h5>
                                                            <span class="text-muted font-14">Josephs@gmail.com</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-muted px-2 py-4 font-14">Aramark</td>

                                                
                                                <td class="text-center font-weight-medium text-dark px-2 py-4"><b>27</b></td>
                                            </tr>
                                            <tr>
                                                <td class="px-2 py-4">
                                                    <div class="d-flex no-block align-items-center">
                                                        <div class="mr-3"><img src="../public/assets/images/users/widget-table-pic4.jpg" alt="user" class="rounded-circle" width="45" height="45" /></div>
                                                        <div class="">
                                                            <h5 class="text-dark mb-0 font-16 font-weight-medium">Jan
                                                                Petrovic
                                                            </h5>
                                                            <span class="text-muted font-14">hgover@gmail.com</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-muted px-2 py-4 font-14">Library Department</td>

                                                
                                                <td class="text-center font-weight-medium text-dark px-2 py-4"><b>35</b></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div> 
    </div>
    <!-- *************************************************************** -->
    <!-- End Top Leader Table -->
    <!-- *************************************************************** -->
    </div>
			<div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		        <div class="modal-dialog modal-lg">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <h4 class="modal-title" id="myLargeModalLabel">Logout</h4>
		                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		                </div>
		                <div class="modal-body">
		
		                </div>
		                <div class="modal-footer">
		                    <button type="button" class="btn btn-light" data-dismiss="modal"><i data-feather="x" class="feather-icon"></i> Close</button>
                            <a href="/dept/logout" type="button" class="btn btn-primary"><i data-feather="log-out" class="feather-icon"></i> Logout</a>
		                </div>
		            </div><!-- /.modal-content -->
		        </div><!-- /.modal-dialog -->
		    </div><!-- /.modal -->
     </div>
     <%@ include file="Footer.jsp" %>
</body>
</html>