//
//  EmployeeModel.swift
//  ExampleSets
//
//  Created by VirtualStacks on 08/10/18.
//  Copyright © 2018 VirtualStacks. All rights reserved.
//


import UIKit
import CoreData
import Foundation

class EmployeeModel: NSManagedObject {
    

    @NSManaged var emp_id: String?
    @NSManaged var emp_dept: String?
    @NSManaged var emp_name: String?
}
