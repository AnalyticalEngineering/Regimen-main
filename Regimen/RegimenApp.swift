//
//  RegimenApp.swift
//  Regimen
//
//  Created by J. DeWeese on 11/20/23.
//

import SwiftUI

@main
struct RegimenApp: App {
    var body: some Scene {
        WindowGroup {
           TabBarHome()
                .environment(\.managedObjectContext, CoreDataProvider.shared.persistentContainer.viewContext)
        }
    }
}
