<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>TOGETHER 비밀번호 찾기</title>

	<!-- 파비콘 -->
    <link rel="shortcut icon" href="../common_images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
    
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script><title>Document</title>
    <script type="text/javascript">
	$(document).ready(function() {

		 $("header").load("./Header.jsp");  //nav 인클루드
         $("footer").load("./Footer.jsp");  //nav 인클루드

	});
</script>
    
    <script>
    $(function(){
    	
    	
    	let $formObj = $("form");
    	$formObj.submit(function(){
    		
    		var idValue = $("input[name=mem_id]").val();
        	var nameValue = $("input[name=mem_name]").val();
        	var phoneNumValue = $("input[name=mem_phone_num]").val();
    		
    		$.ajax({
    			url:"../findpwd",
    			method : "post",
    			dataType :"json",
    			data: {"id" : idValue ,"name" : nameValue, "phone_num": phoneNumValue },
    			success: function(responseObj){  
	                 console.log(responseObj);
		              if(responseObj.mem_pwd!=null){
		                   alert("비밀번호 : "+responseObj.mem_pwd);
		                   location.href="./login.jsp";
		              }else if(responseObj.status==-1){
		                      alert("입력하신 정보를 다시 확인해주세요");
		              }else if(responseObj.status==0){
		            	  alert("아이디를 잘못 입력하였습니다.");
		              }
		            },
	            error: function (jQueryXHR) {
                    alert(jQueryXHR);//에러뜸(아이디는 찾았지만 비번이 다를경우....)
                }
    			
    		});
    		return false;
    	});
    });
    </script>
<style>
    /* 글씨체 */
    @font-face {
        font-family: 'BMJUA';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }
    /* 배경화면 설정 */
    body{
        background: url(../common_images/bgi.png) no-repeat center/cover;
        font-family: 'BMJUA';
    }

    /* 비밀번호 찾기 제목 */
    h1{
        padding-bottom: 30px;
        margin: 20px auto;
        text-align: center;
    }

    /* 기본틀 */
     body>section>div{
                width: 30%; 
                height:570px; 
                margin: 90px 85% 70px 15%;

    } 
    /* 비밀번호 찾기 제목*/
    body > section > div > article > div
    {
        height: 80px;
        margin-bottom: 20px;
        margin-top: 10px;
        width: 100%;     
    }
    /* 배경 투명도 */
    .card{
        background-color: rgba(0,0,0,0)!important;
    }

        /* media query*/
        @media screen and (max-width: 768px) {
        body>section>div{

        width: 60%; 
        height: 100%; 
        margin:235px auto;
        background-position-x: left;
        background-size: 30%;

        }
    }
    @media screen and (max-width: 411px) {
        body>section>div{

        width: 80%; 
        height: 100%; 
        background-position-x: left;
        margin: 90px auto;

        }
    }
    @media screen and (max-width: 375px) {
        body>section>div{
        background-origin: padding-box; 
        width: 90%; 
        height: 100%; 
        background-size: 20%;
        margin: 140px auto;

        }
    }



</style>
</head>


<body>
    <header>

    </header>
    <section>
        <div class="card">
            <article class="card-body">
                <div class="logo">
                    <h1>비밀번호 찾기</h1>
                </div>
                <form>
                <div class="form-group">
                   <label>아이디</label>
                    <input name="mem_id" class="form-control" placeholder="아이디 입력" type="text">
                </div> <!-- form-group// -->
                <div class="form-group">
                    <label>이름</label>
                     <input name="mem_name" class="form-control" placeholder="이름 입력" type="text">
                 </div> <!-- form-group// -->
                 <div class="form-group">
                    <label>휴대전화</label>
                     <input name="mem_phone_num" class="form-control" placeholder="휴대전화 입력" type="tel">
                 </div> <!-- form-group// -->
                 <div class="form-group">
                     <input type="submit" class="btn btn-primary btn-block" value="비밀번호 찾기" style="margin-top: 30px; border-style: none;">
                 </div> <!-- form-group// -->
                 </form>
            </article>
            </div> <!-- card.// -->

    </section>
    <footer>

    </footer>
    
</body>
</html>