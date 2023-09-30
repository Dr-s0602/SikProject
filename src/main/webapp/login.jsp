<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>sik</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link href="/sik/resources/common/css/login.css" rel="stylesheet">
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>    
    <div class="wrapper">
        <div class="content" style="display: flex; flex-direction: column;align-items: center;">
            <div>
                <img src="/sik/resources/common/images/logo_dark.png" height="100" width="200" style="margin-bottom: 50px;">
            </div>
            <input class="form-control" type="text" placeholder="ID" aria-label="default input example">
            <input type="password" id="inputPassword5" placeholder="PASSWORD" class="form-control" aria-describedby="passwordHelpBlock" style="margin-top: 10px; margin-bottom: 20px;">
            <div class="container text-center">
                <div class="row">
                  <div class="col">
                  	<div class="d-grid gap-2">
                    	<a href="/sik/views/main.jsp"><button type="button" class="btn btn-primary" style="background: #7030A0;border-color: #7030A0 !important; width:150px; height:40px;" >
                    	<font color="white" size="4px" margin=0px;>login</font></button></a>
                    </div>
                  </div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>