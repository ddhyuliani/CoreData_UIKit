//
//  Employee+CoreDataProperties.swift
//  CoreData Starter
//
//  Created by Local Administrator on 26/06/22.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var age: String?
    @NSManaged public var name: String?

}

extension Employee : Identifiable {

}
