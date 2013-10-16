import grailscm.Contact
import grailscm.Phone

class BootStrap {

    def init = { servletContext ->
        def akolesnik = new Contact(firstName: "Алексей", lastName: "Колесник").save(failOnError: true)
        def rminachetdinov = new Contact(firstName: "Ринат", lastName: "Миначетдинов").save(failOnError: true)

        akolesnik.addToPhones(new Phone(phoneType: "рабочий", phoneNumber: "(70)1800")).save(failOnError: true)
        akolesnik.addToPhones(new Phone(phoneType: "мобильный", phoneNumber: "+7(985)776-9394")).save(failOnError: true)

        rminachetdinov.addToPhones(new Phone(phoneType: "рабочий", phoneNumber: "(70)1816")).save(failOnError: true)
    }
    def destroy = {
    }
}
