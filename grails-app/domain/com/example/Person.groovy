package com.example

class Person {
	String salutation
	String firstName
	String lastName
	String initial
	Integer unitNo
	String address1
	String address2
	String town
	String county
	String postCode
	String country = 'GB'
	
	String phone1
	String phone2
	String phone3
	
	PhoneType phone1Type
	PhoneType phone2Type
	PhoneType phone3Type
	
	String email1
	String email2
	
	EmailType email1Type
	EmailType email2Type
	
    static constraints = {
		address2 nullable: true
		email1 email : true, nullable: true
		email2 email : true, nullable: true
    }
	
	private enum PhoneType{
		HOME('Home'),
		WORK('Work'),
		MOBILE('Mobile')
		
		final String value
		
			PhoneType(String value) { this.value = value }
		
			String toString() { value }
			String getKey() { name() }
	}
	
	private enum EmailType{
		PERSONAL('Personal'),
		WORK('Work')
		
		final String value
		
			EmailType(String value) { this.value = value }
		
			String toString() { value }
			String getKey() { name() }
	}
	
	String toString(){
		return salutation + ". " + firstName + " " + initial + " " + lastName
	}
}
