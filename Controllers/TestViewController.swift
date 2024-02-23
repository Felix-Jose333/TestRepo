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
        view.addSubview(scrollView)

        
        
        let Username = UITextField()
               // Configure Username text field
               scrollView.addSubview(Username)
               Username.translatesAutoresizingMaskIntoConstraints = false
        Username.frame = CGRect(x: 10, y: 150, width: 370, height: 55)
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
               NSLayoutConstraint.activate([
                   Username.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 150),
                   Username.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
                   Username.widthAnchor.constraint(equalToConstant: 370),
                   Username.heightAnchor.constraint(equalToConstant: 55)
               ])

        
        
        let text = UITextField()
        text.frame = CGRect(x: 10, y: 230, width: 370, height: 55)
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
        btn.frame = CGRect(x: 10, y: 330, width: 370, height: 55)
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
        view.addSubview(btn)
        


       
       // scrollView.addSubview(Label)
        scrollView.addSubview(Username)
        scrollView.addSubview(text)
        scrollView.addSubview(btn)
//        scrollView.addSubview(myLabel)
       // scrollView.addSubview(Label1)


        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    

    @objc func loginButtonTapped() {
        
        let secondVC = ScrollViewController()
        let navVC = UINavigationController(rootViewController: secondVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)

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
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        activeTextField = nil
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
   


}










