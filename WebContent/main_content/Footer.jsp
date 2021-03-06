<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- 구글폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   
    <title>투게더</title>
    <style>
    
        body,html, * {margin: 0; padding: 0; box-sizing: border-box; }
            ul{list-style: none;}
            a{text-decoration: none; display: block;}
    
    
    
            /* footer */
            .context-dark, .bg-gray-dark, .bg-primary {color: rgba(255, 255, 255, 0.8); font-family: 'Noto Sans KR', sans-serif; font-size: 12px;}
    
            .footer-classic a, .footer-classic a:focus, .footer-classic a:active {
                color: #ffffff;
            }
            .nav-list li {
                padding-top: 5px;
                padding-bottom: 5px;
            }
    
            .nav-list li a:hover:before {
                margin-left: 0;
                opacity: 1;
                visibility: visible;
            }
    
            ul, ol {
                list-style: none;
                padding: 0;
                margin: 0;
            }
    
            .social-inner {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
                padding: 23px;
                font: 900 13px/1 "Lato", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
                text-transform: uppercase;
                color: rgba(255, 255, 255, 0.5);
            }
            .social-container .col {
                border: 1px solid rgba(255, 255, 255, 0.1);
            }
            .nav-list li a:before {
                content: "\f14f";
                font: 400 21px/1 "Material Design Icons";
                color: #4d6de6;
                display: inline-block;
                vertical-align: baseline;
                margin-left: -28px;
                margin-right: 7px;
                opacity: 0;
                visibility: hidden;
                transition: .22s ease;
            }
    
            .col a:hover {background-color: #fff; color: #000; font-weight: bold;}
    
            footer{height: auto;}
            footer > .footer_wrap {display: flex;height: 300px;  align-items: center; justify-content: space-around;}
    
            
    
            footer .footer_contents{display: flex; flex-flow: column; justify-content: space-around;}
            footer .footer_content1{height: 250px;}
            footer .footer_content2{max-width: 350px; height: 250px;}
            footer .footer_content3{width: 150px;}
    
            
    
            
            /* 반응형 */
            @media screen and (max-width: 760px) {
    
                /* footer */
                .context-dark, .bg-gray-dark, .bg-primary {font-size: 10px;}
    
                footer > .footer_wrap{flex-flow: column;justify-content: space-between; align-items: flex-start; height: 600px; padding: 60px;}
                footer .footer_contents{margin: 20px 0;}
                
            }
        </style>
  

</head>
<body>
    <!-- footer -->
    <footer class="footer-classic context-dark" style="background: rgb(106, 175, 230);">
        <div class="footer_wrap">
            <div class="footer_content1 footer_contents">
            <h5>사용한 언어</h5>
               	<ul>           		
               		<li>JAVA</li>
               		<li>HTML5</li>
               		<li>CSS</li>
               		<li>JAVASCRIPT</li>
               		<li>ORACLE</li>
               		
               	</ul>
                <!-- Rights-->
                <p class="rights"><span>©  </span><span class="copyright-year">2021</span><span> </span><span>Together</span><span>. </span><span>Team project</span></p>
            </div>
            <div class="footer_content2 footer_contents">
                <h5>Contacts</h5>
                <dl class="contact-list">
                <dt>Address:</dt>
                <dd>경기도 용인시 기흥구 영덕동</dd>
                </dl>
                <dl class="contact-list">
                <dt>email:</dt>
                <dd><a href="mailto:#">seongbongnoh@gmail.com</a></dd>
                </dl>
                <dl class="contact-list">
                <dt>phones:</dt>
                <dd><a href="tel:#">01050674188</a> 
                </dd>
                </dl>
            </div>
            <div class="footer_content3 footer_contents">
                <h5>Team</h5>
                <ul class="nav-list">
                <li><a href="#">PM : 박아란</a></li>
                <li><a href="#">PL : 김태영</a></li>
                <li><a href="#">TM : 노성봉</a></li>
                <li><a href="#">TM : 온수인</a></li>
                <li><a href="#">TM : 이소영</a></li>
                </ul>
            </div>
        </div>
        
    </footer>

</body>
</html>