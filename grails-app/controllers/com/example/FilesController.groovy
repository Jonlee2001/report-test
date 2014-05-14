package com.example

import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.grails.plugins.excelimport.*
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import pl.touk.excel.export.WebXlsxExporter

import com.example.Person.EmailType;
import com.example.Person.PhoneType;

import grails.converters.JSON

class FilesController {
 def excelImportService

  def index() {
 }
 
  def upload() {
	  def headers = grailsApplication.getDomainClass('com.example.Person').persistentProperties.collect { it.name }
	  def columns = [:]
	  def letter = 'A'
	  headers.each{ field ->
		  columns.put(letter , field)
		  letter++
	  }
  Map CONFIG_BOOK_COLUMN_MAP = [
     sheet:'Report',
     startRow: 1,
     columnMap: /* [
      Col, Map-Key
      	'A' : 'salutation',
		'B' : 'firstName',
		'C' : 'lastName',
		'D' : 'initial',
		'E' : 'unitNo',
		'F' : 'address1',
		'G' : 'address2',
		'H' : 'town',
		'I' : 'county',
		'J' : 'postCode',
		'K' : 'country',
		'L' : 'phone1',
		'M' : 'phone2',
		'N' : 'phone3',
		'O' : 'phone1Type',
		'P' : 'phone2Type',
		'Q' : 'phone3Type',
		'R' : 'email1',
		'S' : 'email2',
		'T' : 'email1Type',
		'U' : 'email2Type'
     ]*/ columns
    ]


  MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
  CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("file");

  Workbook workbook = WorkbookFactory.create(file.inputStream)
 //Iterate through bookList and create/persists your domain instances
  def personList = excelImportService.columns(workbook, CONFIG_BOOK_COLUMN_MAP)
  	personList.each { Map personParamMap ->
    new Person (personParamMap).save(flush: true, failOnError: true)
		  
  }
	  redirect (controller: 'person', action: 'index')
	  //render columns
 }
  
  def download(){
	 def headers = grailsApplication.getDomainClass('com.example.Person').persistentProperties.collect { it.name }
	  //def withProperties = ['name', 'description', 'validTill', 'productNumber', 'price.value']
	  
	  new WebXlsxExporter().with {
		  setResponseHeaders(response)
		  fillHeader(headers)
		  //add(products, withProperties)
		  save(response.outputStream)
	  }
	  //render headers as JSON
  }
  
}
