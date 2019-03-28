//
//  UIViewControllerMock.swift
//  LightMVVMCTests
//
//  Created by Enrique Bermúdez on 3/28/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit

class UIViewControllerMock: UIViewController {
    
    var didCallDismiss = false
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        self.didCallDismiss = true
        super.dismiss(animated: flag, completion: completion)
    }
    
    func navigationControllerMock() -> UINavigationControllerMock {
        guard let navController = self.navigationController as? UINavigationControllerMock else {
            return UINavigationControllerMock()
        }
        return navController
    }
}
