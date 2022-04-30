//
//  AppDelegate.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 01.05.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

