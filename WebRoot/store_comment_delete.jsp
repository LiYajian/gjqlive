<%@page language="java" contentType="text/html;charset=gb2312"%>
<%@page import="java.util.Iterator"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="org.springframework.stereotype.Controller"%>
<%@page import="org.springframework.ui.ModelMap"%>
<%@page import="org.springframework.web.bind.annotation.PathVariable"%>
<%@page import="org.springframework.web.bind.annotation.RequestMapping"%>
<%@page import="org.springframework.web.bind.annotation.RequestMethod"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.List"%>
<%@page import="com.li.entity.Comment"%>
<%@page import="com.li.dao.*"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<html>
<%
        String PID = request.getParameter("PID");
        String SID = request.getParameter("SID");
        int ID1 = Integer.parseInt(PID);
		String toWhere=request.getParameter("toWhere");
		String toPage=request.getParameter("toPage");
        if(PID.equals("")){//idΪ��
%>
<SCRIPT>
alert("����Ϊ�գ�");
history.back();
</SCRIPT>


<%
        }//idΪ��
        else{//id��Ϊ��
            /*********��Ҫ�滻***********/
           StoreDao md1=new StoreDao(); 
           md1.removeComment(ID1);
%>
<SCRIPT>alert("ɾ���ɹ���");</SCRIPT>
<meta http-equiv="refresh" content="0;url=store_comment.jsp?toPage=<%=toPage%>&toWhere=<%=toWhere%>&PID=<%=SID %>">
<%
        }//id��Ϊ��
%>

</html>