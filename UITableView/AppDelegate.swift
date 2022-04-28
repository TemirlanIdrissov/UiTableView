//
//  AppDelegate.swift
//  UITableView
//
//  Created by Temirlan Idrissov on 28.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let controller = TableViewController()
        
        window?.rootViewController = UINavigationController(rootViewController: controller)
        window?.makeKeyAndVisible()
        
        return true
    }


    


}

