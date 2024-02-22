//
//  TableViewController.swift
//  Test
//
//  Created by Taxida on 12/02/24.
//
import UIKit

class TableViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    
    let fruits = ["Apple", "Banana", "Cherry", "Mango"]
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

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Helloooooooo")
    }
    

}
