//
//  SignUpDataView.swift
//  
//
//  Created by Арсений Корниенко on 4/28/24.
//

import Foundation
import UIKit
import SnapKit

class SignUpDataView:  UIView {
    private let imageCircle = UIImageView()
    private let imageFace = UIImageView()
    private let mainLabel = UILabel()
    private let usernameLabel = UILabel()
    private let passwordLabel = UILabel()
    private let confirmPasswordLabel = UILabel()
    private let switchViewButton = UIButton()
    private let loginButton = UIButton()
    private let separatorUsername = UIView()
    private let separatorPassword = UIView()
    private let separatorConfirmPassword = UIView()
    var action: (() -> Void)?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "backgrndColor")
        setupImageCircle()
        setupMainLabel()
        setupSwitchViewButton()
        setupUsernameLabel()
        setupPasswordLabel()
        setupConfirmPasswordLabel()
        setupSeparatorConfirmPassword()
        setupSeparatorPassword()
        setupSeparatorUsername()
        setupLoginButton()
        setupImageFace()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupMainLabel() {
        addSubview(mainLabel)
        mainLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        mainLabel.text = "Sign Up / "
        mainLabel.textColor = UIColor(named: "labelColorDark")
        mainLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().inset(0)
            make.top.equalTo(imageCircle.snp.bottom).offset(23)
            make.leading.equalTo(imageCircle.snp.leading).offset(-87)
        }
    }
    
    private func setupSwitchViewButton() {
        addSubview(switchViewButton)
        switchViewButton.setTitleColor(.systemGray3, for: .highlighted)
        switchViewButton.addAction(UIAction { [weak self] _ in
            self?.action?()
        }, for: .touchUpInside)
        switchViewButton.setTitle("Login", for: .normal)
        switchViewButton.setTitleColor(UIColor(named: "labelColorLight"), for: .normal)
        switchViewButton.titleLabel!.font = UIFont.systemFont(ofSize: 20)
        switchViewButton.snp.makeConstraints {make in
            make.leading.equalTo(mainLabel.snp.trailing).offset(0)
            make.bottom.equalTo(mainLabel.snp.bottom).inset(0)
            make.trailing.equalTo(imageCircle.snp.trailing).inset(-22)

        }
    }
    
    
    private func setupUsernameLabel() {
        addSubview(usernameLabel)
        usernameLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        usernameLabel.text = "Username"
        usernameLabel.textColor = UIColor(named: "labelColorLight")
        usernameLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(0)
            make.top.equalTo(mainLabel.snp.bottom).offset(34)
        }
    }
    private func setupPasswordLabel() {
        addSubview(passwordLabel)
        passwordLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        passwordLabel.text = "Password"
        passwordLabel.textColor = UIColor(named: "labelColorLight")
        passwordLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(0)
            make.top.equalTo(usernameLabel.snp.bottom).offset(64)
        }
    }
    
    private func setupSeparatorUsername() {
        addSubview(separatorUsername)
        separatorUsername.backgroundColor = UIColor(named: "labelColorLight")
        separatorUsername.snp.makeConstraints {make in
            make.leading.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(0)
            make.top.equalTo(usernameLabel.snp.bottom).offset(6)
            make.bottom.equalTo(usernameLabel.snp.bottom).offset(8)
        }
    }
    
    private func setupSeparatorPassword() {
        addSubview(separatorPassword)
        separatorPassword.backgroundColor = UIColor(named: "labelColorLight")
        separatorPassword.snp.makeConstraints {make in
            make.leading.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(0)
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
            make.bottom.equalTo(passwordLabel.snp.bottom).offset(8)
        }
    }
    
    private func setupConfirmPasswordLabel() {
        addSubview(confirmPasswordLabel)
        confirmPasswordLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        confirmPasswordLabel.text = "Re-enter Password"
        confirmPasswordLabel.textColor = UIColor(named: "labelColorLight")
        confirmPasswordLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(0)
            make.top.equalTo(passwordLabel.snp.bottom).offset(64)
        }
    }
    
    private func setupSeparatorConfirmPassword() {
        addSubview(separatorConfirmPassword)
        separatorConfirmPassword.backgroundColor = UIColor(named: "labelColorLight")
        separatorConfirmPassword.snp.makeConstraints {make in
            make.leading.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(0)
            make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(6)
            make.bottom.equalTo(confirmPasswordLabel.snp.bottom).offset(8)
        }
    }
    
    
    private func setupLoginButton() {
        addSubview(loginButton)
        loginButton.backgroundColor = UIColor(named: "buttonColor")
        loginButton.layer.cornerRadius = 15
        loginButton.setTitle("Sign up", for: .normal)
        loginButton.titleLabel!.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        loginButton.snp.makeConstraints {make in
            make.top.equalTo(separatorConfirmPassword.snp.bottom).offset(64)
            make.leading.equalToSuperview().inset(132)
            make.trailing.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(0)
            make.height.equalTo(44)
            make.width.equalTo(142)
           
        }
    }
    
    private func setupImageCircle() {
        addSubview(imageCircle)
        imageCircle.image = UIImage(named: "circle")
        imageCircle.snp.makeConstraints {make in
            make.top.equalToSuperview().inset(0)

        }
    }
    
    private func setupImageFace() {
        addSubview(imageFace)
        imageFace.image = UIImage(named: "face")
        imageFace.snp.makeConstraints {make in
            make.leading.equalTo(imageCircle.snp.leading).inset(0)
            make.top.equalTo(imageCircle.snp.top).inset(0)
            

        }
    }
 
}
