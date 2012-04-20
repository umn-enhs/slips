modules = {
    application {
        resource url:'js/application.js'
    }
	timepicker {
		dependsOn 'jquery-ui'
		resource url:'js/jquery-ui-timepicker-addon.js', disposition: 'head'
		resource url:'js/timepicker.js'
	}
}
