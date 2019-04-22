//
//  ContactDetailsViewController.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import UIKit
import LightMVVMC

class ContactDetailsViewController: UITableViewController, MVVMView {
    
    var viewModel: ContactDetailsViewModel!
    
    var exitButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Details"
        self.exitButton.setTitle("OK", for: .normal)
        self.navigationItem.setRightBarButton(UIBarButtonItem(customView: self.exitButton),
                                              animated: false)
    }
    
    func bindViewModel() {
        self.viewModel.contact.bind {  [unowned self] _ in
            self.tableView.reloadData()
        }
        
        self.exitButton.addTarget(self.viewModel,
                                  action: #selector(ContactDetailsViewModel.dismiss),
                                  for: .touchUpInside)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel.details.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .value1, reuseIdentifier: String(describing: UITableViewCell.self))
        
        let property = self.viewModel.details[indexPath.row]
        
        cell.textLabel?.text = property.key
        cell.detailTextLabel?.text = property.value
        
        return cell
    }
}
