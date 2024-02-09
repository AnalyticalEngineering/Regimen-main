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
    @NSManaged public var reminders: NSSet?
}

extension Objective: Identifiable {
    
}

// MARK: Generated accessors for notes
extension Objective {

}
