//
//  BindableValueTests.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import XCTest
@testable import LightMVVMC

class BindableValueTests: XCTestCase {
    
    func testInit() {
        
        let bindableValue = BindableValue(2)
        XCTAssertTrue(bindableValue.value == 2)
    }
    
    func testListenerFirstCall() {
        
        let expectation = self.expectation(description: "Listener closure should be called when calling bind method")
        
        let bindableValue = BindableValue(1)
        
        bindableValue.bind { (newValue) in
            XCTAssertTrue(newValue == 1)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 0.1)
    }
    
    func testListenerCallWhenChaningValue() {
        
        let expectation = self.expectation(description: "Listener closure should be called when changing the bindable value.")
        
        let bindableValue = BindableValue(1)
        
        bindableValue.bind { (newValue) in
            
            //Don't do any check on the first run
            if newValue == 1 { return }
            
            XCTAssertTrue(newValue == 2)
            expectation.fulfill()
        }
        
        bindableValue.value = 2
        
        wait(for: [expectation], timeout: 0.1)
    }
}
