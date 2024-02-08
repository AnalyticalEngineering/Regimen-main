//
//  MyList+CoreDataProperties.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import Foundation
import CoreData
import UIKit

extension MyList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }

    @NSManaged public var name: String
    @NSManaged public var color: UIColor
    @NSManaged public var reminders: NSSet?
}

extension MyList: Identifiable {
    
}

// MARK: Generated accessors for notes
extension MyList {

}