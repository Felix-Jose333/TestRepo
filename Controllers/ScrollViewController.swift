//
//  Scroll.swift
//  Test
//  Created by Taxida on 12/02/24.
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
        
        btn1.setTitle("Go to TableView", for: .normal)
        btn1.backgroundColor = .blue
        btn1.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn1.center = CGPoint(x: view.center.x, y: 240)
        btn1.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn2.setTitle("Go to TableView", for: .normal)
        btn2.backgroundColor = .blue
        btn2.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn2.center = CGPoint(x: view.center.x, y: 340)
        btn2.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn3.setTitle("Go to TableView", for: .normal)
        btn3.backgroundColor = .blue
        btn3.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn3.center = CGPoint(x: view.center.x, y: 440)
        btn3.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn4.setTitle("Go to TableView", for: .normal)
        btn4.backgroundColor = .blue
        btn4.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn4.center = CGPoint(x: view.center.x, y: 540)
        btn4.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn5.setTitle("Go to TableView", for: .normal)
        btn5.backgroundColor = .blue
        btn5.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn5.center = CGPoint(x: view.center.x, y: 640)
        btn5.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

        btn6.setTitle("Go to TableView", for: .normal)
        btn6.backgroundColor = .blue
        btn6.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        btn6.center = CGPoint(x: view.center.x, y: 740)
        btn6.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)

       
        scrollView.addSubview(btn1)
        scrollView.addSubview(btn2)
        scrollView.addSubview(btn3)
        scrollView.addSubview(btn4)
        scrollView.addSubview(btn5)
        scrollView.addSubview(btn6)


        view.addSubview(scrollView)
   }
    
    @objc func didTapButton(){
        let vc = TableViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.view.tintColor = .black


    }
    

    @objc private func dismissSelf(){
        dismiss(animated: true,completion: nil)
        
    }
}
