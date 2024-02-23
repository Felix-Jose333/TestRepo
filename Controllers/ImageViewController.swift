//
//  ImageView.swift
//  Test
//
//  Created by Taxida on 23/02/24.
//
//


import UIKit

class ImageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let fruits = ["Apple", "Banana", "Cherry", "Fig", "Mango"]
    let fruitImages = [UIImage(named: "Apple"), UIImage(named: "Banana"), UIImage(named: "Cherry"), UIImage(named: "Fig"), UIImage(named: "Mango")]
    let Counts = ["4","5","24","12","13"]
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 70
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableView)
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let fruit = fruits[indexPath.row]
        let fruitImage = fruitImages[indexPath.row]
        //var count = Counts[indexPath.row]
        cell.textLabel?.text = "Name : \(fruit)"
        cell.imageView?.image = fruitImage
       // cell.textLabel?.text = count
        
        return cell
    }

}





