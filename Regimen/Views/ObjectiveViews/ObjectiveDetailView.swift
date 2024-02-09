//
//  ObjectiveDetailView.swift
//  Regimen
//
//  Created by J. DeWeese on 2/9/24.
//

import SwiftUI

struct ObjectiveDetailView: View {
    let objective: Objective
    @State private var openAddTask: Bool = false
    @State private var title: String = ""
    
    private var isFormValid: Bool {
        !title.isEmpty
    }
    
    var body: some View {
        VStack {
                
            // Display List of Tasks
            
            HStack {
                Image(systemName: "plus.circle.fill")
                Button("Add Task") {
                    openAddTask = true
                }
            }.foregroundColor(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        }.alert("Add Task", isPresented: $openAddTask) {
            TextField("", text: $title)
            Button("Cancel", role: .cancel) { }
            Button("Done") {
                if isFormValid {
                    do {
                        try TaskService.saveTaskToObjective(objective: objective, taskTitle: title)
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
        }
    }
}

#Preview {
    ObjectiveDetailView(objective: Objective())
}
