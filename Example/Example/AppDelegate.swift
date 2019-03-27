//
//  AppDelegate.swift
//  Example
//
//  Created by Enrique Bermúdez on 3/27/19.
//  Copyright © 2019 Enrique Bermúdez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let usersViewController = ContactsViewController.instantiate(with: ContactsViewModel())
        let rootViewController = UINavigationController(rootViewController:usersViewController)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        
        return true
    }

}

