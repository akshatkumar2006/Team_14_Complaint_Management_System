<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="UTF-8">
<title>Insert title here</title> -->
<base href="${pageContext.request.contextPath}/">
</head>
<body>
	<footer class="footer text-center text-muted">
                All Rights Reserved by <b> Complaint Management System</b>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    <script src="../public/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../public/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../public/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="../public/dist/js/app-style-switcher.js"></script>
    <script src="../public/dist/js/feather.min.js"></script>
    <script src="../public/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../public/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../public/dist/js/custom.js"></script>
    <!--This page JavaScript -->
    <script src="../public/assets/extra-libs/c3/d3.min.js"></script>
    <script src="../public/assets/extra-libs/c3/c3.min.js"></script>
    <script src="../public/assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../public/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../public/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="../public/assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js"></script>
    <script src="../public/assets/extra-libs/jvector/jquery-jvectormap-in-mill.js"></script>
    <script src="../public/dist/js/pages/dashboards/dashboard1.js"></script>
    <script type="text/javascript">
        const date = new Date;
        let hours = date.getHours();
        if (hours == 00) {
            document.getElementById('greet').innerHTML = 'Good Evening' + ', ';
        } else {
            let status = (hours <= 11 && hours >= 5) ? "Good Morning" : ((hours < 17 && hours >= 12) ? "Good Afternoon" : "Good Evening");
            document.getElementById('greet').innerHTML = status + ', ';
        }

    </script>
</body>
</html>