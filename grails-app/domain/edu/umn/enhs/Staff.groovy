package edu.umn.enhs

class Staff {

	String username
	String fullName

	String toString() { fullName ?: username }

    static constraints = {
		username(nullable:true)
		fullName(nullable:true)
    }
}
