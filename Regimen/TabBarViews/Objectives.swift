//
//  Objectives.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import SwiftUI

struct Objectives: View {
    //MARK:  PROPERTIES
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            VStack{
                Text("helloo")
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading, content: {
                    Button(action: {
                        HapticManager.notification(type: .success)
                    }, label: {
                        Text("SideMenu")
                    })
                })
                ToolbarItem(placement: .principal, content: {
                    Button(action: {
                        HapticManager.notification(type: .success)
                    }, label: {
                        HStack{
                            Image(systemName: "scope")
                                .resizable()
                                .fontWeight(.bold)
                                .offset(x: 25)
                                .tint(.blue)
                            
                            Text("bjectives")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontDesign(.serif)
                                .fontWeight(.bold)
                                .foregroundStyle(.blue)
                        }
                    })
                })
                ToolbarItem(placement: .topBarTrailing, content:  {
                    Button(action: {
                        HapticManager.notification(type: .success)
                        isPresented = true
                    },  label:  {
                        Image(systemName: "plus.circle.fill")
                    })
                })
            }
            .sheet(isPresented: $isPresented) {
                NavigationView{
                    AddObjectiveScreen { name, color in
                        do {
                            try FunctionsAndConstants.saveObjective(name, color)
                        } catch {
                            print (error)
                        }
                        
                        
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    TabBarHome()
        .environment(\.managedObjectContext, CoreDataProvider.shared.persistentContainer.viewContext)
}
