//
//  TableViewController.swift
//  UITableView
//
//  Created by Temirlan Idrissov on 28.04.2022.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    
    private var names: [String] = ["Temirlan", "Ars", "adwad"]
    
    let tableView: UITableView = {
        let table = UITableView()
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        setUI()
    }
    
    private func setUI() {
        view.addSubview(tableView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    private func addNewNameToArray(name: String) {
        self.names.append(name)
        self.tableView.reloadData()
    }
    
    
}





extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "\(names[indexPath.row])"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {

                    // remove the item from the data model
                    names.remove(at: indexPath.row)

                    // delete the table view row
                    tableView.deleteRows(at: [indexPath], with: .fade)

                } else if editingStyle == .insert {
                    // Not used in our example, but if you were adding a new row, this is where you would do it.
                }
    }
    
}




