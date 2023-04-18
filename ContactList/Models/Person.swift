//
//  Person.swift
//  ContactList
//
//  Created by Igor on 18.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    var fullName: String {
        name + " " + surname
    }
    
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        let data = DataStore()
        var mixNames = data.names.shuffled()
        var mixSurnames = data.surnames.shuffled()
        var mixMails = data.emails.shuffled()
        var mixNumbers = data.phoneNumbers.shuffled()
        
        for _ in 1...mixNames.count {
            let person = Person(
                name: mixNames.last ?? "",
                surname: mixSurnames.last ?? "",
                email: mixMails.last ?? "",
                phone: mixNumbers.last ?? ""
            )
            persons.append(person)
            
            mixNames.removeLast()
            mixSurnames.removeLast()
            mixMails.removeLast()
            mixNumbers.removeLast()
        }
        return persons
    }
}
