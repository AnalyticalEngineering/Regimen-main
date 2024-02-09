//
//  NotificationService.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import UIKit
import CoreData
import Foundation


class TaskService {
    
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
    
    
   
    static func saveTaskToObjective(objective: Objective, taskTitle: String) throws {
        let task = Task(context: viewContext)
        task.title = taskTitle
        objective.addToTasks(task)
        try save()
    }
    
}

    
    
    
    

