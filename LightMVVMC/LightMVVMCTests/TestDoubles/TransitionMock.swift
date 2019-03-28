//
//  TransitionMock.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

@testable import LightMVVMC

class TransitionMock: Transition {
    
    var from: Presentable?
    
    func execute(from presentable: Presentable) {
        from = presentable
    }
}
