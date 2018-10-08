//
//  CoredataViewController.swift
//  ExampleSets
//
//  Created by VirtualStacks on 08/10/18.
//  Copyright © 2018 VirtualStacks. All rights reserved.
//

import Foundation


import CoreData

import UIKit


class CoredataViewController: UIViewController,someDelegate {
    
    
    
//    var Ell: EmployeeList?

    @IBOutlet weak var emp_id: UITextField!
    @IBOutlet weak var emp_dept: UITextField!
    @IBOutlet weak var emp_name: UITextField!
    
    
    let appDelegateObject = UIApplication.shared.delegate as! AppDelegate
    


   let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     //   Ell?.delegate = self

      
    }
    
    
    func playPauseDidTap() {
        print("play/pause tapped!!")
    }
    
    func valueLable(update : String){
        //self.lblTitle.text = update
        print("UpdatedValue",update)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
        public func createMainContext() -> NSManagedObjectContext {
            
            let modelUrl = Bundle.main.url(forResource: "ModelSecond", withExtension: "momd")
            guard let model = NSManagedObjectModel.init(contentsOf: modelUrl!) else { fatalError("model not found") }
            let psc = NSPersistentStoreCoordinator(managedObjectModel: model)
            try! psc.addPersistentStore(ofType: NSInMemoryStoreType, configurationName: nil, at: nil, options: nil)
            let context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
            context.persistentStoreCoordinator = psc
            return context
        }
        
     

    
    
    @IBAction func FetchFromCoreData(_ sender: Any) {
        emp_id.resignFirstResponder()
        emp_dept.resignFirstResponder()
        emp_name.resignFirstResponder()
        
        emp_id.text = ""
        emp_dept.text = ""
        emp_name.text = ""
        
        /*var tasks: [Employee] = []
        do {
            tasks = try context.fetch(Employee.fetchRequest())
         
            let taskCount : Int = tasks.count
            for index in 0..<taskCount
            {
                let dataValues = tasks[index]
                if let myName = dataValues.emp_id {
                    print("EmpID",myName)
                }
                
                if let emp_dept = dataValues.emp_dept {
                    print("Emp_Dept",emp_dept)
                }
                
                if let emp_Name = dataValues.emp_name {
                    print("Emp_Name",emp_Name)
                }
            }
            
            
        } catch {
            print("Fetching Failed")
        }*/
       
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee_1")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = self.createMainContext()
        
        let result = try! context.fetch(fetchRequest)
        print(result.count,context)
      
        
        
        let moc = DataController().managedObjectContext
        let personFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee_1")
        
        do {
            let fetchedPerson = try moc.fetch(personFetch) as! [EmployeeModel]
           //  print(fetchedPerson.first!.emp_id)
            // print(fetchedPerson.first!.emp_name)
            // print(fetchedPerson.first!.emp_dept)
            
        } catch {
            fatalError("Failed to fetch person: \(error)")
        }
        
        
    }
    
    @IBAction func SavetoCoredata(_ sender: Any) {
        //***** BY DEFAULT CREATED COREDATA ****** /
        
         let emp_id_val : String = self.emp_id.text!
         let emp_dept_val : String = self.emp_dept.text!
         let emp_name_val : String = self.emp_name.text!
        
      /*  let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Employee(context: context) // Link Task & Context
        
        task.emp_id = emp_id.text!
        task.emp_dept = emp_dept.text!
        task.emp_name = emp_name.text!
        
        emp_id.resignFirstResponder()
        emp_dept.resignFirstResponder()
        emp_name.resignFirstResponder()
        
        emp_id.text = ""
        emp_dept.text = ""
        emp_name.text = ""
        
        do {
            try context.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }*/
      
        
         //***** CUSTOM ADDED COREDATA ****** /
   
     
        
        
        var managedObjectContext = self.createMainContext()
        let employee = NSEntityDescription.insertNewObject(forEntityName: "Employee_1", into: managedObjectContext)
        // add our data
         employee.setValue(emp_id_val, forKey: "emp_id")
         employee.setValue(emp_dept_val, forKey: "emp_dept")
         employee.setValue(emp_name_val, forKey: "emp_name")
        // we save our entity
        
        
        do {
          
            
            try managedObjectContext.save()
        } catch {
            fatalError("Failure to save context: \(error)")
        }
    }
        
    }
    

/*
 
 
 
 
 */
