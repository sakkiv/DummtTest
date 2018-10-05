//
//  ViewController.swift
//  ExampleSets
//
//  Created by VirtualStacks on 05/10/18.
//  Copyright © 2018 VirtualStacks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func OperationQueue(_ sender: Any) {
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let q = DispatchQueue.global()
        
        q.sync{
             print("Helloo India_1!!!")
        }
        q.async {
            print("Helloo India_3!!!")
        }
        
        q.sync{
            self.HelloIndiaWorld_1()
        }
        
        
        let qrs = DispatchQueue.main
        qrs.async {
            print("Helloo India_7!!!")
        }
        
       
        
       self.HelloIndiaWorld()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func HelloIndiaWorld()
    {
        
         print("Helloo India_2!!!")
    }
    
    func HelloIndiaWorld_1()
    {
        let qrs = DispatchQueue.main
     
        qrs.async {
            print("Helloo India_6!!!")
        }

       
    
        print("Helloo India_4!!!")
    }
}
/*
 // OUTOUT:
 
 Helloo India_1!!!
 Helloo India_4!!!
 Helloo India_3!!!
 Helloo India_2!!!
 
 -----------------
 
 Helloo India_6!!!
 Helloo India_7!!!

 
*/
