//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Aleksandr Rybachev on 14.04.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var person = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let somePerson = person[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = somePerson.fullName
        content.image = UIImage(named: somePerson.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        let personSelected = person[indexPath.row]
//        performSegue(withIdentifier: "showDetails", sender: track)
    }
    
     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? PersonDetailViewController else { return }
        guard let personsIndex = tableView.indexPathForSelectedRow else { return }
        let personSelected = person[personsIndex.row]
        
        personDetailVC.personDetail = personSelected
     }
    
}
