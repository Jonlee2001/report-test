package com.example

import grails.transaction.Transactional
import org.docx4j.openpackaging.packages.WordprocessingMLPackage
import org.docx4j.wml.ObjectFactory

@Transactional
class Docx4jService {

    def serviceMethod() {

    }
	
	
   def exportWord(Object data) {
	 WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage()
	 ObjectFactory wmlObjectFactory = new ObjectFactory();
	 
	 def mainPart = wordMLPackage.getMainDocumentPart()
	
	 // create some styled heading...
	 mainPart.addStyledParagraphOfText("Title", "Person List")
	 mainPart.addStyledParagraphOfText("Subtitle", "Generated at " + Calendar.getInstance().getTime().toString())
	
	 // Add our list of assets to the document
	 data.each { entry ->
		 mainPart.addStyledParagraphOfText("Heading3", (String)entry.toString())
		 
		 entry.getProperties().each { 
			 mainPart.addParagraphOfText(it.getKey() + " : " + it.getValue()) 
		 }
	
	 }
	
	 // write out our word doc to disk
	 File file = File.createTempFile("wordexport-", ".docx")
	 wordMLPackage.save file
	
	 // and send it all back to the browser
	 
	 //response.outputStream << file.readBytes()
	 //file.delete()
	return file.readBytes()
	file.delete()
   }
}
