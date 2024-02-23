//
//  VegViewController.swift
//  Test
//
//  Created by Taxida on 23/02/24.
//



import UIKit

class VegViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let fruits = ["Brinjal", "Bitterguard", "Carrot", "tomatto", "Beetroot"]
    let fruitImages = [UIImage(named: "Brinjal"), UIImage(named: "Bitterguard"), UIImage(named: "Carrot"), UIImage(named: "tomatto"), UIImage(named: "Beetroot")]
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

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let selectedValue = fruits[indexPath.row]
        print(indexPath.item.self,selectedValue)
        
        if fruits[indexPath.row] == "Beetroot" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let apple = UIImageView()
            apple.translatesAutoresizingMaskIntoConstraints = false
            apple.image = UIImage(named: "Beetroot")
            a.view.addSubview(apple)
//
            NSLayoutConstraint.activate([
                apple.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                apple.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                apple.widthAnchor.constraint(equalToConstant: 300),
                apple.heightAnchor.constraint(equalToConstant: 300)
            ])
            navigationController?.pushViewController(a, animated: true)
            
            
        }
        
        
        else if fruits[indexPath.row] == "Bitterguard" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let banana = UIImageView()
            banana.translatesAutoresizingMaskIntoConstraints = false
            banana.image = UIImage(named: "Bitterguard")
            a.view.addSubview(banana)
            
            NSLayoutConstraint.activate([
                banana.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                banana.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                banana.widthAnchor.constraint(equalToConstant: 300),
                banana.heightAnchor.constraint(equalToConstant: 300)
            ])
            navigationController?.pushViewController(a, animated: true)
            
        }
        
        
        else if fruits[indexPath.row] == "Carrot" {

            let a = UIViewController()
            a.view.backgroundColor = .white
            let cherry = UIImageView()
            let cherryCount = UILabel()
            cherryCount.text = "5"
            cherry.translatesAutoresizingMaskIntoConstraints = false
            cherry.image = UIImage(named: "Carrot")
            a.view.addSubview(cherry)
            a.view.addSubview(cherryCount)
            
            NSLayoutConstraint.activate([
                cherry.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                cherry.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                cherry.widthAnchor.constraint(equalToConstant: 300),
                cherry.heightAnchor.constraint(equalToConstant: 300)
            ])
            navigationController?.pushViewController(a, animated: true)
            
        }
        
        
        
        else if fruits[indexPath.row] == "tomatto" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let fig = UIImageView()
            fig.translatesAutoresizingMaskIntoConstraints = false
            fig.image = UIImage(named: "tomatto")
            a.view.addSubview(fig)
//
            NSLayoutConstraint.activate([
                fig.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                fig.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                fig.widthAnchor.constraint(equalToConstant: 300),
                fig.heightAnchor.constraint(equalToConstant: 300)
            ])
            navigationController?.pushViewController(a, animated: true)
            
        }
        
        
        
        
        else if fruits[indexPath.row] == "Brinjal" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let mango = UIImageView()
            mango.translatesAutoresizingMaskIntoConstraints = false
            mango.image = UIImage(named: "Brinjal")
            a.view.addSubview(mango)
//
            NSLayoutConstraint.activate([
                mango.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                mango.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                mango.widthAnchor.constraint(equalToConstant: 300),
                mango.heightAnchor.constraint(equalToConstant: 300)
            ])
            navigationController?.pushViewController(a, animated: true)
            
        }
        
    }
    
    
    
}





