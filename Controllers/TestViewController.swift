//
//  ViewController.swift
//  Test
//
//  Created by Taxida on 11/02/24.
//


import UIKit

class TestViewController: UIViewController, UITextFieldDelegate {

    var activeTextField: UITextField?
    let scrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .systemBlue
        
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: view.bounds.width, height: 1000)
        scrollView.backgroundColor = .link
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        let Username = UITextField()
        scrollView.addSubview(Username)
        Username.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            Username.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 150),
            Username.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            Username.heightAnchor.constraint(equalToConstant: 55),
            Username.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -20) // Adjusted
        ])
        
        Username.placeholder = "Enter username"
        Username.font = UIFont.systemFont(ofSize: 20)
        Username.textColor = UIColor.black
        Username.backgroundColor = UIColor.white
        Username.tintColor = .black
        Username.keyboardType = .default
        Username.returnKeyType = .done
        Username.isSecureTextEntry = false
        Username.layer.shadowColor = UIColor.black.cgColor
        Username.layer.shadowOffset = CGSize(width: 4, height: 4)
        Username.layer.shadowOpacity = 0.5
        Username.layer.shadowRadius = 0.5
        Username.layer.cornerRadius = 10
        Username.delegate = self
        
        //
        let text = UITextField()
        scrollView.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 230),
            text.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            text.heightAnchor.constraint(equalToConstant: 55),
            text.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -20)
        ])
        
        text.placeholder = "Enter password"
        text.font = UIFont.systemFont(ofSize: 20)
        text.textColor = UIColor.black
        text.backgroundColor = UIColor.white
        text.tintColor = .black
        text.keyboardType = .default
        text.returnKeyType = .done
        text.isSecureTextEntry = false
        text.layer.shadowColor = UIColor.black.cgColor
        text.layer.shadowOffset = CGSize(width: 4, height: 4)
        text.layer.shadowOpacity = 0.5
        text.layer.shadowRadius = 0.5
        text.layer.cornerRadius = 10
        text.delegate = self
        
        
        
        let btn = UIButton()
        scrollView.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            btn.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 330),
            btn.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            btn.heightAnchor.constraint(equalToConstant: 55),
            btn.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -20) // Adjusted
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
        
        
        
        
        // scrollView.addSubview(Label)
        //  scrollView.addSubview(Username)
        scrollView.addSubview(text)
        scrollView.addSubview(btn)
        //        scrollView.addSubview(myLabel)
        // scrollView.addSubview(Label1)
        
        
    }


    @objc func loginButtonTapped() {

        let secondVC = ScrollViewController()
        let navVC = UINavigationController(rootViewController: secondVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)

    }


}




