<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="galleryDAO.GalleryDAO" %>
<%@ page import="galleryDTO.GalleryVO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="gallery" class="galleryDTO.GalleryVO" scope="page"/>
<jsp:setProperty name="gallery" property="title" />
<jsp:setProperty name="gallery" property="writer" />
<jsp:setProperty name="gallery" property="contents" />
<jsp:setProperty name="gallery" property="fileName" />
<jsp:setProperty name="gallery" property="fileSize" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성 확인 페이지</title>
</head>
<body>
<%
	String uploadPath = "C:\\Users\\DongH\\git\\GalleryBoard\\GallerySite\\src\\main\\webapp\\Image";
	int maxFileSize = 1024 * 1024 * 20;
	String encType = "UTF-8";
	MultipartRequest multi = 
			new MultipartRequest(request, uploadPath, maxFileSize, encType, 
					new DefaultFileRenamePolicy());
	String title = multi.getParameter("title");
	String writer = "관리자";
	String contents = multi.getParameter("contents");
	String fileName = multi.getFilesystemName("fileName");
	File file = multi.getFile("fileName");
	long fileSize = 0;
	if(file != null) {
		fileSize = file.length();
	}
	
	GalleryVO galleryVO = new GalleryVO();
	GalleryDAO galleryDAO = new GalleryDAO();
	
	galleryVO.setTitle(title);
	galleryVO.setWriter(writer);
	galleryVO.setContents(contents);
	galleryVO.setFileName(fileName);
	galleryVO.setFileSize(fileSize);
	
	int flag = galleryDAO.recordInsert(galleryVO);

	if (flag == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글쓰기에 성공했습니다.')");
		script.println("location.href = './GalleryPage.jsp'");
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글쓰기에 실패했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>