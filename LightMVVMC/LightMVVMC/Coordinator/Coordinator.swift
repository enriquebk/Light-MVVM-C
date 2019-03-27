//
//  Coordinator.swift
//  LightMVVMC
//
//  Created by Enrique Bermúdez on 1/31/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit

/// `Presentable` instances are instances that can be presented by a `Coordinator`.
public protocol Presentable { }

extension UIViewController: Presentable {}

/// `Coordinator` is an instance that can navigate to diferent routes.
public class Coordinator<CoordinatorRoute: Route> {
    
    /// Coordinator's starting point.
    public var root: Presentable!
    
    ///
    init(root: Presentable) {
        self.root = root
    }
    
    /**
     Tells the `Coordinator` instance to navigate to a certain route.
     The `Coordinator` will first get the `Transition` of the `Route` and then it will execute that `Transition`.
     - parameter destination: Destination `Route`.
     */
    public func navigate(to destination: CoordinatorRoute) {
        let transition = destination.getTransition()
        transition.execute(from: self.root)
    }
}

///`CoordinatorManager` is an instance that contains its own `Coordinator`.
public protocol CoordinatorManager {
    
    /// :nodoc:
    associatedtype CoordinatorType: Route
    
    /// CoordinatorManager's coordinator instance.
    var coordinator: Coordinator<CoordinatorType>! { get set }
}
