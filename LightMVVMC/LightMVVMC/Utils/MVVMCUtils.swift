//
//  MVVMCUtils.swift
//  LightMVVMC
//
//  Created by Enrique Bermúdez on 1/31/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit

public extension MVVMView where Self: UIViewController, Self.ViewModelType: CoordinatorManager {
    
    /**
     Creates a `UIViewController` instance binded to a given `ViewModel`. The ViewModel's
     `Coordinator` is also instantiated.
     
     - parameter viewModel: The `ViewModel` that will be binded to the `UIViewController` instance.
     */
    static func instantiate(with viewModel: Self.ViewModelType) -> Self {
        
        let viewController = Self()
        viewController.bind(to: viewModel)
        viewController.viewModel.coordinator = Coordinator<Self.ViewModelType.CoordinatorType>(root: viewController)
        
        return viewController
    }
}
