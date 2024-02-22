//
//  Scroll.swift
//  Test
//  Created by Taxida on 12/02/24.
//

import UIKit

class ScrollViewController: UIViewController {
    private let button = UIButton()
    private let btn = UIButton()
    private let btn1 = UIButton()
    private let btn2 = UIButton()
    private let btn3 = UIButton()
    private let btn4 = UIButton()



    var activeTextField: UITextField?
    var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(dismissSelf))
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        view.backgroundColor = .black
        
        button.setTitle("Go to TableView", for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        button.center = CGPoint(x: view.center.x, y: 240)
        button.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn.setTitle("Go to TableView", for: .normal)
        btn.backgroundColor = .blue
        btn.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn.center = CGPoint(x: view.center.x, y: 340)
        btn.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn1.setTitle("Go to TableView", for: .normal)
        btn1.backgroundColor = .blue
        btn1.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn1.center = CGPoint(x: view.center.x, y: 440)
        btn1.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn2.setTitle("Go to TableView", for: .normal)
        btn2.backgroundColor = .blue
        btn2.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn2.center = CGPoint(x: view.center.x, y: 540)
        btn2.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn3.setTitle("Go to TableView", for: .normal)
        btn3.backgroundColor = .blue
        btn3.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn3.center = CGPoint(x: view.center.x, y: 640)
        btn3.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn4.setTitle("Go to TableView", for: .normal)
        btn4.backgroundColor = .blue
        btn4.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn4.center = CGPoint(x: view.center.x, y: 740)
        btn4.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
        scrollView.topAnchor.constraint(equalTo: view.topAnchor),
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        let contentView = UIView()
        contentView.backgroundColor = .black
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        scrollView.addSubview(button)
        scrollView.addSubview(btn)
        scrollView.addSubview(btn1)
        scrollView.addSubview(btn2)
        scrollView.addSubview(btn3)
        scrollView.addSubview(btn4)

        
        NSLayoutConstraint.activate([
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        
        
        let tealView = UIView()
        tealView.backgroundColor = .white
        tealView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(tealView)

        NSLayoutConstraint.activate([
            tealView.topAnchor.constraint(equalTo: contentView.topAnchor),
            tealView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tealView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tealView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            tealView.heightAnchor.constraint(equalTo: view.heightAnchor) // Adjust as needed
        ])
    }
    
    @objc func didTapButton(){
        let vc = TableViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)

    }
    

    @objc private func dismissSelf(){
        dismiss(animated: true,completion: nil)
        
    }


}

