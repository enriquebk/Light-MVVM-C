//
//  Coordinator.swift
//  LightMVVMC
//
//  Created by Enrique Bermúdez on 1/31/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit

public protocol Presentable { }

extension UIViewController: Presentable {}

public class Coordinator<CoordinatorRoute: Route> {
    
    public var root: Presentable!
    
    init(root: Presentable) {
        self.root = root
    }
    
    public func navigate(to destination: CoordinatorRoute) {
        let transition = destination.getTransition()
        transition.execute(from: self.root)
    }
}

protocol CoordinatorManager {
    associatedtype CoordinatorType: Route
    var coordinator: Coordinator<CoordinatorType>! { get set }
}
