//
//  ViewController.swift
//  Password
//
//  Created by Emircan Özer on 4.03.2026.
//

import UIKit

class ViewController: UIViewController {
    //initde tanımlı placeholder 
    let newPasswordTextField = PasswordTextField(placeHolderText: "New Password")
    let criteriaView = PasswordCriteriaView(text: "uppercase letter (A-Z")
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        style()
        layout()
    }
}

extension ViewController {
    func style() {
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        criteriaView.translatesAutoresizingMaskIntoConstraints = false
        
        
       
        
    }
    
    func layout() {
         //stackView.addArrangedSubview(newPasswordTextField)
        stackView.addArrangedSubview(criteriaView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2)
        ])
    }
    
}



