package edu.umn.enhs

class OutSlip {

	OutSlipType type

	Staff staffFor

	Staff staffTakenBy
	Date dateTaken = new Date()

	Date startDate = new Date()
	Date endDate
	Date dateReturned

	OutSlipWhy why

	String comments

	Boolean voicemail = false

	String toString() {
		"${staff} is ${type} starting ${startDate}."
	}

    static constraints = {
		type()
		staffFor()
		staffTakenBy()
		dateTaken()
		startDate()
		endDate(nullable:true)
		dateReturned(nullable:true)
		why(nullable: true)
		comments(nullable:true)
		voicemail()
    }

	static mapping = {
		sort type:'desc', endDate: 'desc'
	}
}
