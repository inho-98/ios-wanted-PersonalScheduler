//
//  ViewController.swift
//  PersonalScheduler
//
//  Created by kjs on 06/01/23.
//

import UIKit

final class LoginViewController: UIViewController {
    private let kakaoLoginButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "kakaoLoginButton"), for: .normal)
        
        return button
    }()
    private let loginViewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureStackView()
        setupKakaoLoginButton()
    }
    
    private func configureStackView() {
        view.backgroundColor = .systemBackground
        view.addSubview(kakaoLoginButton)
        
        NSLayoutConstraint.activate([
            kakaoLoginButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            kakaoLoginButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            kakaoLoginButton.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8)
        ])
    }
    
    private func setupKakaoLoginButton() {
        kakaoLoginButton.addTarget(
            self,
            action: #selector(kakaoLoginButtonPressed),
            for: .touchUpInside
        )
    }
    
    @objc func kakaoLoginButtonPressed() {
        loginViewModel.handleKakaoLogin()
    }
}
