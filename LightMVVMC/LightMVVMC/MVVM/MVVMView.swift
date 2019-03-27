//
//  MVVMView.swift
//  LightMVVMC
//
//  Created by Enrique Bermúdez on 1/31/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit

/// MVVM's ViewModel instance.
public protocol ViewModel: AnyObject { }

/// MVVM's View instance.
public protocol MVVMView: AnyObject {
    
    /// :nodoc:
    associatedtype ViewModelType: ViewModel

    ///
    var viewModel: ViewModelType! { get set }
    
    /// Binds each element of the `ViewModel` with its UI element in the View.
    func bindViewModel()
}

public extension MVVMView where Self: UIViewController {
    
    /**
     Binds the `UIViewController` instance to a given `ViewModel`.
     - parameter viewModel: `ViewModel` to be binded.
     */
    func bind(to viewModel: Self.ViewModelType) {
        self.viewModel = viewModel
        loadViewIfNeeded()
        bindViewModel()
    }
}

public extension MVVMView where Self: UIView {
    
    /**
     Binds the `UIView` instance to a given `ViewModel`.
     - parameter viewModel: `ViewModel` to be binded.
     */
    func bind(to viewModel: Self.ViewModelType) {
        self.viewModel = viewModel
        bindViewModel()
    }
}
