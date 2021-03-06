//
//  NetworkManager.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation

class NetworkManager {
    func didLogin(username: String, password: String) {
        let parameters = [
            "username": "\(username)",
            "password": "\(password)"
        ]
        guard let url = URL(string: "https://lfp.monster/api/account/token-auth/") else { return }
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-type")
        request.httpMethod = "POST"
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            
            guard let httpResponse = response as? HTTPURLResponse else { return }
            
            guard httpResponse.statusCode == 200 else {
                return print("Error: \(httpResponse.statusCode)")
            }
            
            let result = try? JSONDecoder().decode(Token.self, from: data)
            guard let token = result?.token else { return }
            guard let id = result?.id else { return }
            DefaultsManager.id = id
            DefaultsManager.token = token
            DefaultsManager.username = username
        }.resume()
    }
    
    func didRegistr(username: String, password: String) {
        let username = username
        let password = password
        let parameters = [
            "username": "\(username)",
            "password": "\(password)"
        ]
        guard let url = URL(string: "https://lfp.monster/api/account/register/") else { return }
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-type")
        request.httpMethod = "POST"
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { data, response, error in
            guard let data = data  else { return }
            guard let httpResponse = response as? HTTPURLResponse else {
                return print("Error")
            }
            guard httpResponse.statusCode == 201  else {
                return print("Error: \(httpResponse.statusCode)")
            }
            let result = try? JSONSerialization.jsonObject(with: data, options: [])
            guard let result = result else { return }
            print(result)
        }.resume()
    }
}
