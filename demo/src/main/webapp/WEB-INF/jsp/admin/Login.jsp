<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Admin Login</title>
		<meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="icon" type="/image/png" href="../public/programs/form/assets/images/icons/favicon.ico" />
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/vendor/bootstrap/css/bootstrap.min.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/vendor/animate/animate.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/vendor/css-hamburgers/hamburgers.min.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/vendor/animsition/css/animsition.min.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/vendor/select2/select2.min.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/vendor/daterangepicker/daterangepicker.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/css/main.css">
	    <link rel="stylesheet" type="text/css" href="../public/programs/form/assets/css/util.css">
	    <script src="https://unpkg.com/feather-icons"></script>
	    <!-- Custom java script for Password validation -->
	    <!--link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet"-->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" crossorigin="anonymous">
	</head>
<body>
	<div class="limiter" style="background-color: #ebeeef">

        <div class="container" style="padding:20px 0px 0px 20px;background-color: #ebeeef;">
            <a href="/" style="font-size: 13px;font-weight: 600;text-transform: uppercase;letter-spacing: 1px;display: inline-block;padding: 10px 32px;border-radius: 4px;background: #F39C12; color:black;">
            	Go to Home
            </a>
        </div>
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-form-title" style="background-image: url(../public/programs/form/assets/images/bg-01.jpg)">
                    <span class="login100-form-title-1">
                        CMS Admin Login
                    </span>
                </div>
                <div class="ErrorMsg">
                	<c:if test="${login-message != null}">
                		<c:out value="${login-message}"/>
                	</c:if>
                </div>
                <form class="login100-form" action="/admin/dashboard" method="post">
                    <div class="wrap-input100 validate-input m-b-26" data-validate="email id is required">
                        <span class="label-input100">Email id<span style="color: #ff5e13;">&nbsp;*</span></span>
                        <input class="input100" type="text" name="userName" placeholder="Enter Email id" value="" required>
                        <span class="focus-input100"></span>
                    </div>
					
                    <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                        <span class="label-input100">Password<span style="color: #ff5e13;">&nbsp;*</span></span>
                        <input id="passwd" class="input100" type="password" name="pass" placeholder="Enter password" required>
                        <span class="eye-icon"><i id="eye-pass" class="fas fa-eye-slash"></i></span>
                        <span class="focus-input100"></span>
                    </div>
                    <div class="container">
                        <div class="container-login100-form-btn" style="justify-content: center;">             
                            <button type="submit"  class="login100-form-btn btn-margin">
                                LOGIN
                            </button>
                        </div>
                    </div>
                    
                    <div class="flex-sb-m py-3 w-full">
                        <div class="container" style="display:flex;justify-content: center;">
                            <a href="" class="text-primary font-weight-bold text-hover">Forgotten Password?
                            </a>
                        </div>
                    </div>
                    <div class="w-full" style="border-bottom:1px solid #dadde1;"></div>
<!--                     <div class="flex-sb-m w-full p-t-5 m-l-30" style="justify-content: center;"> -->
<!--                         <div> -->
<!--                             Don't have an account? -->
<!--                             <a href="/userSignUp" class="text-primary font-weight-bold"> -->
<!--                                 Sign Up -->
<!--                             </a> -->
<!--                         </div> -->
<!--                     </div> -->
                </form>
            </div>
        </div>
        
     </div>


        <script>
            feather.replace()

        </script>
        <script src="../public/programs/form/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="../public/programs/form/assets/vendor/animsition/js/animsition.min.js"></script>
        <script src="../public/programs/form/assets/vendor/bootstrap/js/popper.js"></script>
        <script src="../public/programs/form/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="../public/programs/form/assets/vendor/select2/select2.min.js"></script>
        <script src="../public/programs/form/assets/vendor/daterangepicker/moment.min.js"></script>
        <script src="../public/programs/form/assets/vendor/daterangepicker/daterangepicker.js"></script>
        <script src="../public/programs/form/assets/vendor/countdowntime/countdowntime.js"></script>
        <script src="../public/programs/form/assets/js/main.js"></script>
        <script src="../public/programs/form/assets/js/jsFunction.js"></script>
</body>
</html>