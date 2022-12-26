//
//  extension.swift
//  Networking-Json-Table
//
//  Created by Dereje on 12/25/22.
//

//import Foundation
import UIKit


var imageCahce = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    func load(urlString: String) {
        guard let url = URL(string: urlString) else {return}
        
        DispatchQueue.global().async{[weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                  }
                
               }
            }
        }
    }
}

