//
//  MVVMViewMock.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit
@testable import LightMVVMC

class ViewControllerMVVMViewMock: UIViewController, MVVMView {

    var viewModel: FakeViewModel!
        
    var didCallBindViewModel = false
    var didCallViewDidLoad = false
    
    func bindViewModel() {
        self.didCallBindViewModel = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.didCallViewDidLoad = true
    }
}

class ViewMVVMViewMock: UIView, MVVMView {
    
    var viewModel: FakeViewModel!
    
    var didCallBindViewModel = false
    
    func bindViewModel() {
        self.didCallBindViewModel = true
    }
}
