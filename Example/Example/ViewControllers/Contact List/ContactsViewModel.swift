//
//  ContactsViewModel.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import LightMVVMC

class ContactsViewModel: ViewModel, CoordinatorManager {
    
    var coordinator: Coordinator<ContactsRoute>!
    
    var contacts = BindableValue(Contact.dummyContacts())
    
    func getContactsCount() -> Int{
        return self.contacts.value.count
    }
    
    func contact(at index:Int) -> Contact? {
        
        guard index < contacts.value.count else {
            return nil
        }
        
        return contacts.value[index]
    }
    
    func selectContact(at index:Int){
        
        guard index < contacts.value.count else {
            return
        }
        
        self.coordinator.navigate(to: .userDetails(contacts.value[index]))
    }
    
}
