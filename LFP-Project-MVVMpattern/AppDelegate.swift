//
//  AppDelegate.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 21.01.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let networkManager = NetworkManager()
        let loginViewModel = LoginViewModel(networkManager: networkManager)
        window?.rootViewController = UINavigationController(rootViewController: LoginViewController(loginViewModel: loginViewModel))
        window?.makeKeyAndVisible()
        return true
    }
}

