package edu.umn.enhs

class StaffService {

	def springSecurityService

    def create() {
		def username = springSecurityService?.authentication?.username
		Staff.findOrSaveWhere(username: username)
    }
}
