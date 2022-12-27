//
//  JesonDataLoader.swift
//  Networking-Json-Table
//
//  Created by Consultant on 12/25/22.
//

import Foundation


//import UIKit


public class JsonDataLoader
{
    //@Publish allows to update in a more efficient way
    @Published var employeeData = [EmployeeData]()
    
    init (){
        parseJSON()
        sort()
    }
    
    func parseJSON() {
        if let fileLocation = Bundle.main.url(forResource: "Employee", withExtension: "json") {
            
            //IN CASE OF ERROR
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([EmployeeData].self, from: data)
                
                self.employeeData = dataFromJson
            }catch{
                print(error)
            }
         }
    
    }
    func sort(){
                                           //Sorting in assending order
        self.employeeData = self.employeeData.sorted(by: { $0.employee_id < $1.employee_id})
    }
    
}





