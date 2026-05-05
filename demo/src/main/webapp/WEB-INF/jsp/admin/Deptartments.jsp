<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../public/
    assets/images/favicon.png">
    <title>Complaint List</title>
    <!-- This page plugin CSS -->
    <link href="../public/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
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
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Complaints List</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="/" class="text-muted">Home</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Complaints List</li>
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
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- order table -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Complaints List</h4>

                                <div class="table-responsive">
                                    <table id="default_order" class="table table-striped table-bordered display no-wrap" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Department Name</th>
                                                <th>Department Email</th>
                                                <th>Person First Name</th>
                                                <th>Person Last Name</th>
                                                <th>Contact Number</th>
                                                <th>View Details</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                            <c:forEach var="dept" items="${DepartmentList}">
                                            <tr>
                                                <td>${dept.deptName}</td>
                                                <td>${dept.email}</td>
                                                <td>${dept.firstName}</td>
                                                <td>${dept.lastName}</td>
                                                <td>${dept.mobileNo}</td>
                                                <td>
                                                	<button class="btn waves-effect waves-light btn-rounded btn-dark viewBtn" data-toggle="modal" id="viewBtn1" data-target="#full-width-modal">View</button>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Department Name</th>
                                                <th>Department Email</th>
                                                <th>Person First Name</th>
                                                <th>Person Last Name</th>
                                                <th>Contact Number</th>
                                                <th>View Details</th>
                                            </tr>
                                        </tfoot>
                                    </table>
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
                                <a href="/admin/logout" class="btn btn-primary"><i data-feather="log-out" class="feather-icon"></i> Logout</a>
	
	                        </div>
	                    </div><!-- /.modal-content -->
	                </div><!-- /.modal-dialog -->
            	</div><!-- /.modal -->
    		</div>
          <%@ include file="Footer.jsp" %>
</body>
</html>