//
//  RegistrationViewModel.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation

class RegistrationViewModel {
    
    private let networkManager: NetworkManager
    
    init(networkManeger: NetworkManager) {
        self.networkManager = networkManeger
    }
    func didRegistration(username: String, password: String) {
        networkManager.didRegistr(username: username, password: password)
    }
}
