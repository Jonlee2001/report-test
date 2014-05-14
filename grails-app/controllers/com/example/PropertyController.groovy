package com.example

import grails.converters.JSON

class PropertyController {
    static scaffold = true
	
	def pdfReport = {
		List properties = Property.list()
		
		//log.info 'Transactions: ' + transactions
		chain(controller:'jasper',action:'index',model:[data:properties],params:params)
		//render Property.list() as JSON
	}
}
