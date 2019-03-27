//
//  Route.swift
//  LightMVVMC
//
//  Created by Enrique Bermúdez on 1/31/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

///
public protocol Route {

    /// Returns the `Transition` instance needed to execute to reach the route.
    func getTransition() -> Transition
}
