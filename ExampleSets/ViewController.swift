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
}

// OUTOUT: Helloo India_1!!!
//         Helloo India_2!!!
