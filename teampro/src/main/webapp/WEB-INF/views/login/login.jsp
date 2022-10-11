<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
 <style>
 	body {
	 	margin:0 auto;
	 	background-color:#333;
	 	background:linear-gradient(
        rgba(0, 0, 0, 0.6),
        rgba(0, 0, 0, 1.0)), 
      	url(../resources/img/좌석bg.jpg) no-repeat center center;
	 	background-size:cover;
 	}
    .wrap {
		position: relative;
	    width: 550px;
	    margin: 0 auto;
	    top: 230px;
	    padding-left: 10px;
	    height: 430px;
	    background: #eee;
    }
    .wrap .left {
    	position:absolute;
    }
    .wrap .right {
    	position: relative;
    	padding-top: 15px;
    	height: 100%;
    	margin-left: 340px;
    }
    .wrap div {
    	margin-top:15px;
    }
    .right h2 {
    	position: absolute;
	    margin: 0 auto;
	    left: 100px;
	    color:#555;
	    top: 30px;
    }
    .right input[type=text] {
       width:200px;
       height:40px;
       border:0px solid white;
       border-bottom:2px solid black;
    }
    .right input[type=password] {
       width:200px;
       height:40px;
       border:0px solid white;
       border-bottom:2px solid black;
    }
    .right input[type=submit] {
       width:180px;
       height:50px;
       border:1px solid #eeeeee;
       background:#3c3c3c;
       color:white;
       font-size:15px;
    }
    .left > img {
    	width:300px;
    	height:400px;
    }
    .right .logSave a {
		text-decoration:none;
		color:black;
		font-size:15px;
    }
 </style>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
 	// 아이디저장 (될지안될지 모름)
	 $(function() {
	     
	     fnInit();
	   
	});
	
	function frm_check(){
	   saveid();
	}
	
	function fnInit(){
	  var cookieid = getCookie("saveid");
	  console.log(cookieid);
	  if(cookieid !=""){
	      $("input:checkbox[id='saveId']").prop("checked", true);
	      $('#logId').val(cookieid);
	  }
	  
	}    
	
	function setCookie(name, value, expiredays) {
	  var todayDate = new Date();
	  todayDate.setTime(todayDate.getTime() + 0);
	  if(todayDate > expiredays){
	      document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
	  }else if(todayDate < expiredays){
	      todayDate.setDate(todayDate.getDate() + expiredays);
	      document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
	  }
	  
	  
	  console.log(document.cookie);
	}
	
	function getCookie(Name) {
	  var search = Name + "=";
	  console.log("search : " + search);
	  
	  if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
	      offset = document.cookie.indexOf(search);
	      console.log("offset : " + offset);
	      if (offset != -1) { // 쿠키가 존재하면 
	          offset += search.length;
	          // set index of beginning of value
	          end = document.cookie.indexOf(";", offset);
	          console.log("end : " + end);
	          // 쿠키 값의 마지막 위치 인덱스 번호 설정 
	          if (end == -1)
	              end = document.cookie.length;
	          console.log("end위치  : " + end);
	          
	          return unescape(document.cookie.substring(offset, end));
	      }
	  }
	  return "";
	}
	
	function saveid() {
	  var expdate = new Date();
	  if ($("#saveId").is(":checked")){
	      expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
	      setCookie("saveid", $("#logId").val(), expdate);
	      }else{
	     expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
	      setCookie("saveid", $("#logId").val(), expdate);
	       
	  }
	}
	
	// 아이디 저장 끝
	
 </script>
</head>
<body>
	<form method="post">
		<div class="wrap">
			<div class="left"> 
				 
			</div>
			<div class="right">
			 	<div class="cg">
			 		<img src="../resources/img/CCA5.png" width="90" height="40">
			 	</div> <!-- CGV 글자 대신 img src로고 크기조절해서 넣으면 됩니다 --> 
			 	<h2> 
			  		로그인 
			  	</h2>
			  	<div> 
			  		<input type="text" name="userid" id="logId" placeholder="아이디">
			  	</div>
			  	<div> 
			  		<input type="password" name="pwd" placeholder="비밀번호"> 
			  	</div>
			  	<div class="logSave">
			    	<a href="#none" onclick="winSearchId()"> 아이디 찾기 </a>
				    /
				    <a href="#none" onclick="winSearchPwd()"> 비밀번호 찾기 </a>
				</div>
			  		<c:if test="${err ==1 }">
			  			<script>
							alert("아이디 혹은 비밀번호가 맞지 않습니다");
						</script>
					</c:if>
				<div> <input type="submit" name="로그인" value="로그인 하기 →" formaction="login_ok"> </div>
				<div> <input type="submit" name="회원가입" value="회원가입 하기 →" formaction="../member/memberinput"> </div>
				<div> <input type="submit" name="로그인" value="메인 홈페이지 →" formaction="../main/index"> </div>
			</div>
		</div>
	</form>
<script>
const movImg = ["매트릭스.jpg","머니볼.jpg","브루스올마이티.jpg","소셜네트워크.jpg","어벤져스1.jpg",
	"엔드게임.jpg","인셉션.jpg","인터스텔라.jpg","인피니티워.jpg","타이타닉.jpg","해리포터마법사의돌.jpg"]
const choseImg = movImg[Math.floor(Math.random() * movImg.length)];
const bgImg = document.createElement("img");
bgImg.src = '../resources/mimg/'+choseImg;
/* console.log(choseImg); */
document.querySelector(".left").appendChild(bgImg);

function winSearchId() {
	var idUrl = window.open('../login/idsearch','아이디찾기','top=200, left=700, width=500, height=500, status=no, menubar=no, resizable=no, toolbar=no, scrollbars=no');
	}
function winSearchPwd() {
	var idUrl = window.open('../login/pwdsearch','비밀번호찾기','top=200, left=700, width=500, height=500, status=no, menubar=no, resizable=no, toolbar=no, scrollbars=no');
}
</script>
</body>    