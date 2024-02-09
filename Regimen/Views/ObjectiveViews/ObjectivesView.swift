//
//  ObjectivesView.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import SwiftUI
import CoreData


struct ObjectivesView: View {
    //MARK:  PROPERTIES
    @FetchRequest(sortDescriptors: [])
    private var objectiveResults: FetchedResults<Objective>
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                    ObjectiveListView(objectives: objectiveResults)
                       
                }
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            HapticManager.notification(type: .success)
                        }, label: {
                            Image(systemName: "line.3.horizontal.circle.fill")
                                .foregroundStyle(.blue)
                        })
                    }
                    ToolbarItem(placement: .principal) {
                        Button(action: {
                            HapticManager.notification(type: .success)
                        }, label: {
                            HStack{
                                Image(systemName: "scope")
                                    .offset(x: 10)
                                    .tint(.blue)
                                    .fontWeight(.bold)
                                    .tint(.blue)
                                Text("bjectives")
                                    .font(.title2)
                                    .fontDesign(.serif)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                            }
                        })
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            isPresented = true
                            HapticManager.notification(type: .success)
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundStyle(.blue)
                        })
                    }
                }
                .sheet(isPresented: $isPresented) {
                    NavigationView {
                        AddObjectiveScreen { name, color in
                            do {
                                try TaskService.saveObjective(name, color)
                            } catch {
                                print(error)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
            
#Preview {
    TabBarHome()
        .environment(\.managedObjectContext, CoreDataProvider.shared.persistentContainer.viewContext)
}
