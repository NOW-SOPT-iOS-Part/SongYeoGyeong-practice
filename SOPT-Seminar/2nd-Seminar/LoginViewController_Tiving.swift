//
//  LoginViewController_Tiving.swift
//  SOPT-Seminar
//
//  Created by 송여경 on 4/20/24.
//

import Foundation
import SnapKit
import UIKit

final class LoginViewController_Tiving: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "TIVING ID 로그인"
        label.textColor = UIColor(red: 214/255, green: 214/255, blue: 214/255, alpha: 1.0)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.font = UIFont(name: "Pretendard", size: 23)
        return label
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디"
        textField.font = UIFont(name: "Pretendard", size: 15)
        textField.backgroundColor = UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1)
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호"
        textField.font = UIFont(name: "Pretendard", size: 15)
        textField.backgroundColor = UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1)
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard", size: 18)
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    @objc func loginButtonDidTap(){
        //        presentToWelcomeVC()
        pushToWelcomeVC()
    }
    
    
    private func pushToWelcomeVC(){
        let welcomeViewController = WelcomeViewController()
        //        welcomeViewController.id = idTextField.text
        welcomeViewController.setLabelText(id: idTextField.text)
        self.navigationController?
            .pushViewController(welcomeViewController, animated: true)
    }
    
    private let findID: UIButton = {
        let button = UIButton()
        button.setTitle("아이디 찾기", for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard", size: 14)
        button.setTitleColor(UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1), for: .normal)
        return button
    }()
    
    private let separatorLabel: UILabel = {
        let label = UILabel()
        label.text = "|"
        label.textColor = UIColor(red: 46/255, green: 46/255, blue: 46/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 1)
        label.textAlignment = .center
        return label
    }()
    
    private let findPW: UIButton = {
        let button = UIButton()
        button.setTitle("비밀번호 찾기", for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard", size: 14)
        button.setTitleColor(UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1), for: .normal)
        return button
    }()
    
    private let noAccount: UILabel = {
        let label = UILabel()
        label.text = "아직 계정이 없으신가요?"
        label.font = UIFont(name: "Pretendard", size: 14)
        label.textColor = UIColor(red: 98/255, green: 98/255, blue: 98/255, alpha: 1)
        label.textAlignment = .center
        return label
    }()

    
    private let createNickname: UIButton = {
        let button = UIButton()
        button.setTitle("닉네임 만들러가기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        setLayout()
    }
    
    private func setLayout() {
        [titleLabel, idTextField, passwordTextField, loginButton, findID, findPW, noAccount, createNickname].forEach {
            self.view.addSubview($0)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(-1565)
            make.width.equalTo(156)
            make.height.equalTo(37)
        }
        
        idTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(71)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(52)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(idTextField.snp.bottom).offset(7)
            make.left.right.equalTo(idTextField)
            make.height.equalTo(52)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(35)
            make.left.right.equalTo(idTextField)
            make.height.equalTo(58)
        }
    }
}
