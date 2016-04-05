<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   
    <script type="text/javascript">   
       var strPath="C:\Windows\System32\shutdown.exe";
       function Run(strPath){          
	      try{           
		    var objShell = new ActiveXObject("wscript.shell");           
		    objShell.Run(strPath);          
		    objShell = null;          
	      }catch(e){          
		
	      }      
       }     
    </script>  
</head>
<body>
   <input type="button"  value="关机" onclick="Run()"/>
   

</body>
</html>