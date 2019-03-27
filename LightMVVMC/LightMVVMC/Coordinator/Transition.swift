//
//  Transition.swift
//  LightMVVMC
//
//  Created by Enrique Bermúdez on 1/31/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit

/// Implement the `Transition` protocol when you want to create your own transitions.
public protocol Transition {
    
    /**
     Executes all the code needed to present a certain `Presentable` instance.
     - parameter from: `Presentable` instance that will be presented when executing the transition.
     */
    func execute(from: Presentable)
}

/// `NavigationTransition` its a `Transition` that implements all the `UINavigationController` navigations (push, present, pop, etc).
public class NavigationTransition: Transition {
    
    ///
    public enum NavigationType {
        ///
        case push(UIViewController)
        ///
        case present(UIViewController)
        ///
        case pop
        ///
        case popToRoot
        ///
        case dismiss
        ///
        case noTransition
    }
    
    private var systemTransition: NavigationType
    
    init(_ transition: NavigationType) {
        systemTransition = transition
    }
    
    /// :nodoc:
    public func execute(from presentable: Presentable) {
        
        guard let sourceVC = presentable as? UIViewController else {
            return
        }
        
        switch self.systemTransition {
            
        case let .push(destination):
            sourceVC.navigationController?.pushViewController(destination, animated: true)
            
        case let .present(destination):
            sourceVC.navigationController?.present(destination, animated: true)
            
        case .dismiss:
            sourceVC.dismiss(animated: true, completion: nil)
            
        case .pop:
            sourceVC.navigationController?.popViewController(animated: true)
            
        case .popToRoot:
            sourceVC.navigationController?.popToRootViewController(animated: true)
            
        case .noTransition: break
            
        }
    }
}
