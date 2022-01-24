//
//  ViewModel.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation

class LoginViewModel {
    
    func didLogin(username: String, password: String) {
        let networkManager = NetworkManager()
        networkManager.didLogin(username: username, password: password)
    }
}
