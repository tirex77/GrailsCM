<!DOCTYPE html>

	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		%{--<div class="navbar navbar-static-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <g:link class="brand" uri="/">Менеджер контактов</g:link>
                    <div class="nav-collapse">
                        <ul class="nav nav-pills pull-right">                                  
		                    <li class="active"><a href="#">Главная</a></li>
		                    <li><a href="#">Проекты</a></li>
		                    <li><a href="#">Службы</a></li>
		                    <li><a href="#">Загрузить</a></li>
		                    
		                    <li><a href="#">Помощь</a></li>                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>--}%
		<g:layoutBody/>

        <g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
