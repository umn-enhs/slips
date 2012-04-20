package edu.umn.enhs

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ALL'])
class BoardController {

	def staffService

    def index() {
		staffService.create()

		[ outSlipInstanceList: OutSlip.list() ]
	
	}
}
