//
//  EmployeeList.swift
//  ExampleSets
//
//  Created by VirtualStacks on 08/10/18.
//  Copyright © 2018 VirtualStacks. All rights reserved.
//



import Foundation

import UIKit

protocol someDelegate {
  //  func valueLable(update : String)
    func playPauseDidTap()
}



class EmployeeList: UIViewController {
    
    
    //[self performSelectorOnBackgroundQueue:@selector(someMethod:) withObject:arg];
        var queue = OperationQueue()
         var delegate : someDelegate! = nil
        var nameOfTheCurrency: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.OperationQueueMethod()
        
    }

    @IBAction func onButtonTap(_ sender: Any)
    {
        nameOfTheCurrency = "EUR Pizza di Mama"
       
         self.performSegue(withIdentifier: "second", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
          // delegate.valueLable(update: "Hello I love My India!!!")
             delegate?.playPauseDidTap()
            let destination = segue.destination as! CoredataViewController
                
        }
    }
    
    func OperationQueueMethod()
    {
        queue.addOperation { () -> Void in
    
    //let img1 = Downloader.downloadImageWithURL(imageURLs[0])
    
            OperationQueue.main.addOperation({
  //  self.imageView1.image = img1
            print("IMAGE+0")
    })
    }
    
        queue.addOperation { () -> Void in
   // let img2 = Downloader.downloadImageWithURL(imageURLs[1])
    
            OperationQueue.main.addOperation({
   // self.imageView2.image = img2
                 print("IMAGE+1")
    })
    
    }
    
        queue.addOperation { () -> Void in
   // let img3 = Downloader.downloadImageWithURL(imageURLs[2])
    
            OperationQueue.main.addOperation({
   // self.imageView3.image = img3
                 print("IMAGE+2")
    })
    
    }
    
        queue.addOperation { () -> Void in
   // let img4 = Downloader.downloadImageWithURL(imageURLs[3])
    
            OperationQueue.main.addOperation({
    //self.imageView4.image = img4
         print("IMAGE+3")
    })
    }
}
}
