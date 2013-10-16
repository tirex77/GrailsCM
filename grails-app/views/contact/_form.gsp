<%@ page import="grailscm.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="contact.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${contactInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="contact.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${contactInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'phones', 'error')} ">
	<label for="phones">
		<g:message code="contact.phones.label" default="Phones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${contactInstance?.phones?}" var="p">
    <li><g:link controller="phone" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="phone" action="create" params="['contact.id': contactInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'phone.label', default: 'Phone')])}</g:link>
</li>
</ul>

</div>

