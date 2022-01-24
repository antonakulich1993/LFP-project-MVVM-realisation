//
//  RegistrationViewController.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import UIKit
import SnapKit

class RegistrationViewController: UIViewController {

    let registrationLabel: UILabel = {
        let registrationLabel = UILabel()
        registrationLabel.text = "Регистрация"
        registrationLabel.numberOfLines = 0
        registrationLabel.lineBreakMode = .byWordWrapping
        registrationLabel.numberOfLines = 0
        registrationLabel.textAlignment = .center
        registrationLabel.textColor = .black
        registrationLabel.font = registrationLabel.font.withSize(28)
        return registrationLabel
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
        passwordField.isSecureTextEntry = true
        
        return passwordField
    }()
    
    let repeatPasswordField: LightBlueTextField = {
        let repeatPasswordField = LightBlueTextField()
        
        repeatPasswordField.attributedPlaceholder = NSAttributedString(string: "Подтвердите пароль",
                                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        repeatPasswordField.isSecureTextEntry = true
        return repeatPasswordField
    }()
    
    let infoLabel: UILabel = {
        let infoLabel = UILabel()
        infoLabel.text = "*все поля обязательны для заполнения"
        infoLabel.textColor = .systemGray
        infoLabel.textAlignment = .center
        return infoLabel
    }()
    
    let registrationButton: DarkBlueButton = {
        let registrationButton = DarkBlueButton(title: "Зарегистрироваться")
        return registrationButton
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureInterface()
        registrationButton.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }
    
    @objc func didTap() {
        let registrationViewModel = RegistrationViewModel()
        guard let username = usernameField.text, let password = passwordField.text else { return }
        registrationViewModel.didRegistr(username: username, password: password)
    }
}

extension RegistrationViewController {
    func configureInterface() {
        view.addSubview(registrationLabel)
        registrationLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(147)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        view.addSubview(usernameField)
        usernameField.snp.makeConstraints { make in
            make.height.equalTo(54)
            make.top.equalTo(registrationLabel.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        view.addSubview(passwordField)
        passwordField.snp.makeConstraints { make in
            make.height.equalTo(54)
            make.top.equalTo(usernameField.snp.bottom).offset(34)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        view.addSubview(repeatPasswordField)
        repeatPasswordField.snp.makeConstraints { make in
            make.height.equalTo(54)
            make.top.equalTo(passwordField.snp.bottom).offset(34)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        view.addSubview(infoLabel)
        infoLabel.snp.makeConstraints { make in
            make.top.equalTo(repeatPasswordField.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        view.addSubview(registrationButton)
        registrationButton.snp.makeConstraints { make in
            make.height.equalTo(54)
            make.top.equalTo(infoLabel.snp.bottom).offset(34)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
}
