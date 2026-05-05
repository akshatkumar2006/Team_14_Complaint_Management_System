<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" autoFlush="true"%>
<%@ page import="java.util.List, com.example.demo.model.Dept" %>
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
    <title>Department List</title>
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
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Department List</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="./dashboard" class="text-muted">Home</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Department List</li>
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
                                <h4 class="card-title">Department List</h4>
                                <br/><br/><br/>
                                <p>${firstDepartment}</p>
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
                                        	<%-- <c:forEach var="dept" items="${DepartmentList}">
	                                            <tr>
	                                                <td>${dept.deptName}</td>
	                                                <td>${dept.email}</td>
	                                                <td>${dept.firstName}</td>
	                                                <td>${dept.lastName}</td>
	                                                <td>${dept.mobileNo}</td>
	                                                <td>
	                                                	<button type="button" data-toggle="modal" data-target="#full-width-modal1" data-id={{ $item->
	                                                		view
	                                                	</button>
	                                                	<button type="button" onclick="">
	                                                		update
	                                                	</button>
	                                                	<button type="button" onclick="">
	                                                		delete
	                                                	</button>
	                                                </td>
	                                            </tr>
		                                     </c:forEach> --%>
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
            <!-- Full width modal content -->
            <div id="full-width-modal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-full-width">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="fullWidthModalLabel"></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    
                        </div>
                        <div class="modal-body">
                            <div class="card mb-3">
                                <div class="card-header">
                                    <i class="fas fa-table"></i>
                                    Department Details</div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                    	<% 
											List<Dept> deptList = (List<Dept>) request.getAttribute("department-list");
											for(Dept dept : deptList){
										%>
                                        <table class="table table-bordered" width="80%" cellspacing="0">
                                            <tr>
                                                <th>Department Name</th>
                                                <td id="detail1"><%=dept.getDeptName()%></td>
                                            </tr>
                                            <tr>
                                                <th>Department Email</th>
                                                <td id="detail2"><%=dept.getEmail()%></td>
                                            </tr>
                                            <tr>
                                                <th>Person First Name</th>
                                                <td id="detail3"><%=dept.getFirstName()%></td>
                                            </tr>
                                            <tr>
                                                <th>Person Last Name</th>
                                                <td id="detail4"><%=dept.getLastName()%></td>
                                            </tr>
                                            <tr>
                                                <th>Department Location</th>
                                                <td id="detail5"><%=dept.getLocation()%></td>
                                            </tr>
                                            <tr>
                                                <th>Contact Number</th>
                                                <td id="detail5"><%=dept.getMobileNo()%></td>
                                            </tr>
                                        </table>
                                        <%
											}
                                        %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

        
			<div id="full-width-modal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-full-width">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="fullWidthModalLabel"></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        </div>
                        <div class="modal-body">
                            <div class="card mb-3">
                                <div class="card-header">
                                    <i class="fas fa-table"></i>
                                    Department Details</div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" width="80%" cellspacing="0">
	                                            <tr>
	                                                <th>Department Name</th>
	                                                <td>
	                                                	<input type="text" class="form-control" id="deptName" name="deptName" value="" required placeholder="Department Name" />
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                                <th>Department Email</th>
	                                                <td>
	                                                	<input type="email" class="form-control" id="email" name="email" value="" required placeholder="Department Email" />                                             	
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                                <th>Person First Name</th>
	                                                <td>
	                                                	<input type="text" class="form-control" id="firstName" name="firstName" value="" required placeholder="First Name"/>                                        	
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                                <th>Person Last Name</th>
	                                                <td>
	                                                	<input type="text" class="form-control" id="lastName" name="lastName" value="" required placeholder="Last Name" />
	                                        	    </td>
	                                            </tr>
	                                            <tr>
	                                                <th>Department Location</th>
	                                                <td>
	                                                	<input type="text" class="form-control" id="location" name="location" value="" required placeholder="Department Location" />
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                                <th>Contact Number</th>
	                                                <td>
	                                                	<input type="text" class="form-control" id="mobileNo" name="mobileNo" value="" required placeholder="Mobile Number" />
	                                                </td>
	                                            </tr>
	                                    </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-success" data-dismiss="modal">Update</button>
                        </div>
                    </div>
                </div>
            </div>

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
                            <a href="/admin/logout" type="button" class="btn btn-primary"><i data-feather="log-out" class="feather-icon"></i> Logout</a>

                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->

    
    <%@ include file="Footer.jsp" %>

</body>

</html>
