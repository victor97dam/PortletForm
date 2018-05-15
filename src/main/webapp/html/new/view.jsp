<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<portlet:defineObjects />

This is the <b>StudentFormulario</b> portlet in View mode.
<liferay-ui:success key="success" message="Bien hecho máquina!"
/>
<liferay-ui:error key="error" message="No dejes campos vacios!"
/>
<portlet:renderURL var="viewURL">
    <portlet:param name="mvcPath" value="/html/student/view.jsp"></portlet:param>
</portlet:renderURL>
<portlet:actionURL name="addStudent" var="addStudent"/>
<form name="Student" id="myform" action="<%=addStudent%>" method="post" >
<label>nombre</label>
	<input type="text" id="name" name="<portlet:namespace/>name"/>
	<label>padre</label>
	<input type="text" id="father" name="<portlet:namespace/>father"/>
	<label>madre</label>
	<input type="text" id="mother" name="<portlet:namespace/>mother"/>
	<label>edad</label>
	<input type="number" id="age" name="<portlet:namespace/>age"/><br/><br/>
	<div>
	<%=renderRequest.getParameter("accion")%>
	</div>
	
	<br/><br/>
	
	<button type="submit" id="btnSubmit9" name="btnSubmit9">Boton
	</button>
	
	
	</form>