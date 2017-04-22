<!-- do ovoga se dolazi preko controllera Controller.java-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><body>
<h3>Using c:out</h3>

<div>
	<b>Tip of the day:</b><br/>
	<c:out value='${pageContent.currentTip}' escapeXml='true' /><br/>
	<c:out value='${pageContent.currentTip}' escapeXml='false' /><br/>
<!--	
	<c:out value='${pageContent1.currentTip}' escapeXml='true' /><br/>	
	<c:out value='${pageContent1.currentTip}' escapeXml='false' /><br/>
-->	
</div>

<div>
	<b>cout's default value</b><br/>
	Hello <c:out value = '${user}' default = 'guest' />.
</div>

<h3>Using c:forEach</h3>
<div>
	<b>Song list:</b><br/>
	<c:forEach var='song' items="${songList}" varStatus="status">
		${status.count}. - ${song}<br/>
	</c:forEach>
</div>
</html></body>
	