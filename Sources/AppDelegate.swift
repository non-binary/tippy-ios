//
//  AppDelegate.swift
//  Tippy
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: Properties
    var window: UIWindow?

    // MARK: App Lifecycle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initialize window and root view controller
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = CalculatorViewController()
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}
