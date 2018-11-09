//
//  AppDelegate.swift
//  NoStoryboard
//
//  Created by lucas.v.moraes on 08/11/2018.
//  Copyright © 2018 lucas.v.moraes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Creating the navigation controller in ViewController
        let firstScreen = FirstScreenVC()
        let navigationController = UINavigationController(rootViewController: firstScreen)
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.tintColor = UIColor.black
        navigationController.navigationBar.barTintColor = UIColor.white
        
        // Pulling the firstView
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}

