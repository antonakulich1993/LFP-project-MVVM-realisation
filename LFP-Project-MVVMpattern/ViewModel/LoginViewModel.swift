//
//  ViewModel.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation
import UIKit

class LoginViewModel {
   
    
    
    private let networkManager: NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    func didLogin(username: String, password: String) {
        networkManager.didLogin(username: username, password: password)
    }
}
  
