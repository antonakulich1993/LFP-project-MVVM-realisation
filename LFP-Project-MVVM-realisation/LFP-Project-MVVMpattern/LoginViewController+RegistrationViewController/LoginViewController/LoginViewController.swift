//
//  LoginViewController.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let logoImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "lfpLogo")
        logoImage.contentMode = .scaleAspectFit
        return logoImage
    }()
    
    let enterLabel: UILabel = {
        let enterLabel = UILabel()
        enterLabel.text = "Вход"
        enterLabel.textColor = .black
        enterLabel.font = enterLabel.font.withSize(28)
        enterLabel.lineBreakMode = .byWordWrapping
        return enterLabel
    }()
    
    let usernameField: LightBlueTextField = {
        let usernameField = LightBlueTextField()
        usernameField.attributedPlaceholder = NSAttributedString(string: "Имя пользователя",
                                                                 attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        return usernameField
    }()
    
    let passwordField: LightBlueTextField = {
        let passwordField = LightBlueTextField()
        passwordField.attributedPlaceholder = NSAttributedString(string: "Пароль",
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        passwordField.backgroundColor = UIColor(red: 0.97, green: 0.98, blue: 1.0, alpha: 1.0)
        passwordField.isSecureTextEntry = true
        return passwordField
    }()
    
    let loginButton: DarkBlueButton = {
        let loginButton = DarkBlueButton(title: "Войти")
        return loginButton
    }()
    
    let questionLabel: UILabel = {
        let questionLabel = UILabel()
        questionLabel.text = "Впервые у нас?"
        questionLabel.textColor = .systemGray
        return questionLabel
    }()
    
    let registrationButton: UIButton = {
        let registrationButton = UIButton()
        registrationButton.backgroundColor = UIColor(red: 0.58, green: 0.59, blue: 0.69, alpha: 1.0)
        registrationButton.setTitle("Зарегистрироваться", for: .normal)
        registrationButton.layer.cornerRadius = 8
        return registrationButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureIntreface()
        
    }
}


extension LoginViewController {
    func configureIntreface() {
        view.backgroundColor = .white
        
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.height.equalTo(160)
            make.top.equalToSuperview().offset(80)
            make.leading.trailing.equalToSuperview().inset(80)
        }
        
        view.addSubview(enterLabel)
        enterLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(44)
            make.centerX.equalTo(logoImage.snp.centerX)
        }
        
        view.addSubview(usernameField)
        usernameField.snp.makeConstraints { make in
            make.height.equalTo(54)
            make.top.equalTo(enterLabel.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        view.addSubview(passwordField)
        passwordField.snp.makeConstraints { make in
            make.height.equalTo(54)
            make.top.equalTo(usernameField.snp.bottom).offset(34)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordField.snp.bottom).offset(28)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(54)
            
        }
        
        view.addSubview(questionLabel)
        questionLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(36)
            make.leading.equalToSuperview().inset(130)
        }
        
        view.addSubview(registrationButton)
        registrationButton.snp.makeConstraints { make in
            make.top.equalTo(questionLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(54)
        }
    }
}
