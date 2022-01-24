//
//  DeafaultsManager.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation

class DefaultsManager {
    class var token: String? {
        get {
            return UserDefaults.standard.value(forKey: "token") as? String
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "token")
        }
    }
    class var username: String? {
        get {
            return UserDefaults.standard.value(forKey: "username") as? String
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "username")
        }
    }
    class var id: Int? {
        get {
            return UserDefaults.standard.value(forKey: "id") as? Int
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "id")
        }
    }
}
