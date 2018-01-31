<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Login</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        <!--base css styles-->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">

        <!--page specific css styles-->

       <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style-responsive.css">
    <link rel="stylesheet" href="css/smart_styles.css">
 
    <link rel="shortcut icon" href="img/fav_icon.png">
    </head>
    <style>
    body
    {
    	font-family: Verdana, Geneva, sans-serif;
    	font-size: 12px;
    }
    .login-page:before, .error-page:before, #main-content
    {
    	background:url(img/water-3.jpg) no-repeat;
    }
    .login-page form h3 
    {
    	font-family: Verdana, Geneva, sans-serif;
    	font-size: 12px;
    	font-weight: 600;
    	text-align:center;
	}
	
    .login-page .login-wrapper form
    {
		background:none;
    	font-family: Verdana, Geneva, sans-serif;
    	font-size: 12px;
    	padding: 10px;
    	width: 260px;
    	margin: 100px 100px;
    	float: right;
    	border:1px solid #0090ff;
    	border-radius:5px;
    	box-shadow: 0 0 5px #1c5675;
    	border:1px solid #25729a;
    	-webkit-border-radius: 3px;
    	-moz-border-radius: 3px;
    	border-radius: 3px;
    }
    .login-page form input[type="text"], .login-page form input[type="password"], .login-page form button
    {
	    border-bottom-right-radius: 5px;
	    border-top-right-radius: 5px;
	    display: table-cell;
	    
	    height: auto !important;
	    width: 200px !important;
	    padding: 3px !important;
	    font-family: Verdana, Geneva, sans-serif;
	    font-size: 12px;
	    line-height: 20px;
	    vertical-align: middle;
	    border: 1px solid #e4e6eb!important;
	    color: #000000 !important;
	    background:#FFF;
	}
	.input-group-addon
	{
    	border-color: #e4e6eb!important;
    	padding: 6px 12px;
	    font-size: 14px;
	    font-weight: normal;
	    line-height: 1;
	    text-align: center;
	    background-color: #eee;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    width: 35px;
    	white-space: nowrap;
    	vertical-align: middle;
    	display: table-cell;
    	float:left;
	}
	.input-group {
	    position: relative;
	    display: table;
	    border-collapse: separate;
	}
	[class^="icon-"], [class*=" icon-"] {
    display: inline;
    width: auto;
    height: auto;
    line-height: normal;
    vertical-align: baseline;
    background-image: none;
    background-position: 0% 0%;
    background-repeat: repeat;
    margin-top: 0;
        font-family: FontAwesome;
    font-weight: normal;
    font-style: normal;
    text-decoration: inherit;
    -webkit-font-smoothing: antialiased;
    float:left;
}
.icon-user:before {
    content: "\f007";
}
.icon-lock:before {
    content: "\f023";
}
.icon-question:before {
    content: "\f128";
    font-size:14px;
}
.icon-back:before {
    content: "\f190";
    font-size:14px;
}
.icon-email:before {
    content: "\f0e0";
    font-size:14px;
}
.icon-waterdrop:before {
    content: "\f043";
    font-size:14px;
}
[class^="icon-"]:before, [class*=" icon-"]:before {
    text-decoration: inherit;
    display: inline-block;
    speak: none;
}
	hr
	{
		margin-top: 5px;
   		margin-bottom: 5px;
    	border: 0;
    	border-top: 1px solid #CCC;
    	background:#0090ff;margin-bottom:30px;
	}
	.login-page form button {
    	margin-top: 10px; 
    	width:100% !important;
	}
	#footer
	{
		width:100%;
		position:fixed;
		bottom:0px;
		padding:5px;
		background: none repeat scroll 0 0 #36A9E1;
    	border: 1px solid #2187B9;
    	color: #FFFFFF;
    	z-index:2;
	}
	#header
	{
		background: none repeat scroll 0 0 #36A9E1;
    	width:100%;
		position:fixed;
		top:0px;
		height:5px;
    	color: #FFFFFF;
    	z-index:2;
	}
	#header1
	{
		width:100%;
		position:fixed;
		top:5px;
		padding-left:55px;
		padding-top:15px;
		height:60px;
    	color: #FFFFFF;
    	z-index:2;
    	font-family:Eras Medium ITC;
    	/* background:url(img/water-icon.jpg) no-repeat; */
    	
	}
    </style>
    <body class="login-page" style='background:url(img/water-3.jpg) no-repeat;'>
			<div id='header'>
			</div>
			<div id='header1'>
				
			</div>
			<div style='top:-8px;position:fixed;z-index:2;width:100%;' />
			<img src='img/smart.png' style='float:right;' />
			</div>
        <div class="login-wrapper">
            <!-- BEGIN Login Form -->
            <form id="form-login" action="login.ws" method="post" enctype="application/x-www-form-urlencoded">
                <h3>Login to your account </h3>
                <hr />
                <div class="form-group">
                    <div class="controls">
                    <span class="input-group-addon"><i class="icon-user"></i></span>
                        <input type="text" placeholder="Username" name="userId" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                    <span class="input-group-addon"><i class="icon-lock"></i></span>
                        <input type="password" placeholder="Password" name="password" class="form-control" />
                    </div>
                </div>
                <!-- <div class="form-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox" value="remember" /> Remember me
                        </label>
                    </div>
                </div>-->
                <div class="form-group">
                    <div class="controls">
                        <button type="submit" class="btn btn-primary form-control" style='color:#FFF !important;'>Sign In</button>
                    </div>
                </div>
                <hr/>
                <c:if test="${! empty errormessage }">
                                <label style="color:red">${errormessage}</label>
                </c:if>
                <p class="clearfix">
                    <a href="#" class="goto-forgot pull-left">Forgot Password <i style='float:none' class="icon-question"></i></a>
<!--                     <a href="#" class="goto-register pull-right">Sign up now</a> -->
                </p>
            </form>
            <!-- END Login Form -->

            <!-- BEGIN Forgot Password Form -->
            <form id="form-forgot" action="index.html" method="get" style="display:none">
                <h3>Get back your password</h3>
                <hr/>
                <div class="form-group">
                    <div class="controls">
                    <span class="input-group-addon"><i class="icon-email"></i></span>
                        <input type="text" placeholder="Email" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <button type="submit" class="btn btn-primary form-control" style='color:#FFF !important;'>Recover</button>
                    </div>
                </div>
                <hr/>
                <p class="clearfix">
                    <a href="#" class="goto-login pull-left"><i style='float:none' class="icon-back"></i> Back to login form</a>
                </p>
            </form>
            <!-- END Forgot Password Form -->

            <!-- BEGIN Register Form -->
            <form id="form-register" action="index.html" method="get" style="display:none">
                <h3>Sign up</h3>
                <hr/>
                <div class="form-group">
                    <div class="controls">
                        <input type="text" placeholder="Email" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <input type="text" placeholder="Username" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <input type="password" placeholder="Password" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <input type="password" placeholder="Repeat Password" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox" value="remember" /> I accept the <a href="#">user aggrement</a>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="controls">
                        <button type="submit" class="btn btn-primary form-control">Sign up</button>
                    </div>
                </div>
                <hr/>
                <p class="clearfix">
                    <a href="#" class="goto-login pull-left">← Back to login form</a>
                </p>
            </form>
            <!-- END Register Form -->
        </div>
        <!-- END Main Content -->


        <!--basic scripts-->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/jquery/jquery-2.1.4.min.js"><\/script>')</script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            function goToForm(form)
            {
                $('.login-wrapper > form:visible').fadeOut(500, function(){
                    $('#form-' + form).fadeIn(500);
                });
            }
            $(function() {
                $('.goto-login').click(function(){
                    goToForm('login');
                });
                $('.goto-forgot').click(function(){
                    goToForm('forgot');
                });
                $('.goto-register').click(function(){
                    goToForm('register');
                });
            });
        </script>
        <div id='footer'>
        	<table width="100%" >
			<tr>
			  <td width='33%'>&copy; Copyright  2017, All Rights Reserved.</td>
			  <td align='center' width='34%'>Smarttrack Solar Systems Pvt. Ltd.</td>
			  <td width='33%' class="text-right">Build Ver: 0.0 Rel.</td>
			  </tr>
			</table>
        </div>
    </body>
</html>
