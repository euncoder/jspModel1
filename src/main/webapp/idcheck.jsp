<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 	String id = request.getParameter("id");
 		System.out.println("id:" + id);
 	
 		MemberDao dao = MemberDao.getInstance();
 		boolean b = dao.getId(id);
 		
 		if(b == true){ //id있음 no 없음 yes
 			out.println("NO");
 		}else{
 			out.println("YES");
 			
 		}
 %>   