package edu.umn.enhs

class OutSlipType {

	String name

	static transients = ['backgroundColor']

	String getBackgroundColor() {
		if (name =~ /Lunch/) {
			"white"
		} else {
			"lightblue"
		}
	}

	String toString() { name }

    static constraints = {
		name()
    }
}
