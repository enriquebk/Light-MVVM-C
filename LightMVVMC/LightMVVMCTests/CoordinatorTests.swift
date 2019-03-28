//
//  CoordinatorTests.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import XCTest
@testable import LightMVVMC

class CoordinatorTests: XCTestCase {

    private var root: UIViewController!
    private var coordinator: Coordinator<RouteMock>!
    
    override func setUp() {
        root = UIViewController()
        coordinator = Coordinator<RouteMock>.init(root: root)
    }
    
    func testCoordinatorInit() {

        if let coordinatorRoot = coordinator.root as? UIViewController {
            XCTAssertTrue(coordinatorRoot === root)
        } else {
            XCTFail("Coordinatior root was't correclty initialized")
        }
    }
    
    func testCoordinatorNavigation() {

        let routeMock = RouteMock()
        
        coordinator.navigate(to: routeMock)
        
        XCTAssertTrue(routeMock.didCallGetTransition)
    
        if let transition = routeMock.returnedTransition,
            let from = transition.from as? UIViewController {
            XCTAssertTrue(from === root)
        } else {
            XCTFail("An error has occurred when accessing `returnedTransition`")
        }
    }
}
