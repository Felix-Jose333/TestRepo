////
//  TableViewController.swift
//  Test
//
//  Created by Taxida on 12/02/24.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let Thing = ["Fruits", "Vegtables", "Cherry", "Fig", "Mango"]
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
        
        self.view.backgroundColor = .black
  
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Thing.count
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Thing[indexPath.row]
        cell.detailTextLabel?.text = counts[indexPath.row]
        cell.backgroundColor = .systemMint
        cell.tintColor = .blue
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                
        let selectedValue = Thing[indexPath.row]
        print(indexPath.item.self,selectedValue)
        
        if Thing[indexPath.row] == "Fruits" {
            let a = FruiteViewController()
            a.view.backgroundColor = .white

            navigationController?.pushViewController(a, animated: true)
            
        } else if Thing[indexPath.row] == "Vegtables" {
            let a = VegViewController()
            a.view.backgroundColor = .white

            navigationController?.pushViewController(a, animated: true)
        }
        else{
            let a = UIViewController()
            a.view.backgroundColor = .white

            navigationController?.pushViewController(a, animated: true)
        }
       
        
    }
}













