//
//  ContactDetailsRoute.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import LightMVVMC

enum ContactDetailsRoute: Route {

    case dissmis
        
    func getTransition() -> Transition {
            
        switch self {
        case .dissmis:
            return NavigationTransition(.dismiss)
        }
    }
}
