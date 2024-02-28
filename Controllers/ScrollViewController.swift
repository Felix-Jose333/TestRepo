//
//  ScrollViewController.swift
//  Test
//  Created by Taxida on 12/02/24.
//
//
//
import UIKit

class ScrollViewController: UIViewController {

    let scrollView = UIScrollView()

    let btn1 = UIButton()
    let btn2 = UIButton()
    let btn3 = UIButton()
    let btn4 = UIButton()
    let btn5 = UIButton()
    let btn6 = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(dismissSelf))
        navigationItem.rightBarButtonItem?.tintColor = .black
        view.backgroundColor = .white
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: view.bounds.width, height: 800)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        //scrollView.isScrollEnabled = false 
        view.addSubview(scrollView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo:
                                                view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo:
                                                view.safeAreaLayoutGuide.bottomAnchor)
        ])

        //scrollView.contentSize = CGSize(width: view.bounds.width, height: 800)

        setupButton(btn1, title: "Click to navigate", centerYConstant: 240)
        setupButton(btn2, title: "Go to TableView", centerYConstant: 340)
        setupButton(btn3, title: "Go to TableView", centerYConstant: 440)
        setupButton(btn4, title: "Go to TableView", centerYConstant: 540)
        setupButton(btn5, title: "Go to TableView", centerYConstant: 640)
        setupButton(btn6, title: "Go to TableView", centerYConstant: 740)
    }
    
    private func setupButton(_ button: UIButton, title: String, centerYConstant: CGFloat) {
        button.setTitle(title, for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        scrollView.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: scrollView.topAnchor, constant: centerYConstant),
            button.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -50),
            button.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
    
    @objc private func didTapButton() {
        let vc = TableViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.view.tintColor = .black
    }
 
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}
