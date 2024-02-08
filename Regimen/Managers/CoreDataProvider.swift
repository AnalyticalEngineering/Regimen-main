//
//  Provider.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import SwiftUI
import CoreData

class CoreDataProvider {
    
    static let shared = CoreDataProvider()
    let persistentContainer: NSPersistentContainer
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name: "RegimenModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error {
                fatalError("Error initializing RemindersModel \(error)")
            }
        }
        
    }
    
}
