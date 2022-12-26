//
//  EmployeeDataTableViewController.swift
//  Networking-Json-Table
//
//  Created by Dereje on 12/25/22.
//

import UIKit

class EmployeeDataTableViewController: UIViewController {
    
   
    @IBOutlet weak var tableView: UITableView!
    
    let data = JsonDataLoader().employeeData
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }

}

extension EmployeeDataTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as? EmployeeDataTableViewCell else { return UITableViewCell() }
    
        //cell.setupCell(indexPath: indexPath.row)
        
        cell.configureData(url: data[indexPath.row].employee_Images,
                           name: data[indexPath.row].employee_Name,
                           email: data[indexPath.row].employee_Email)
        
        return cell
      
    }

    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}




