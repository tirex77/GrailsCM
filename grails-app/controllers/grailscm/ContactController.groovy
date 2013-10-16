package grailscm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class ContactController {

    def scaffold = Contact

    def index = {
        def contacts = Contact.list([sort: "lastName", order:"asc"])

        return [contacts: contacts]
    }
}
