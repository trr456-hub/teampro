<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<style>
		section {
			width:100%;
			height:700px;
			margin:auto;
			position:relative;
			background:white;
		}
		section h2 {
			padding-top: 30px;
		}
		section #aa {
			width:120px;
			height:40px;
			display:inline-block;
			text-align:center;
			padding-right:15%;
			font-size: 20px;
		    font-weight: 550;
		    line-height: 29px;
		    letter-spacing: -.63px;
		    color: #1e1e23;
		    word-break: break-all;
		    padding-top: 30px;
		}
		section #tle{
			padding: 16px 17px 50px 40px;
			margin:auto;
			width:700px;
		    border-radius: 12px;
		    box-shadow: 2px 2px 14px 0 rgb(0 164 73 / 8%);
		    border: solid 1px #7878E1;
		    background-color: #fcfcfc;
		    box-sizing: border-box;
		}
		section div{
			font-size:20px;
			margin-top:10px;
		}
		section input[type=password]{
			border:1px solid #eeeeee;
			height:30px;
		}
		section input[type=button] {
	      width:100px;
	      height:40px;
	      border:1px solid #eeeeee;
	      background:#7878E1;
	      color:white;
	      font-size:15px;
	      border-radius: 5px;
    }
    	section input[type=submit] {
    		 background:#7878E1;
    		 color:white;
    		 border:1px solid #eeeeee;
    		 height:25px;
    	}
    section #pwdform {
    	position:absolute;
    	left:150px;
    	top:20px;
    	visibility:hidden;
    	width:200px;
    	height:280px;
    	background:white;
    	border:1px solid #46B8FF;
    	text-align:center;
    }
	</style>
	<script>
		function change_pwd(){
			document.getElementById("pwdform").style.visibility="visible";		
		}
		
		var phck=0;
		function check_pwd(pwd2){
			var pwd=document.pchg.pwd.value;
			if(pwd==pwd2){
				document.getElementById("pmsg").innerText="비밀번호가 일치합니다";
				document.getElementById("pmsg").style.color="blue";
				pchk=1;
			}
			else{
				document.getElementById("pmsg").innerText="비밀번호 불일치";
				document.getElementById("pmsg").style.color="red";
				pchk=0;
			}
		}
		// 비밀번호 변경 버튼이 클릭되었을때 체크해야될 내용
		// 1. 기존 비밀번호의 입력여부
		// 2. 새 비밀번호가 3자 이상
		// 3. 새 비밀번호 2개가 같은지
		function check(my){
			if(my.prepwd.value.trim().length == 0){
				alert("기존 비밀번호를 입력하세요");
				return false;
			}
			else if(my.pwd.value.trim().length == 0) {
				alert("새 비밀번호를 입력하세요");
				return false;
			}
			else if(pchk == 0){
				alert("비밀번호가 일치하지 않습니다");
				return false;
			}
			else
				return true;
		}
	</script>
</head>
<body>
	<section>
	<h2 align="center">  </h2>
	<div id="tle">
	<div><span id="aa"> 아이디  </span> ${mvo.userid} </div>
	<div> <span id="aa"> 이 름  </span>  ${mvo.name }</div>
	<div> <span id="aa"> 우편번호  </span>  ${mvo.zip} </div>
	<div><span id="aa"> 주 소  </span>  ${mvo.juso } ${mvo.juso_etc }</div>
	<div> <span id="aa"> 전 화  </span>  ${mvo.phone }</div>
	<div> <span id="aa"> 이메일  </span>  ${mvo.email} </div>
	</div>
	<div align="center" style="padding-bottom:100px;"> <input type="button" value="정보수정" onclick="location='myinfo_edit'">
	<input type="button" value="주문내역" onclick="location='myjumun'">
	<input type="button" value="리뷰관리" onclick="location='myreview'">
	<input type="button" value="예매내역" onclick="location='myreserve'">
	<!--
	<input type="button" value="회원탈퇴" onclick="location='member_out'"> -->
	</div>
	</section>
</body>