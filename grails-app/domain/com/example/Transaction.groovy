package com.example

class Transaction implements Serializable{
	Integer type
	Double amount
	Date date
	String propertyID

    static constraints = {
    }
}
