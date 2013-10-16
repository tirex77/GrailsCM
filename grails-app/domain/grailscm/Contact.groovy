package grailscm

class Contact {
	
	String firstName;
	String lastName;

    static hasMany = [phones: Phone]

    static constraints = {
    }
}
