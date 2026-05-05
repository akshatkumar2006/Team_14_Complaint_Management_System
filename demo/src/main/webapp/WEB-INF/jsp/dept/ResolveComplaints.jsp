<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.demo.model.Complaint" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../public/assets/images/favicon.png">
    <title>Department Resolve Complaint</title>
    <!-- This page plugin CSS -->
    <link href="../public/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../public/dist/css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>
    <%@ include file="Header.jsp" %>
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <!-- <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Update Complaint</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="/" class="text-muted">Home</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Resolve Complaint</li>
                                </ol>
                            </nav>
                        </div>
                    </div>

                </div> -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->

                <%-- <x-alert type="ErrorMsg" />
                <div id="Error"></div>
                <div class="col-sm-12 col-md-6 col-lg-6" id="append">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Enter Complaint I'D</h4>
                            <div class="form-group">
                                <input type="text" name="CompID" class="form-control" placeholder="Complaint I'D" id="CompID">                                
                            </div>
                            <center>
                                <button id="btnDetail" class="btn btn-dark ml-1" type="button" data-toggle="collapse" data-target="#UpdateComplaint" aria-expanded="false" aria-controls="UpdateComplaint">
                                    Show Details
                                </button>
                            </center>
                        </div>
                    </div>
                </div> --%>
                <!-- order table -->
                <%
                	Complaint com = (Complaint) request.getAttribute("GetBCompalint");
                	int complnId = com.getId();
                %>
                <div id="UpdateComplaint">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mb-3">
                                <div class="card-header">
                                    <i class="fas fa-table"></i>
                                    Complaint Details</div>
                                <form action="/dept/updateRemark" method="POST">
	                                <div class="card-body">
	                                    <div class="table-responsive">
	                                        <table class="table table-bordered" width="80%" cellspacing="0">
	                                            <tr>
	                                                <th>Complaint I'd</th>
	                                                <td><%= com.getId() %></td>
	                                            </tr>
	                                        </table>
	                                        <table class="table table-bordered" width="80%" cellspacing="0">
	                                            <tr>
	                                                <th>Nature of Complaint</th>
	                                                <td><%= com.getNature() %></td>
	                                            </tr>
	                                        </table>
	                                        <table class="table table-bordered">
	                                            <tr>
	                                                <th>Current Status</th>
	                                                <td><%= com.getStatus() %></td>
	                                            </tr>
	                                            <tr>
	                                                <th>Update Status</th>
	                                                <td>
														<div class="form-group mb-4">
	                                                       <select class="custom-select mr-sm-2" id="status" name="status" required>
	                                                           <option value="" selected>Choose...</option>
	                                                           <option value="Pending">Pending</option>
	                                                           <option value="Solved">Solved</option>
	                                                       </select>
	                                                    </div>
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                            	<th>Current Remarks</th>
	                                                <td><%= com.getRemarks() %></td>
	                                            </tr>
	                                            <tr>
	                                                <th>Remarks</th>
	                                                <td>
	                                                    <div class="form-group">
	                                                        <textarea class="form-control" rows="3" placeholder="Text Here..." name="remarks" required></textarea>
	                                                        <small id="textHelp" class="form-text text-muted">Helper Text</small>
	                                                    </div>
	                                                    <input type="hidden" name="id" style="display: none;" value="<%= com.getId() %>"/>
	                                                	<input type="hidden" name="deptId" style="display: none;" value="${dept_id}"/>
	                                                </td>
	                                            </tr>
	                                            
	                                        </table>
	                                        <button type="submit" class="btn btn-primary">Resolve Complaint</button>
	                                    </div>
	                                </div>
                                </form>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>

            <!-- ============================================================== -->
            <!-- End PAge Content -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->



        <!-- ============================================================== -->
        <!--  Modal content for the above example -->
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
        <!-- ============================================================== -->
        <!-- footer -->
<%@ include file="Footer.jsp" %>
</body>

</html>
