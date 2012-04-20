<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="https://www1.umn.edu/twincities/favicon.ico"></link>
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<r:require modules="jquery-ui, timepicker"/>
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
		<header>
			<nav id="campus-links">
			<h2>Campuses:</h2>
			<ul>
				<li><a href="http://www1.umn.edu/twincities/">Twin Cities</a></li>
				<li><a href="http://www.crk.umn.edu">Crookston</a></li>
				<li><a href="http://www.d.umn.edu">Duluth</a></li>
				<li><a href="http://www.morris.umn.edu/index.php">Morris</a></li>
				<li><a href="http://www.r.umn.edu">Rochester</a></li>
				<li><a href="http://www1.umn.edu/twincities/campuses/index.html">Other Locations</a></li>
			</ul>
			</nav>
			<div class="mast">
				<a href="http://www1.umn.edu/twincities/" class="mast-banner"><span></span>Go to the U of M home page</a>
				<nav class="quick-links">
				<ul>
					<li class="onestop"><a href="http://onestop.umn.edu/staff/index.html">Staff One Stop</a></li>
					<li class="myu"><a href="https://www.myu.umn.edu/">myU</a></li>
				</ul>
				</nav>

				<form action="//search.umn.edu/s/" method="get" name="mast-search" class="mast-search" title="Search Websites and People">
					<input type="hidden" name="s" value="facstaff-brief-icpeople-icfeatures" />
					<label for="search_field">Search text</label>
					<input type="text" class="mast-search-text" name="q" id="search_field" placeholder="Search Websites and People" />
					<input type="image" value="Search" class="search_btn" alt="Submit Search" src="http://www1.umn.edu/prod/fragments/ur_common/assets/img/search_button.gif" />
				</form>
			</div>
		</header>

		<g:layoutBody/>

		<footer>
		<nav id="footer-links">
		<h2>Twin Cities Campus:</h2>
		<ul>
			<li><a href="http://www.umn.edu/twincities/maps/index.html">Maps&nbsp;&amp;&nbsp;Directions</a></li>
			<li><a href="http://www1.umn.edu/pts/">Parking&nbsp;&amp;&nbsp;Transportation</a></li>
			<li><a href="http://www.umn.edu/twincities/contact/">Contact&nbsp;U&nbsp;of&nbsp;M</a></li>
			<li><a href="http://www1.umn.edu/twincities/privacy/">Privacy</a></li>
			<li><a href="http://www.directory.umn.edu/">Directories</a></li>
		</ul>
		</nav>

		<h2 class="way-off">Boilerplate</h2>
		<ul id="copyright-updated">
			<li>&copy; 2011-2012 Regents of the University of Minnesota. All rights reserved.</li>
			<li>The University of Minnesota is an equal opportunity educator and employer.</li>
			<li>Information current as of April 20, 2012</li>
		</ul>
		</footer>

		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
        <r:layoutResources />
	</body>
</html>
