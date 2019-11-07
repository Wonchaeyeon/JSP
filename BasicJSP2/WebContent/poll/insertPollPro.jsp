<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ page import="poll.PollDbBean" %>
<%@ page import="poll.PollBean" %>

<%
		PollDbBean pMgr=new PollDbBean();
		PollBean poll=new PollBean();     
		int active=0;   //설문 활성, 비활성
		
		//시작날짜의 월과 , 일이 1~9이면 앞에 0을 붙여준다. 
		String sm=request.getParameter("sdateM");
		if(sm.length()==1){
			sm="0"+sm;
			System.out.println(sm);
		}
		String sd=request.getParameter("sdateD");
		if(sd.length()==1){
			sd="0"+sd;
			System.out.println(sd);
		}
		String em=request.getParameter("edateM");
		if(em.length()==1){
			em="0"+em;
			System.out.println(em);
		}
		String ed=request.getParameter("edateD");
		if(ed.length()==1){
			ed="0"+ed;
			System.out.println(ed);
		}
		
				
		String sdate = request.getParameter("sdate")+ sm+sd;
		String edate = request.getParameter("edate")+em+ed;
		
		active=pMgr.isActive(sdate, edate);
		System.out.println("active:"+active);
		poll.setSdate(sdate);
		poll.setEdate(edate);		
		poll.setQuestion(request.getParameter("question"));
		
		poll.setAnswer1(request.getParameter("answer1"));
		poll.setAnswer2(request.getParameter("answer2"));
		poll.setAnswer3(request.getParameter("answer3"));
		poll.setAnswer4(request.getParameter("answer4"));		
		poll.setType(Integer.parseInt(request.getParameter("type")));
		poll.setActive(active);
		int result = pMgr.insertPoll(poll);
		
		String msg = "설문 추가에 실패 하였습니다.";
			String url = "insertPoll.jsp";
		if(result == 1){
	        msg = "설문이 추가 되었습니다.";
	        url="pollList.jsp";
		}
%>
<script>
   alert("<%=msg%>");
   location.href="<%=url%>";
</script>