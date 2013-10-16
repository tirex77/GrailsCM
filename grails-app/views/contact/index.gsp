
%{--<%@ page import="grailscm.Contact" %>--}%
<!DOCTYPE html>
<html>
	<head>
		<title>Менеджер контактов</title>
        <meta name="layout" content="main">
		%{--<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />--}%
		%{--<title><g:message code="default.list.label" args="[entityName]" /></title>--}%
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
                                <i class="icon-chevron-right pull-left"></i>
                                <b>View All</b>
                            </a>
                        </li>
                        <g:each in="${ contacts }" var="contact" status="i">
                            <li>
                                <a href="#Contact-${contact.id}">
                                    <i class="icon-chevron-right pull-left"></i>
                                    ${"${ contact.firstName } ${ contact.lastName }"}
                                </a>

                            </li>
                        </g:each>
                    </ul>
                </div>
            </div>
        <div class="span9">
            <g:each in="${ contacts }" var="contact" status="i">
                <div id="Contact-${ contact.id}" class="well well-small">
                    <table class="table table-bordered table-striped">
                        <caption>
                            ${ "${ contact.firstName } ${ contact.lastName }" }: Список тел. номеров
                        </caption>
                        <thead>
                        <tr>
                            <th>Тип</th>
                            <th>Номер</th>
                            <th>Опции</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${ contact.phones }" var="phone">
                            <tr>
                                <td>${ phone.phoneType}</td>
                                <td>${ phone.phoneNumber}</td>
                                <td><g:link class="btn btn-small badge-inverse" controller="phone" action="edit" id="${phone.id}">
                                    <i class="icon-edit icon-white"></i>
                                </g:link>
                                </td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                    <div class="btn-group">
                        <g:link class="btn btn-primary" action="edit" id="${contact.id}">
                            <i class="icon-edit icon-white"></i>Редактировать
                        </g:link>
                    </div>
                </div>
            </g:each>
        </div>
        </div>
    </section>
    <g:javascript>
        $('ul.nav > li > a').click(function(e){
            if($(this).attr('id') == "view-all") {
                $('div[id*="Contact-]').fadeIn('fast');
            }else{
                var aRef = $(this);
                var tablesToHide = $('div[id*="Contact-"]:visible').length > 1
                        ? $('div[id*="Contact-"]:visible') : $($('.nav > li[class="active"] > a').attr('href'));
                tablesToHide.hide();
                $(aRef.attr('href')).fadeIn('fast');
            }
            $('.nav > li[class="active"]').removeClass('active');
            $(this).parent().addClass('active');
        });
    </g:javascript>


	</body>
</html>
