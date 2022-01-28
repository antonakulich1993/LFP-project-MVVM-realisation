//
//  ViewModel.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation

class LoginViewModel {
    
    var username: String = ""
    var password: String = ""
    
    private let networkManager: NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
            networkManager.didLogin(username: username, password: password)
    }
}
