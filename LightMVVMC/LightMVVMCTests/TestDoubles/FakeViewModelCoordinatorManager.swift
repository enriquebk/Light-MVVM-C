//
//  FakeViewModelCoordinator.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit
@testable import LightMVVMC

class FakeRoute: Route {
    func getTransition() -> Transition {
        return NavigationTransition(.noTransition)
    }
}

class FakeViewModelCoordinatorManager: ViewModel, CoordinatorManager {
    
    var coordinator: Coordinator<FakeRoute>!
}

class FakeViewController: UIViewController, MVVMView {
    var viewModel: FakeViewModelCoordinatorManager!
    
    func bindViewModel() { }
}
