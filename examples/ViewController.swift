//
//  ViewController.swift
//  examples
//
//  Created by Flavio Franco Tunqui on 11/11/19.
//  Copyright © 2019 Flavio Franco Tunqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let arrayTopics = ["Animation", "Constraints by Code", "Networking native"]

    @IBOutlet weak var tblTopics: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    func setupTableView() {
        self.tblTopics.delegate = self
        self.tblTopics.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTopics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell(style: .value1, reuseIdentifier: "cell")

        cell.textLabel?.text = arrayTopics[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
