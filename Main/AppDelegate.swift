//
//  AppDelegate.swift
//  Test
//
//  Created by Taxida on 11/02/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TestViewController()
        window?.makeKeyAndVisible()
        //window?.backgroundColor = .systemMint
        print("didFinishLaunchingWithOptions")
        

        return true
        
        
    }



}

