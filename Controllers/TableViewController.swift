////
//  TableViewController.swift
//  Test
//
//  Created by Taxida on 12/02/24.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let fruits = ["Apple", "Banana", "Cherry", "Fig", "Mango"]
    let counts = ["4", "5", "6", "7"]
    var activeTextField: UITextField?
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 70
        
        
        
        NSLayoutConstraint.activate([
                    tableView.topAnchor.constraint(equalTo: view.topAnchor),
                    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
        
    }
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = fruits[indexPath.row]
        cell.detailTextLabel?.text = counts[indexPath.row]
        cell.backgroundColor = .systemMint
        cell.tintColor = .blue
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Helloooooooo")
        
        
        let selectedValue = fruits[indexPath.row]
        print(indexPath.item.self,selectedValue)
        
        if fruits[indexPath.row] == "Apple" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let apple = UIImageView()
            apple.translatesAutoresizingMaskIntoConstraints = false
            apple.image = UIImage(named: "Apple")
            a.view.addSubview(apple)
            
            NSLayoutConstraint.activate([
                apple.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                apple.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                apple.widthAnchor.constraint(equalToConstant: 300),
                apple.heightAnchor.constraint(equalToConstant: 300)
            ])
            
            navigationController?.pushViewController(a, animated: true)
            
        } else if fruits[indexPath.row] == "Banana" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let apple = UIImageView()
            apple.translatesAutoresizingMaskIntoConstraints = false
            apple.image = UIImage(named: "Banana")
            a.view.addSubview(apple)
            
            NSLayoutConstraint.activate([
                apple.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                apple.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                apple.widthAnchor.constraint(equalToConstant: 300),
                apple.heightAnchor.constraint(equalToConstant: 300)
            ])
            
            navigationController?.pushViewController(a, animated: true)
            
            
        }
        else if fruits[indexPath.row] == "Cherry" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let apple = UIImageView()
            apple.translatesAutoresizingMaskIntoConstraints = false
            apple.image = UIImage(named: "Cherry")
            a.view.addSubview(apple)
            
            NSLayoutConstraint.activate([
                apple.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                apple.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                apple.widthAnchor.constraint(equalToConstant: 300),
                apple.heightAnchor.constraint(equalToConstant: 300)
            ])
            
            navigationController?.pushViewController(a, animated: true)
            
            
            
        }
    }
}
