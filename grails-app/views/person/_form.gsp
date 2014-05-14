<%@ page import="com.example.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="person.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${personInstance?.address2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email1', 'error')} ">
	<label for="email1">
		<g:message code="person.email1.label" default="Email1" />
		
	</label>
	<g:field type="email" name="email1" value="${personInstance?.email1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email2', 'error')} ">
	<label for="email2">
		<g:message code="person.email2.label" default="Email2" />
		
	</label>
	<g:field type="email" name="email2" value="${personInstance?.email2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address1', 'error')} required">
	<label for="address1">
		<g:message code="person.address1.label" default="Address1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address1" required="" value="${personInstance?.address1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="person.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${personInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'county', 'error')} required">
	<label for="county">
		<g:message code="person.county.label" default="County" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="county" required="" value="${personInstance?.county}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email1Type', 'error')} required">
	<label for="email1Type">
		<g:message code="person.email1Type.label" default="Email1 Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="email1Type" from="${com.example.Person$EmailType?.values()}" keys="${com.example.Person$EmailType.values()*.name()}" required="" value="${personInstance?.email1Type?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email2Type', 'error')} required">
	<label for="email2Type">
		<g:message code="person.email2Type.label" default="Email2 Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="email2Type" from="${com.example.Person$EmailType?.values()}" keys="${com.example.Person$EmailType.values()*.name()}" required="" value="${personInstance?.email2Type?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${personInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'initial', 'error')} required">
	<label for="initial">
		<g:message code="person.initial.label" default="Initial" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="initial" required="" value="${personInstance?.initial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phone1', 'error')} required">
	<label for="phone1">
		<g:message code="person.phone1.label" default="Phone1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone1" required="" value="${personInstance?.phone1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phone1Type', 'error')} required">
	<label for="phone1Type">
		<g:message code="person.phone1Type.label" default="Phone1 Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="phone1Type" from="${com.example.Person$PhoneType?.values()}" keys="${com.example.Person$PhoneType.values()*.name()}" required="" value="${personInstance?.phone1Type?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phone2', 'error')} required">
	<label for="phone2">
		<g:message code="person.phone2.label" default="Phone2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone2" required="" value="${personInstance?.phone2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phone2Type', 'error')} required">
	<label for="phone2Type">
		<g:message code="person.phone2Type.label" default="Phone2 Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="phone2Type" from="${com.example.Person$PhoneType?.values()}" keys="${com.example.Person$PhoneType.values()*.name()}" required="" value="${personInstance?.phone2Type?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phone3', 'error')} required">
	<label for="phone3">
		<g:message code="person.phone3.label" default="Phone3" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone3" required="" value="${personInstance?.phone3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phone3Type', 'error')} required">
	<label for="phone3Type">
		<g:message code="person.phone3Type.label" default="Phone3 Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="phone3Type" from="${com.example.Person$PhoneType?.values()}" keys="${com.example.Person$PhoneType.values()*.name()}" required="" value="${personInstance?.phone3Type?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'postCode', 'error')} required">
	<label for="postCode">
		<g:message code="person.postCode.label" default="Post Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postCode" required="" value="${personInstance?.postCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'salutation', 'error')} required">
	<label for="salutation">
		<g:message code="person.salutation.label" default="Salutation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="salutation" required="" value="${personInstance?.salutation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'town', 'error')} required">
	<label for="town">
		<g:message code="person.town.label" default="Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="town" required="" value="${personInstance?.town}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'unitNo', 'error')} required">
	<label for="unitNo">
		<g:message code="person.unitNo.label" default="Unit No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unitNo" type="number" value="${personInstance.unitNo}" required=""/>

</div>

