//
//  MVVMCUtilsTests.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import XCTest
@testable import LightMVVMC

class MVVMCUtilsTests: XCTestCase {

    func testMVVMCInstantiateMethod() {
        let viewController = FakeViewController.instantiate(with: FakeViewModelCoordinatorManager())
        XCTAssertNotNil(viewController.viewModel)
        XCTAssertNotNil(viewController.viewModel.coordinator)
    }
}
