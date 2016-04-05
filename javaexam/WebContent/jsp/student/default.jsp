<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <script type="text/javascript">
      var c=10;
      var t;
      function timedMsg(){
    	document.getElementById('button1').value="倒计时"+c;
    	document.getElementById("time").value=c;
    	document.getElementById("time").disabled=true;
    	document.getElementById('button1').disabled=true;
    	if(c==0){        
    		clearTimeout(t);        
    		window.location.href="url";//为跳转地址    
         }else{    
        	 t=setTimeout('timedMsg()',1000);    
         }   
    	c--;
    }
    </script>
  </head>
  <body>
    <input type="hidden"  id="time"/> 
    <input type="button" id="button1" value="倒计时" onClick="timedMsg()"> 
 
 </body>
 </html>