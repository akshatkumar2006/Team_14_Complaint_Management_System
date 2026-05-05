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
    <title>Track Complaint</title>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" crossorigin="anonymous">


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
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Track Complaint</li>
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

                <div class="col-sm-12 col-md-6 col-lg-6" id="append">
                    <div class="card">
                        <div class="card-body">
                        	<form action="/user/getComp" method="get">
	                            <h4 class="card-title">Enter Complaint I'd</h4>
	                            <div class="form-group">
	                                <input id="complaint" type="text" name="id" class="form-control" placeholder="Complaint I'd">	                        
	                            </div>
	                            <!-- <button id="btn" class="btn btn-dark ml-1 get" type="button" data-toggle="collapse" data-target="#UpdateComplaint" aria-expanded="false" aria-controls="UpdateComplaint">
	                                Show Details
	                            </button> -->
	                            <button id="btn" class="btn btn-dark ml-1 get">
	                                Show Details
	                            </button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- order table -->
                <div id="UpdateComplaint" class="collapse">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mb-3">
                                <div class="card-header">
                                    <i class="fas fa-table"></i>
                                    Complaint Details</div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" width="80%" cellspacing="0">
                                            <tr>
                                                <th>Complaint I'd</th>
                                                <td id="data1">xxxxxx</td>
                                                <th>Complaint Date</th>
                                                <td id="data5">xxxxxx</td>
                                            </tr>
                                            <tr>
                                            	<th>Last update</th>
                                                <td id="data7">xxxxxx</td>
                                                <th>Current Status</th>
                                                <td id="data8">xxxxxxxxxxxxxx</td>
                                            </tr>
                                            <tr>
                                                <th>Department Name</th>
                                                <td id="data2">xxxxxxxxxxxxxx</td>
                                            </tr>
                                            <tr>
                                                <th>Complaint Details</th>
                                                <td id="data3">xxxxxxxxxxxxx</td>
                                            </tr>
                                            <tr>
                                                <th>Complaint Type</th>
                                                <td id="data4">xxxxxxx</td>
                                            </tr>
                                            <tr>
                                                <th>Complaint Date</th>
                                                <td id="data5">xxxxxx</td>
                                            </tr>
                                            <tr>
                                            	<th>Priority of Complaint</th>
                                                <td id="data6">xxxxxx</td>
                                            </tr>
                                         
                                            <tr>
                                            	<th>Complaint Status</th>
                                                <td id="data6">xxxxxx</td>
                                            </tr>
                                            <tr>
                                                <th>Nature of Complaint</th>
                                                <td id="data5">xxxxxxxxxxxx</td>
                                            </tr>
                                            
                                        </table>
                                       
                                        
                                        <table class="table table-bordered" width="50%" cellspacing="0">
                                            <tr>
                                                <th>Remarks</th>
                                                <td id="data10">xxxxxxxxxxxx</td>
                                            </tr>
                                        </table>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#danger-alert-modal">Close Complaint</button>
                                        &emsp;
                                        <button id="btnRecomplaint" class="btn btn-primary" data-toggle="modal" data-target="#info-alert-modal" style="display: none;">Re-Complaint</button>

                                        <form id="form-recomplaint" action="{{ route('user.recomplaint.init') }}" method="POST" style="display: none;">
                                            @csrf
                                            @method('put')
                                        </form>
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

        <!-- Info Alert Modal -->
        <div id="info-alert-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-body p-4">
                        <div class="text-center">
                            <i class="dripicons-information h1 text-info"></i>
                            <h4 class="mt-2">Heads up!</h4>
                            <p class="mt-3">You're sure to be proceed further for recomplaining.</p>
                            <p>Once you recomplained you can't be able to recomplain again.</p>
                            <button id="continueBtn" type="button" class="btn btn-info my-2" data-dismiss="">Continue</button>
                        </div>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


        <!-- Danger Alert Modal -->
        <div id="danger-alert-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content modal-filled bg-danger">
                    <div class="modal-body p-4">
                        <div class="text-center">
                            <i class="dripicons-wrong h1"></i>
                            <h4 class="mt-2">Are You Sure?</h4>
                            <p class="mt-3">Please Provide Feedback for Our Services</p>
                            <form id="form-close" action="" method="POST">
                                @csrf
                                @method('put')
                                <input type="text" name="feedback" class="form-control" placeholder="Provide Your Feedback" required />
                            </form>
                            <button type="button" id="closeBtn" class="btn btn-light my-2" data-toggle="modal" data-dismiss="modal" data-target="#centermodal">Continue</button>

                        </div>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div class="modal fade" id="centermodal" tabindex="-1" role="dialog" aria-modal="true">
            <div class="modal-dialog modal-dialog-centered">
                <img src="../public/assets/images/success.gif" width="450" height="350">

            </div><!-- /.modal-dialog-->
        </div>
        <!-- ============================================================== -->
        <!--  Modal content for the above example -->
        <div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	                <div class="modal-dialog modal-lg">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <h4 class="modal-title" id="myLargeModalLabel">Logout</h4>
	                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
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