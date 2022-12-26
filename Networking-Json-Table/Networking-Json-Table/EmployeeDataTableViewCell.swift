//
//  EmployeeDataTableViewCell.swift
//  Networking-Json-Table
//
//  Created by Dere on 12/25/22.
//

import UIKit

class EmployeeDataTableViewCell: UITableViewCell {
    
   // var data = JsonDataLoader().employeeData
   
   
    @IBOutlet weak var cellEmployeeImage: UIImageView!
    
    @IBOutlet weak var cellEmployeeName: UILabel!
    
    @IBOutlet weak var cellEmployeeEmail: UILabel!
    
    @IBOutlet weak var cellEmployeeId: UILabel!
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    /*
    func setupCell(indexPath: Int) {
        cellEmployeeImage.load(urlString: data[indexPath].employee_Images )
        cellEmployeeName?.text = "Name: " + data[indexPath].employee_Name
        cellEmployeeEmail?.text = "Email: " + data[indexPath].employee_Email
        cellEmployeeId?.text = "id: " //+ data[indexPath].employee_id
    }
     */
    
    func configureData(url: String, name: String, email: String){
        cellEmployeeImage.layer.cornerRadius = 50
        cellEmployeeImage.load(urlString: url)
        cellEmployeeName?.text = "Name: " + name
        cellEmployeeEmail?.text = "Email: " + email
    }
    
}


