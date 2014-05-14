import com.example.*
import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
	
		def prop1 = new Property(propertyId: 'THT-LG-001', owner: 1).save()
		def prop2 = new Property(propertyId: 'THT-LG-002', owner: 2).save()
		
		def tran1 = new Transaction(amount: 1000, date: new SimpleDateFormat("yyyy-MM-dd").parse("2014-02-14"), type: 8, propertyId: 'THT-LG-001').save()
		def tran2 = new Transaction(amount: 123.45, date: new SimpleDateFormat("yyyy-MM-dd").parse("2014-03-14"), type: 7, propertyId: 'THT-LG-001').save()
		def tran3 = new Transaction(amount: 123.45, date: new SimpleDateFormat("yyyy-MM-dd").parse("2014-04-14"), type: 7, propertyId: 'THT-LG-001').save()
		
    }
    def destroy = {
    }
}
