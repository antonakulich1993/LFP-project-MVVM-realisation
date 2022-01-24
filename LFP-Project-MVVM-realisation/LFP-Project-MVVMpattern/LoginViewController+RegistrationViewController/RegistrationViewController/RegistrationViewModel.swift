//
//  RegistrationViewModel.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation

class RegistrationViewModel {
    func didRegistr(username: String, password: String) {
        let networkManager = NetworkManager()
        networkManager.didRegistr(username: username, password: password)
    }
}
