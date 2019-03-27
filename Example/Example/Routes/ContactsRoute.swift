//
//  ContactsRoute.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import LightMVVMC

enum ContactsRoute : Route {
    
    case userDetails(Contact)
    
    func getTransition() -> Transition {
        
        switch self {
        case .userDetails(let user):
            
            let userDetailsViewModel = ContactDetailsViewModel(with: user)
            let userDetailsViewController = ContactDetailsViewController.instantiate(with: userDetailsViewModel)
            let navigationController = UINavigationController(rootViewController: userDetailsViewController)
            
            return NavigationTransition(.present(navigationController))
        }
    }
}
