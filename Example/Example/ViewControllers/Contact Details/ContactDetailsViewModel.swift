//
//  ContactDetailsViewModel.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import UIKit
import LightMVVMC

class ContactDetailsViewModel: ViewModel, CoordinatorManager {
    
    public typealias Property = (key:String,value:String)
    
    var coordinator: Coordinator<ContactDetailsRoute>!
    
    var contact:BindableValue<Contact>!
    
    var details:[Property] {
        get {
            return [("Name", self.contact.value.name),
                    ("Phone", self.contact.value.phone),
                    ("Address", self.contact.value.address)]
        }
    }
    
    init(with contact:Contact) {
        
        self.contact = BindableValue(contact)
    }
    
    @objc func dismiss(){
        self.coordinator.navigate(to: .contactList)
    }
    
}
