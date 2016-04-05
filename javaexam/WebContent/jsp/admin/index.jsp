<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员主页</title>
</head>
<body>
   <center>管理员主页面</center>
   <a href="${pageContext.request.contextPath }/chapter/chapter.action">章节管理</a>
  
   <a href="${pageContext.request.contextPath }/chapter/findChapterById.action?id=1">根据id查看章节</a>
   <a href="${pageContext.request.contextPath }/chapter/findAllChapter.action">查看所有章节</a>
   
   <a href="${pageContext.request.contextPath }/chapter/addChapter.action">添加章节</a>
   <a href="${pageContext.request.contextPath }/chapter/deleteChapter.action">删除章节</a>
   <a href="${pageContext.request.contextPath }/chapter/updateChapter.action">修改章节内容</a>
</body>
</html>