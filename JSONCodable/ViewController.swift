//
//  ViewController.swift
//  JSONCodable
//
//  Created by SARA Technologies  on 21/06/20.
//  Copyright © 2020 SARA Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getEmployees()
    }
    
    
    func getEmployees() {
        
        guard let url = URL(string: "http://dummy.restapiexample.com/api/v1/employees")
        else{
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if error != nil{
                print("error in json parsing")
            }
            
            if let data = data {
                do {
                    let res = try JSONDecoder().decode(Response.self, from: data)
                    let status = res.status
                    print(status)
                    let users = res.user
                    print(users as Any)
                } catch let error {
                   print(error)
                }
            }
        }.resume()
    }
}

