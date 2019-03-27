//
//  ViewController.swift
//  DavidHidrogo250319CoreData
//
//  Created by Universidad Politecnica de Gómez Palacio on 3/25/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func registerUser(_ sender: Any)
    {
        let dictionary: [String:String] = ["email":"davidhidrogo3@gmail.com","password":"password","username":"David"]
        DBLocal.save(for: "User", attributes: dictionary)
        
        print (DBLocal.retrieve(for: "User"))
    }
    
    @IBAction func retrieveUsers(_ sender: Any)
    {
        print(DBLocal.retrieve(for: "User"))
        
      
    }
    
    @IBAction func updateUser(_ sender: Any)
    {
        let dictionary: [String:String] = ["email":"davidhidrogo3@gmail.com","password":"password","username":"David"]
        
        let predicate: NSPredicate = NSPredicate(format: "username = %@", "David")
        DBLocal.save(for: "User", attributes: dictionary, where: predicate)
        
        print (DBLocal.retrieve(for: "User"))
    }
    
    @IBAction func deleteUser(_ sender: Any)
    {
        let predicate: NSPredicate = NSPredicate(format: "username = %@", "David")
        DBLocal.delete(for: "User", where: predicate)
        
        print (DBLocal.retrieve(for: "User"))
    }
    
}

