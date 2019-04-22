//
//  ContactDetailsRoute.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import LightMVVMC

enum ContactDetailsRoute: Route {

    case contactList
        
    func getTransition() -> Transition {
            
        switch self {
        case .contactList:
            return NavigationTransition(.dismiss)
        }
    }
}
