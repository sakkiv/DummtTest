//
//  ViewController.swift
//  ExampleSets
//
//  Created by VirtualStacks on 05/10/18.
//  Copyright © 2018 VirtualStacks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

      /*  let q = DispatchQueue.global()
        
        // Background thread
        q.sync{
             print("Helloo India_1!!!")
        }
        
        
        q.async {
            print("Helloo India_3!!!")
        }
        
        q.async{
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
        
        
        let LeftWorkZone = DispatchQueue(label: "perform_task_with_team_left")
        let RightWorkZone = DispatchQueue(label: "perform_task_with_team_Right")
      
        LeftWorkZone.sync {
            for numer in 1...3{ print("North \(numer)")}
        }
        RightWorkZone.sync {
            for numer in 1...3{ print("South \(numer)") }
        }
        
        
       self.HelloIndiaWorld()*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  /*  func HelloIndiaWorld()
    {
        
        
        DispatchQueue.global(qos: .background).async {
            // Call your background task
            DispatchQueue.main.async {
                print("Helloo India_2!!!")
            }
        }
        
        DispatchQueue.global(qos: .userInitiated).async {
            // Call your background task
            DispatchQueue.main.async {
                print("Helloo India_12!!!")
            }
        }
        
        DispatchQueue.global(qos: .default).async {
            // Call your background task
            DispatchQueue.main.async {
                print("Helloo India_22!!!")
            }
        }
    }
    
    func HelloIndiaWorld_1()
    {
        let qrs = DispatchQueue.main
     
        qrs.async {
            print("Helloo India_6!!!")
        }

        DispatchQueue.global(qos: .background).async {
            // Call your background task
            DispatchQueue.main.async {
                print("Helloo India_50!!!")
            }
        }
        
    
        print("Helloo India_4!!!")
    }*/
}
/*
 // OUTOUT:
 
 Helloo India_1!!!
 Helloo India_3!!!
 🔷 0
 Helloo India_4!!!
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
 North 1
 North 2
 North 3
 South 1
 South 2
 South 3
 
 -----------------
 
 Helloo India_7!!!
 Helloo India_6!!!
 Helloo India_50!!!
 Helloo India_12!!!
 Helloo India_22!!!
 Helloo India_2!!!


 
*/
