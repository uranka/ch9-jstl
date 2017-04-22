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


<div>
	<b>Person has an array of dogs</b><br/>
	Name of the person: ${person.name}<br/>
	Names of the person's dogs:<br/>
	<c:forEach var='dog' items="${person.dogs}">
		${dog.name}<br/>
	</c:forEach>	
</div>

<h3>Using c:set with var</h3>
<div>
	<p>For setting/creating attribute variables in some scope (default is page scope).
	If the attribute named by <code>var</code> does not exist, it will be created,
	but only if <code>value</code> is not null.</p>
	<c:set var = "userLevel" value = "Cowboy" scope = "session" />
	userLevel set to <c:out value = "${userLevel}" />
	
	<p><code>value</code> doesn't have to be a String. It can be an object</p>
	<c:set var = "alphaDog" value = "${person.dogs[0]}" />
	alphaDog is <c:out value = "${person.dogs[0].name}" />
	
	<p>c:set with a body. The body is evaluated and used as the value of the variable<p>
	<c:set var = "userLevel" scope = "session" >
		Scheriff, Bartender, Cowgirl
	</c:set>
	userLevel set to <c:out value = "${userLevel}" />
</div>

<h3>Using c:set with target</h3>
<p>You cannot have both var and target attributes.
Target must evaluate to the object (bean or Map). If target is a Map then property is the key.
If target is a Java bean then  property is property of that bean.
If the target is not a Map or a bean, the Container throws an exception.</p>

<p><b>Working with Java bean</b></p>
<c:set target = "${person}" property = "name" value = "Milan" />
Name of the person is now: <c:out value = "${person.name}" />.

<c:set target = "${person}" property = "name" >
	Marinko 
</c:set>
Name of the person is now: <c:out value = "${person.name}" />

<p>Adding new property is impossible. Container throws an exception. </p>

<p><b>Working with Map</b></p>
<c:set target = "${petMap}" property = "dogName" value = "Lilica" />
Dog name is now: <c:out value = "${petMap.dogName}" />.

<p>Adding new entry in a petMap, key=dogNickname, value=Lilicica</p>
<c:set target = "${petMap}" property = "dogNickname" value = "Lilicica" />
Dog nickname is : <c:out value = "${petMap.dogNickname}" />.

</html></body>
	