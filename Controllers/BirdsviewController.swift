//
//  BirdsviewController.swift
//  Test
//
//  Created by Taxida on 26/02/24.
//


import UIKit

class BirdsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let Animal = ["Bird1", "Bird2", "Bird3", "Bird4", "Bird5"]
    let AnimalImages = [UIImage(named: "Bird1"),UIImage(named: "Bird2"), UIImage(named: "Bird3"),  UIImage(named: "Bird4"), UIImage(named: "Bird5")]
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
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animal.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let animal = Animal[indexPath.row]
        let animalImage = AnimalImages[indexPath.row]
        //var count = Counts[indexPath.row]
        cell.textLabel?.text = "Name : \(animal)"
        cell.imageView?.image = animalImage
       // cell.textLabel?.text = count
        
        return cell
    }

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedValue = Animal[indexPath.row]
        print(indexPath.item.self,selectedValue)
        
        if Animal[indexPath.row] == "Bird1" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let apple = UIImageView()
            apple.translatesAutoresizingMaskIntoConstraints = false
            apple.image = UIImage(named: "Bird1")
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
        
        
        else if Animal[indexPath.row] == "Bird2" {
            let a = UIViewController()
            a.view.backgroundColor = .white
            let banana = UIImageView()
            banana.translatesAutoresizingMaskIntoConstraints = false
            banana.image = UIImage(named: "Bird2")
            a.view.addSubview(banana)
            
            NSLayoutConstraint.activate([
                banana.centerXAnchor.constraint(equalTo: a.view.centerXAnchor),
                banana.centerYAnchor.constraint(equalTo: a.view.centerYAnchor),
                banana.widthAnchor.constraint(equalToConstant: 300),
                banana.heightAnchor.constraint(equalToConstant: 300)
            ])
            navigationController?.pushViewController(a, animated: true)
            
        }
        
       
        
        
        
        else if Animal[indexPath.row] == "Bird3" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let fig = UIImageView()
            fig.translatesAutoresizingMaskIntoConstraints = false
            fig.image = UIImage(named: "Bird3")
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
        
        
        else if Animal[indexPath.row] == "Bird4" {

            let a = UIViewController()
            a.view.backgroundColor = .white
            let cherry = UIImageView()
            let cherryCount = UILabel()
            cherryCount.text = "5"
            cherry.translatesAutoresizingMaskIntoConstraints = false
            cherry.image = UIImage(named: "Bird4")
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
        
        
        else if Animal[indexPath.row] == "Bird5" {
            
            let a = UIViewController()
            a.view.backgroundColor = .white
            let mango = UIImageView()
            mango.translatesAutoresizingMaskIntoConstraints = false
            mango.image = UIImage(named: "Bird5")
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


