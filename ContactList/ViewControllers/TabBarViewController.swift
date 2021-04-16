//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Aleksandr Rybachev on 16.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let sectionVC = viewControllers?.last as! SectionListTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
    
}
