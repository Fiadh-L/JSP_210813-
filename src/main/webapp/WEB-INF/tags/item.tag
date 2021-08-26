<%@ tag language="java" body-content="scriptless" pageEncoding="UTF-8"%>

<%@ attribute name="width" %>
<%@ attribute name="border" %>
<%@ attribute name="bgcolor" %>
<%@ attribute name="cellspacing" %>
<%@ attribute name="cellpadding" %>

<%@ tag import="jspbook.ch10.product" %>
<jsp:useBean id="product" class="jspbook.ch10.product"/>


<h2><jsp:doBody/></h2> <%-- 본체 내용 출력 --%>
<table width="${width }" border="${border }" bgcolor="${bgcolor }" cellspacing="${cellspacing }" cellpadding="${cellpadding }">
<%
	for(String item:product.getProductList()){
		out.println("<tr ><td>"+item+"</td></tr>");
	}
%>
</table>

<%-- body-content="scriptless" : nbsp(공백)제거, 괄호 여닫기, El태그, JSP태그를 텍스트가 아닌 태그로 컴파일함
body-content="tagdependent" : 태그를 텍스트로 컴파일 함(텍스트 문서를 주로 사용할 때)
body-content="empty" : 태그 바디가 비어있을 때 명시해줌(바디가 비어있어야 한다) --%> 