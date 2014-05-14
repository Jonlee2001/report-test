
<%@ page import="com.example.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link action="download" controller="files">Download Template</g:link></li>
				<li><g:form action="upload" controller="Files" method="post" enctype="multipart/form-data">
				<label for="file">File:</label>
				<input type="file" name="file" id="file" />
				<input class="save" type="submit" value="Upload" />
			</g:form></li>
			</ul>
		</div>
		<div id="list-person" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="id" title="${message(code: 'person.id.label', default: 'Person Id')}" />
						
						<g:sortableColumn property="address2" title="${message(code: 'person.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="email1" title="${message(code: 'person.email1.label', default: 'Email1')}" />
					
						<g:sortableColumn property="email2" title="${message(code: 'person.email2.label', default: 'Email2')}" />
					
						<g:sortableColumn property="address1" title="${message(code: 'person.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'person.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="county" title="${message(code: 'person.county.label', default: 'County')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: personInstance, field: "address2")}</td>
						
						<td>${fieldValue(bean: personInstance, field: "email1")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "email2")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "address1")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "county")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
