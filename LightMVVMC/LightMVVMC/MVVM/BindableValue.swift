//
//  BindableValue.swift
//  LightMVVMC
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermudez. All rights reserved.
//

import UIKit

/// `BindableValue` is an instance that holds a value and will a listener every time this value changes.
public class BindableValue<T>: NSObject {

    ///
    public typealias Listener = (T) -> Void
    private var listener:Listener?
    
    ///
    public var value:T {
        didSet {
            self.listener?(value)
        }
    }
    
    /// Initialize a `BindableValue` with an initial value.
    public init(_ value:T) {
        self.value = value
    }
    
    /// Sets the listener closure that will be called every time the value changes.
    public func bind(listener: @escaping Listener){
        self.listener = listener
        listener(value)
    }
}

/// `OptionalBindableValue` behaves the same as the `BindableValue` but it also accepts `nil` values.
public class OptionalBindableValue<T>: NSObject {
    
    ///
    public typealias Listener = (T?) -> Void
    private var listener:Listener?
    
    ///
    public var value:T? {
        didSet {
            self.listener?(value)
        }
    }
    
    /// Initialize a `OptionalBindableValue` with an initial value.
    public init(_ value:T?) {
        self.value = value
    }
    
    /// Sets the listener closure that will be called every time the value changes.
    public func bind(listener: @escaping Listener){
        self.listener = listener
        listener(value)
    }
}
