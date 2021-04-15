//
//  PersonModel.swift
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
        [
            Person(firstName: "Sam", lastName: "Houston", phone: "784649379", email: "abab@mail.ru", image: "person-100"),
            Person(firstName: "Don", lastName: "Pitt", phone: "850264459", email: "cdgdn@mail.ru", image: "person-100"),
            Person(firstName: "Gonzales", lastName: "Cruze", phone: "038565902", email: "ghgkdfkl@gmail.com", image: "person-100"),
            Person(firstName: "Artur", lastName: "Jolly", phone: "746585692", email: "ghyri@gmail.com", image: "person-100"),
            Person(firstName: "Maria", lastName: "Depp", phone: "746582091", email: "aopgjg@yandex.ru", image: "person-100"),
            Person(firstName: "Alex", lastName: "Spilberg", phone: "846572392", email: "porpr@yandex.ru", image: "person-100"),
            Person(firstName: "Bob", lastName: "Reynolds", phone: "382465783", email: "prhgnk@hotmail.com", image: "person-100"),
            Person(firstName: "George", lastName: "Leto", phone: "092823732", email: "lkjk@hotmail.com", image: "person-100"),
            Person(firstName: "Miley", lastName: "Zima", phone: "123456789", email: "yitotj@mail.ru", image: "person-100"),
            Person(firstName: "John", lastName: "Franko", phone: "987654321", email: "rrrr@rambler.ru", image: "person-100")
        ]
    }
    
}



//struct Person {
//    let firstName: [DataManager]
//    let lastName: [DataManager]
//    let phone: [DataManager]
//    let email: [DataManager]
//    let image: String
//
//    var fullName: String {
//        "\(firstName) \(lastName)"
//    }
//}
//
//extension Person {
//    static func getPersonList() -> [Person] {
//        [
//            Person(
//                firstName: [
//                ],
//                lastName: <#T##DataManager#>,
//                phone: <#T##DataManager#>,
//                email: <#T##DataManager#>,
//                image: <#T##DataManager#>
//            ),
//            Person(firstName: "Don", lastName: "Pitt", phone: "850264459", email: "cdgdn@mail.ru", image: "person-100"),
//            Person(firstName: "Gonzales", lastName: "Cruze", phone: "038565902", email: "ghgkdfkl@gmail.com", image: "person-100"),
//            Person(firstName: "Artur", lastName: "Jolly", phone: "746585692", email: "ghyri@gmail.com", image: "person-100"),
//            Person(firstName: "Maria", lastName: "Depp", phone: "746582091", email: "aopgjg@yandex.ru", image: "person-100"),
//            Person(firstName: "Alex", lastName: "Spilberg", phone: "846572392", email: "porpr@yandex.ru", image: "person-100"),
//            Person(firstName: "Bob", lastName: "Reynolds", phone: "382465783", email: "prhgnk@hotmail.com", image: "person-100"),
//            Person(firstName: "George", lastName: "Leto", phone: "092823732", email: "lkjk@hotmail.com", image: "person-100"),
//            Person(firstName: "Miley", lastName: "Zima", phone: "123456789", email: "yitotj@mail.ru", image: "person-100"),
//            Person(firstName: "John", lastName: "Franko", phone: "987654321", email: "rrrr@rambler.ru", image: "person-100")
//        ]
//    }
//}
