package edu.umn.enhs

class OutSlip {

	OutSlipType type

	Staff staffFor

	String usernameTakenBy
	Date dateTaken = new Date()

	Date startDate
	Date endDate
	Date dateReturned

	Boolean vacation = false
	Boolean sick = false
	Boolean other = false

	String comments

	Boolean voicemail = false

	String toString() {
		"${staff} is ${type} starting ${startDate}."
	}

    static constraints = {
		staffFor()
		usernameTakenBy()
		dateTaken()
		startDate()
		endDate(nullable:true)
		dateReturned(nullable:true)
		vacation()
		sick()
		other()
		comments(nullable:true)
		voicemail()
    }
}
