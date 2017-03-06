package bug327

import grails.validation.Validateable

class HomeController {

    def search() {
        [searchCommand: new SearchCommand()]
    }
}

class SearchCommand implements Validateable {
    String caseNumber

    static constraints = {
        caseNumber(nullable: false, matches: /[0-9]+/)
    }
}