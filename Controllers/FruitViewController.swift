//
//  FruitViewController.swift
//  Test
//
//  Created by Taxida on 23/02/24.
//


import UIKit

class FruiteViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let fruits = ["Apple", "Banana", "Cherry", "Fig", "Mango"]
    let fruitImages: [UIImage?] = [
        UIImage(named: "Apple")?.resized(to: CGSize(width: 50, height: 50)),
        UIImage(named: "Banana")?.resized(to: CGSize(width: 50, height: 50)),
        UIImage(named: "Cherry")?.resized(to: CGSize(width: 50, height: 50)),
        UIImage(named: "Fig")?.resized(to: CGSize(width: 50, height: 50)),
        UIImage(named: "Mango")?.resized(to: CGSize(width: 50, height: 50))
    ]
    
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
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
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
        
        if fruits[indexPath.row] == "Apple" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let apple = UIImageView()
            
            apple.translatesAutoresizingMaskIntoConstraints = false
            apple.image = UIImage(named: "Apple")
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
        
        
        else if fruits[indexPath.row] == "Banana" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let banana = UIImageView()
            banana.translatesAutoresizingMaskIntoConstraints = false
            banana.image = UIImage(named: "Banana")
            a.view.addSubview(banana)
            
            NSLayoutConstraint.activate([
                banana.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                banana.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                banana.widthAnchor.constraint(equalToConstant: 300),
                banana.heightAnchor.constraint(equalToConstant: 300)
            ])
            navigationController?.pushViewController(a, animated: true)
            
        }
        
        
        else if fruits[indexPath.row] == "Cherry" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let cherry = UIImageView()
            let cherryCount = UILabel()
            cherryCount.text = "5"
            cherry.translatesAutoresizingMaskIntoConstraints = false
            cherry.image = UIImage(named: "Cherry")
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
        
        
        
        else if fruits[indexPath.row] == "Fig" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let fig = UIImageView()
            fig.translatesAutoresizingMaskIntoConstraints = false
            fig.image = UIImage(named: "Fig")
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
        
        
        else if fruits[indexPath.row] == "Mango" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let mango = UIImageView()
            mango.translatesAutoresizingMaskIntoConstraints = false
            mango.image = UIImage(named: "Mango")
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

extension UIImage {
    func resized(to size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        defer { UIGraphicsEndImageContext() }
        self.draw(in: CGRect(origin: .zero, size: size))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
