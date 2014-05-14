<%@ page import="com.example.Transaction" %>



<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="transaction.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: transactionInstance, field: 'amount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="transaction.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${transactionInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'propertyID', 'error')} required">
	<label for="propertyID">
		<g:message code="transaction.propertyID.label" default="Property ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="propertyID" required="" value="${transactionInstance?.propertyID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="transaction.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="type" type="number" value="${transactionInstance.type}" required=""/>

</div>

