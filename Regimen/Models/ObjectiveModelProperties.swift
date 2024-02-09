//
//  MyList+CoreDataProperties.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import Foundation
import CoreData
import UIKit

extension Objective {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Objective> {
        return NSFetchRequest<Objective>(entityName: "Objective")
    }

    @NSManaged public var name: String
    @NSManaged public var color: UIColor
    @NSManaged public var tasks: NSSet?
}

extension Objective: Identifiable {
    
}

// MARK: Generated accessors for notes
extension Objective {
    
    @objc(addTasksObject:)
    @NSManaged public func addToTasks(_ value: Task)
    
    @objc(removeTasksObject:)
    @NSManaged public func removeFromTasks(_ value: Task)
    
    @objc(addTasks:)
    @NSManaged public func addToTasks(_ values: NSSet)
    
    @objc(removeTasks:)
    @NSManaged public func removeFromTasks(_ values: NSSet)
}
