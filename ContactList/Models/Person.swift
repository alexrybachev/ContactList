//
//  Person.swift
//  ContactList
//
//  Created by Aleksandr Rybachev on 14.04.2021.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    let image: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(firstNames.count, lastNames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phone: phones[index],
                email: emails[index],
                image: DataManager.shared.image
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
