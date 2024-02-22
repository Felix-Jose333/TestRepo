//
//  TableViewController.swift
//  Test
//
//  Created by Taxida on 12/02/24.
//
import UIKit

class TableViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    
    let fruits = ["Apple", "Banana", "Cherry", "Fig" , "Mango",]
    let counts = ["4","5","6","7"]
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
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Helloooooooo")
        let selectedValue = fruits[indexPath.row]
        print(indexPath.item.self,selectedValue)
        
        if fruits[indexPath.row] == "Apple"{
            let a = UIViewController()
            a.view.backgroundColor = .white
            var  Apple = UIImageView(frame:CGRect(x:10, y:100, width: 300, height: 300))
            Apple.image = UIImage(named: "Apple")
            a.view.addSubview(Apple)
            navigationController?.pushViewController(a, animated: true)
        
        }
        
        else if fruits[indexPath.row] == "Banana"{
            let b = UIViewController()
            b.view.backgroundColor = .white
            var  banana = UIImageView(frame:CGRect(x:10, y:100, width: 300, height: 300))
            banana.image = UIImage(named: "Banana")
            b.view.addSubview(banana)
            navigationController?.pushViewController(b, animated: true)
            
            
        }
        else if fruits[indexPath.row] == "Cherry"{
            let b = UIViewController()
            b.view.backgroundColor = .white
            var  banana = UIImageView(frame:CGRect(x:10, y:100, width: 300, height: 300))
            banana.image = UIImage(named: "Cherry")
            b.view.addSubview(banana)
            navigationController?.pushViewController(b, animated: true)
            
            
        }
        else if fruits[indexPath.row] == "Mango"{
            let b = UIViewController()
            b.view.backgroundColor = .white
            var  banana = UIImageView(frame:CGRect(x:10, y:100, width: 300, height: 300))
            banana.image = UIImage(named: "Mango")
            b.view.addSubview(banana)
            navigationController?.pushViewController(b, animated: true)
            
            
        }
        
        else if fruits[indexPath.row] == "Fig"{
            let b = UIViewController()
            b.view.backgroundColor = .white
            var  banana = UIImageView(frame:CGRect(x:10, y:100, width: 300, height: 300))
            banana.image = UIImage(named: "Fig")
            b.view.addSubview(banana)
            navigationController?.pushViewController(b, animated: true)


        }
       

    }
}

