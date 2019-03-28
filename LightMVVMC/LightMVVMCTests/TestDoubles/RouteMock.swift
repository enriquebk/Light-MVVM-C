//
//  RouteMock.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

@testable import LightMVVMC

class RouteMock: Route {
    var didCallGetTransition = false
    var returnedTransition: TransitionMock?
    
    func getTransition() -> Transition {
        didCallGetTransition = true
        let transition = TransitionMock()
        returnedTransition = transition
        return transition
    }
}
