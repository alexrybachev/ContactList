//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Aleksandr Rybachev on 14.04.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let somePerson = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = somePerson.fullName
        content.image = UIImage(named: somePerson.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
     // MARK: - Navigation
    
     /*
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDetailVC = segue.destination as! PersonDetailViewController
        guard let personsIndex = tableView.indexPathForSelectedRow else { return }
        let personSelected = persons[personsIndex.row]
        
        personDetailVC.personDetail = personSelected
     }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let personDetailVC = segue.destination as! PersonDetailViewController
            personDetailVC.personDetail = persons[indexPath.row]
        }
    }
}
