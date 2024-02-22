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
        view.backgroundColor = .systemGray6
        scrollView.frame = view.bounds
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(scrollView)

        
        let Label = UILabel()
        Label.frame = CGRect(x: 10, y: 100, width: 370, height: 150)
        Label.text = "Hel loghdfdgdgdgdgregregrghregergergergregregreg hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb fffffffffff"
        Label.font = .italicSystemFont(ofSize: 20)
        Label.textColor = .red
        Label.isEnabled = true
        Label.backgroundColor = .lightGray
        Label.textAlignment = .left
        //Label.lineBreakMode = .byWordWrapping
        Label.numberOfLines = 15
        Label.adjustsFontSizeToFitWidth = true
        Label.minimumScaleFactor = 0.3
        
        
        
        let myLabel = UILabel()
        myLabel.text = "This is a long text that may not fit within the label's bounds."
        myLabel.frame = CGRect(x: 50, y: 270, width: 200, height: 50)
        myLabel.backgroundColor = UIColor.lightGray
        myLabel.textAlignment = .center
        myLabel.adjustsFontSizeToFitWidth = true
        myLabel.minimumScaleFactor = 0.2  // You can adjust this value as needed

        view.addSubview(myLabel)

//        NSLayoutConstraint.activate([
//        Label.topAnchor.constraint(equalTo: view.topAnchor),
//        Label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//        Label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//        Label.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])

        
        
        let text = UITextField()
        text.frame = CGRect(x: 10, y: 350, width: 370, height: 50)
        text.placeholder = "Enter text"
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
        
        
        
        let text1 = UITextField()
        text1.frame = CGRect(x: 10, y: 530, width: 370, height: 50)
        text1.placeholder = "Enter text"
        text1.backgroundColor = .green
        text1.delegate = self
        
        let btn = UIButton()
        btn.frame = CGRect(x: 10, y: 420, width: 370, height: 50)
        btn.setTitle("Go to ScrollView", for: .normal)
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
        
        let Label1 = UILabel()
        Label1.frame = CGRect(x: 10, y: 500, width: 370, height: 550)
        Label1.text = "Hel loghdfdgdgdgdgregregrghregergergergregregreg hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb fffffffffffgjhjhhkjhkhk efjwehfjhwf hhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb fffffffffffgjhjhhkjhkhk efjwehfjhwfhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb fffffffffffgjhjhhkjhkhk efjwehfjhwfhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb fffffffffffgjhjhhkjhkhk efjwehfjhwfhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb Hel logh hhh jgj gjhj khkj hjgh gv ghgjh jhhgffgg vghfghhgg hgjhhkjhhb fffffffffffgjhjhhkjhkhk efjwehfjhwf"
        Label1.font = .italicSystemFont(ofSize: 50)
        Label1.textColor = .red
        Label1.isEnabled = true
        Label1.backgroundColor = .lightGray
        Label1.textAlignment = .left
        //Label.lineBreakMode = .byWordWrapping
        Label1.numberOfLines = 15
        Label1.adjustsFontSizeToFitWidth = true
        Label1.minimumScaleFactor = 0.3

       
       scrollView.addSubview(Label)
        scrollView.addSubview(text)
        scrollView.addSubview(text1)
        scrollView.addSubview(btn)
        scrollView.addSubview(myLabel)
        scrollView.addSubview(Label1)


        
        
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
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Set content size of scrollView
        scrollView.contentSize = CGSize(width: view.bounds.width, height: 1000) // Adjust height as needed
    }

}




