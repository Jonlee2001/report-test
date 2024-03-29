
<%@ page import="com.example.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="person.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${personInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.email1}">
				<li class="fieldcontain">
					<span id="email1-label" class="property-label"><g:message code="person.email1.label" default="Email1" /></span>
					
						<span class="property-value" aria-labelledby="email1-label"><g:fieldValue bean="${personInstance}" field="email1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.email2}">
				<li class="fieldcontain">
					<span id="email2-label" class="property-label"><g:message code="person.email2.label" default="Email2" /></span>
					
						<span class="property-value" aria-labelledby="email2-label"><g:fieldValue bean="${personInstance}" field="email2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="person.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${personInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="person.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${personInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="person.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${personInstance}" field="county"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.email1Type}">
				<li class="fieldcontain">
					<span id="email1Type-label" class="property-label"><g:message code="person.email1Type.label" default="Email1 Type" /></span>
					
						<span class="property-value" aria-labelledby="email1Type-label"><g:fieldValue bean="${personInstance}" field="email1Type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.email2Type}">
				<li class="fieldcontain">
					<span id="email2Type-label" class="property-label"><g:message code="person.email2Type.label" default="Email2 Type" /></span>
					
						<span class="property-value" aria-labelledby="email2Type-label"><g:fieldValue bean="${personInstance}" field="email2Type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="person.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${personInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.initial}">
				<li class="fieldcontain">
					<span id="initial-label" class="property-label"><g:message code="person.initial.label" default="Initial" /></span>
					
						<span class="property-value" aria-labelledby="initial-label"><g:fieldValue bean="${personInstance}" field="initial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="person.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${personInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phone1}">
				<li class="fieldcontain">
					<span id="phone1-label" class="property-label"><g:message code="person.phone1.label" default="Phone1" /></span>
					
						<span class="property-value" aria-labelledby="phone1-label"><g:fieldValue bean="${personInstance}" field="phone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phone1Type}">
				<li class="fieldcontain">
					<span id="phone1Type-label" class="property-label"><g:message code="person.phone1Type.label" default="Phone1 Type" /></span>
					
						<span class="property-value" aria-labelledby="phone1Type-label"><g:fieldValue bean="${personInstance}" field="phone1Type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phone2}">
				<li class="fieldcontain">
					<span id="phone2-label" class="property-label"><g:message code="person.phone2.label" default="Phone2" /></span>
					
						<span class="property-value" aria-labelledby="phone2-label"><g:fieldValue bean="${personInstance}" field="phone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phone2Type}">
				<li class="fieldcontain">
					<span id="phone2Type-label" class="property-label"><g:message code="person.phone2Type.label" default="Phone2 Type" /></span>
					
						<span class="property-value" aria-labelledby="phone2Type-label"><g:fieldValue bean="${personInstance}" field="phone2Type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phone3}">
				<li class="fieldcontain">
					<span id="phone3-label" class="property-label"><g:message code="person.phone3.label" default="Phone3" /></span>
					
						<span class="property-value" aria-labelledby="phone3-label"><g:fieldValue bean="${personInstance}" field="phone3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phone3Type}">
				<li class="fieldcontain">
					<span id="phone3Type-label" class="property-label"><g:message code="person.phone3Type.label" default="Phone3 Type" /></span>
					
						<span class="property-value" aria-labelledby="phone3Type-label"><g:fieldValue bean="${personInstance}" field="phone3Type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.postCode}">
				<li class="fieldcontain">
					<span id="postCode-label" class="property-label"><g:message code="person.postCode.label" default="Post Code" /></span>
					
						<span class="property-value" aria-labelledby="postCode-label"><g:fieldValue bean="${personInstance}" field="postCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.salutation}">
				<li class="fieldcontain">
					<span id="salutation-label" class="property-label"><g:message code="person.salutation.label" default="Salutation" /></span>
					
						<span class="property-value" aria-labelledby="salutation-label"><g:fieldValue bean="${personInstance}" field="salutation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.town}">
				<li class="fieldcontain">
					<span id="town-label" class="property-label"><g:message code="person.town.label" default="Town" /></span>
					
						<span class="property-value" aria-labelledby="town-label"><g:fieldValue bean="${personInstance}" field="town"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.unitNo}">
				<li class="fieldcontain">
					<span id="unitNo-label" class="property-label"><g:message code="person.unitNo.label" default="Unit No" /></span>
					
						<span class="property-value" aria-labelledby="unitNo-label"><g:fieldValue bean="${personInstance}" field="unitNo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
