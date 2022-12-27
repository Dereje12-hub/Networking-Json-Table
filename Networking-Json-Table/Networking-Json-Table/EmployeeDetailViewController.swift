//
//  EmployeeDetailViewController.swift
//  Networking-Json-Table
//
//  Created by Consultant on 12/26/22.
//

import UIKit

class EmployeeDetailViewController: UIViewController {

    var data = JsonDataLoader().employeeData
    var employeeIndex = 0
    
    
    @IBOutlet weak var employeeImage: UIImageView!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeImage.load(urlString: data[employeeIndex].employee_Images)
        // Do any additional setup after loading the view.
        //employeeImage.image = UIImage(named: data[employeeIndex].employee_Images)
        
    }
    



}



