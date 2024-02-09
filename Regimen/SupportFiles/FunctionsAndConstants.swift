//
//  NotificationService.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import UIKit
import CoreData
import Foundation


class FunctionsAndConstants {
    
    static var viewContext: NSManagedObjectContext {
        CoreDataProvider.shared.persistentContainer.viewContext
    }
    
    static func save() throws {
        try viewContext.save()
    }
    
    static func saveObjective(_ name: String, _ color: UIColor) throws {
        let objective = Objective(context: viewContext)
        objective.name = name
        objective.color = color
        try save()
    }
    
}

    
    
    
    
    
    

