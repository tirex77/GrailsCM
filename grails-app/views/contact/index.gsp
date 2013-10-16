
<%@ page import="grailscm.Contact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <r:require modules="bootstrap"/>
	</head>
	<body>
    <section>
        <div class="container">
            <div class="row">
                <header class="page-header">
                    <h3>Contact <small class="lead">Phone List</small> </h3>
                </header>
                <div class="span3">
                    <g:link class="btn btn-block btn-link" action="create">
                        Создать новый контакт
                    </g:link>
                </div>
                <div class="well">
                    <ul class="nav nav-list">
                        <li class="nav-header">Контакты</li>
                        <li class="active">
                            <a id="view-all" href="#">
                                <i class="icon-chevron-right pull-right"></i>
                                <b>View All</b>
                            </a>
                        </li>
                        <g:each in="${ contacts }" var="contact" status="i">
                            <li>
                                <a href="#Contact-${contact.id}">
                                    <i class="icon-chevron-right pull-right"/>
                                    ${"${   contact.firstName   } ${    contact.lastName}"}
                                </a>

                            </li>
                        </g:each>
                    </ul>
                </div>
            </div>

        </div>
    </section>


	</body>
</html>
