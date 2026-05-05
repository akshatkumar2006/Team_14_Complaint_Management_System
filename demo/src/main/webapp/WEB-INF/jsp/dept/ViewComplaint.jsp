<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">
                        	<span id="greet">,</span>
                        </h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item">
                                    	<a href="javascript:void(0);">Dashboard</a>
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
    		<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">View Complaint</h4>
                                </div>
                                <x-alert type="ValidationError" />
                                <div class="table-responsive">
                                	<%
	                                	Complaint com = (Complaint) request.getAttribute("getACompalint");
                                	%>
                                    <table class="table table-bordered" width="80%" cellspacing="0">
                                        <tr>
                                            <th>Complaint Type</th>
                                            <td>
                                                <span id="type"><%= com.getType() %></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Priority of Complaint</th>
                                            <td>
                                            	<span><%= com.getNature() %></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Complaint Details</th>
                                            <td>
                                            	<span><%= com.getDetail() %></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Complaint Status</th>
                                            <td>
                                            	<span><%= com.getStatus() %></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Complaint Remarks</th>
                                            <td>
                                            	<span><%= com.getRemarks() %></span>
                                            </td>
                                        </tr>
                                        <!-- <tr>
                                            <th>Date of Complaint</th>
                                            <td>
                                            	<input type="date" id="temp" name="complaintDate" placeholder="MM/dd/yyyy" value="" required>
                                            </td>
                                        </tr> -->
                                    </table>
                                </div>

                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>
                <!-- end row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->

            <!-- All Jquery -->
            <%@ include file="Footer.jsp" %>
    </body>
</html>

<%-- 
<%
	List<Dept> listDept = (List<Dept>) request.getAttribute("deptList");
	for(Dept oneDept : listDept){
%>
	<option value="<%=oneDept.getId()%>">
		<%=oneDept.getDeptName()%>
	</option>
<%
	}
%>
--%>