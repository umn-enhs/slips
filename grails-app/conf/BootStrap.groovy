import edu.umn.enhs.OutSlipType
import edu.umn.enhs.OutSlipWhy

class BootStrap {

    def init = { servletContext ->
		def outOfOffice = OutSlipType.findOrSaveWhere(name:'Out of the Office')
		def outToLunch = OutSlipType.findOrSaveWhere(name:'Out to Lunch')

		def lunch = OutSlipWhy.findOrSaveWhere(name:"Lunch")
		def sick = OutSlipWhy.findOrSaveWhere(name:"Sick")
		def vacation = OutSlipWhy.findOrSaveWhere(name:"Vacation")
		def other = OutSlipWhy.findOrSaveWhere(name:"Other")
    }
    def destroy = {
    }
}
