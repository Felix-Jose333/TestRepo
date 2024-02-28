//
//  ViewController.swift
//  Test
//
//  Created by Taxida on 11/02/24.
//

import UIKit

class TestViewController: UIViewController, UITextFieldDelegate {

    var activeTextField: UITextField?
    let username = UITextField()
    let password = UITextField()
    let btn = UIButton()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .link
        NSLayoutConstraint.activate([
            
            view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
            ])

        
        
        view.addSubview(username)
        username.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            username.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            username.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            username.heightAnchor.constraint(equalToConstant: 55),
            username.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -50)
        ])
        username.placeholder = "Enter username"
        username.textAlignment = .center
        username.font = UIFont.systemFont(ofSize: 20)
        username.textColor = UIColor.black
        username.backgroundColor = UIColor.white
        username.tintColor = .black
        username.keyboardType = .default
        username.returnKeyType = .done
        username.isSecureTextEntry = false
        username.layer.shadowColor = UIColor.black.cgColor
        username.layer.shadowOffset = CGSize(width: 4, height: 4)
        username.layer.shadowOpacity = 0.5
        username.layer.shadowRadius = 0.5
        username.layer.cornerRadius = 10
        username.delegate = self
        
        
        
        view.addSubview(password)
        password.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            password.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            password.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 20),
            password.heightAnchor.constraint(equalTo: username.heightAnchor),
            password.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -50)
        ])
        password.textAlignment = .center
        password.placeholder = "Enter password"
        password.font = UIFont.systemFont(ofSize: 20)
        password.textColor = UIColor.black
        password.backgroundColor = UIColor.white
        password.tintColor = .black
        password.keyboardType = .default
        password.returnKeyType = .done
        password.isSecureTextEntry = true
        password.layer.shadowColor = UIColor.black.cgColor
        password.layer.shadowOffset = CGSize(width: 4, height: 4)
        password.layer.shadowOpacity = 0.5
        password.layer.shadowRadius = 0.5
        password.layer.cornerRadius = 10
        password.delegate = self
        
        
        
        
        view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 40),
            btn.heightAnchor.constraint(equalTo:password.heightAnchor),
            btn.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -50)
        ])
        btn.setTitle("Login", for: .normal)
        btn.tintColor = .black
        btn.isHidden = false
        btn.backgroundColor = .blue
        btn.isEnabled = true
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 4, height: 4)
        btn.layer.shadowOpacity = 0.5
        btn.layer.shadowRadius = 0.5
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        
        NotificationCenter.default.addObserver(self, selector:
                                                #selector(keyboardWillShow(_:)), name:
                                                UIResponder.keyboardWillShowNotification,
                                                object: nil)
        NotificationCenter.default.addObserver(self, selector:
                                                
                                                #selector(keyboardWillHide(_:)), name:
                                                UIResponder.keyboardWillHideNotification,
                                                object: nil)
        }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        
        guard let userInfo = notification.userInfo,
              
              let keyboardSize = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
                 return
             }
        
        
        if let activeTextField = self.activeTextField {
            
            let textFieldFrameInWindow = activeTextField.convert(activeTextField.bounds, to: nil)
            let offsetY = textFieldFrameInWindow.maxY - (view.frame.height - keyboardSize.height)
            
            if offsetY > 0 {
                self.view.frame.origin.y = -offsetY
            }
            
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        self.view.frame.origin.y = 0
    }
    
    @objc func loginButtonTapped() {
        username.text = ""
        password.text = ""
        let secondVC = ScrollViewController()
        let navVC = UINavigationController(rootViewController: secondVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
//
//    override var editButtonItem: UIBarButtonItem{
//        print("gvnhbv")
//    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
 
   
}
