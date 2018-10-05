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
        
        // Background thread
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
        
       
        // Background thread
        q.sync {
            for i in 0..<10 {
                print("🔷", i)
            }
        }
        // Main thread
        for i in 20..<30 {
            print("⚪️", i)
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
 🔷 0
 🔷 1
 🔷 2
 🔷 3
 🔷 4
 🔷 5
 🔷 6
 🔷 7
 🔷 8
 🔷 9
 ⚪️ 20
 ⚪️ 21
 ⚪️ 22
 ⚪️ 23
 ⚪️ 24
 ⚪️ 25
 ⚪️ 26
 ⚪️ 27
 ⚪️ 28
 ⚪️ 29
 Helloo India_2!!!
 
 -----------------
 
 Helloo India_6!!!
 Helloo India_7!!!


 
*/
