//
//  PersonDetailViewController.swift
//  ContactList
//
//  Created by Aleksandr Rybachev on 14.04.2021.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet var personsPhone: UILabel!
    @IBOutlet var personsEmail: UILabel!
    
    var personDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = personDetail.fullName
        personsPhone.text = "Phone: \(personDetail.phone)"
        personsEmail.text = "Email: \(personDetail.email)"
    }
    
}
