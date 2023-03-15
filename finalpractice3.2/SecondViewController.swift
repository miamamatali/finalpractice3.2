//
//  SecondViewController.swift
//  finalpractice3.2
//
//  Created by Indira on 14/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    private var persons: [Person] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My Contacts"
               tableView.dataSource = self
               tableView.delegate = self
               initData()
        
}
    private func initData() {
            persons = [Person(name: "Mia", phoneNumber: "87778111", image: "Ellipse 21"),
            Person(name: "Dasha", phoneNumber: "651037002", image: "Ellipse 21"),
            Person(name: "Sarah", phoneNumber: "6839030", image: "Ellipse 21"),
            Person(name: "Mika", phoneNumber: "74378909", image: "Ellipse 21"),
            Person(name: "Uluk", phoneNumber: "74209089", image: "Ellipse 21"),
            Person(name: "Kama", phoneNumber: "6520969", image: "Ellipse 21"),
            Person(name: "Danya", phoneNumber: "123758", image: "Ellipse 21"),
            Person(name: "Abai", phoneNumber: "8615809", image: "Ellipse 21"),
            Person(name: "Sanya", phoneNumber: "7628095", image: "Ellipse 21")
                       ]
        }
        
    }

    extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            cell.textLabel?.text = persons[indexPath.row].name
            cell.detailTextLabel?.text = persons[indexPath.row].phoneNumber
            cell.imageView?.image = UIImage(systemName: persons[indexPath.row].image)
            return cell
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            persons.count
        }
        
       
        func tableView(_ tableView: UITableView, heightForRowAt IndexPath: IndexPath) -> CGFloat{
            80
        }
    }

    struct Person {
        var name: String
        var phoneNumber: String
        var image: String
    }
