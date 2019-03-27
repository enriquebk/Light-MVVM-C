//
//  ContactsViewController.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import UIKit
import LightMVVMC

class ContactsViewController: UITableViewController, MVVMView {

    var viewModel: ContactsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Contacts"
    }
    
    func bindViewModel() {
        
        viewModel.contacts.bind {  [unowned self] _ in
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel.getContactsCount()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: String(describing: UITableViewCell.self))
        
        if let user = self.viewModel.contact(at: indexPath.row){
            cell.textLabel?.text = user.name
        }

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel.selectContact(at: indexPath.row)
    }

}
