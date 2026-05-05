<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.demo.model.Complaint" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../public/assets/images/favicon.png">
    <title>View Complaint</title>
    <!-- Custom CSS -->

    <link href="../public/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../public/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../public/dist/css/style.css" rel="stylesheet">
    <link href="../public/programs/assets/css/select2.css" rel="stylesheet" />
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
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Track Complaint</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="/" class="text-muted">Home</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Tracked Complaint</li>
                                </ol>
                            </nav>
                        </div>
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
                <div id="Error"></div>
                <x-alert type="ErrorMsg" />
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->

                <!-- order table -->
                <%
                	Complaint comm1 = (Complaint) request.getAttribute("getTrackedCompalint");
                	String dept = (String) request.getAttribute("deptName1");
                %>
                <div id="UpdateComplaint">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mb-3">
                                <div class="card-header">
                                    <i class="fas fa-table"></i>
                                    Complaint Details
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" width="80%" cellspacing="0">
                                            <tr>
                                                <th>Complaint I'd</th>
                                                <td><%=comm1.getId() %></td>
                                                <th>Complaint Date</th>
                                                <td>Hi</td>
                                            </tr>
                                            <tr>
                                            	<th>Last update</th>
                                                <td>Hi</td>
                                                <th>Current Status</th>
                                                <td><%=comm1.getStatus() %></td>
                                            </tr>
                                            <tr>
                                                <th>Department Name</th>
                                                <td><%=dept %></td>
                                            </tr>
                                            <tr>
                                                <th>Complaint Details</th>
                                                <td><%=comm1.getDetail() %></td>
                                            </tr>
                                            <tr>
                                                <th>Complaint Type</th>
                                                <td><%=comm1.getType() %></td>
                                            </tr>
                                            <tr>
                                            	<th>Priority of Complaint</th>
                                                <td><%=comm1.getNature() %></td>
                                            </tr>
                                        </table>
                                       
                                        
                                        <table class="table table-bordered" width="50%" cellspacing="0">
                                            <tr>
                                                <th>Remarks</th>
                                                <td><%=comm1.getRemarks()%></td>
                                            </tr>
                                        </table>
                                        
                                    </div>
                                </div>
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
                                <a href="/user/logout" class="btn btn-primary"><i data-feather="log-out" class="feather-icon"></i> Logout</a>
	
	                        </div>
	                    </div><!-- /.modal-content -->
	                </div><!-- /.modal-dialog -->
            	</div><!-- /.modal -->
    		</div>
        
        <%@ include file="Footer.jsp" %>
</body>
</html>