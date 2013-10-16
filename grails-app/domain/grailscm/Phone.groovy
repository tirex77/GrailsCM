package grailscm

class Phone {

    String phoneType;
    String phoneNumber;

    static belongsTo = [contact: Contact]

    static constraints = {
    }
}
