//
//  ObjectiveListView.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//
import SwiftUI

struct ObjectiveListView: View {
    
    let objectives: FetchedResults<Objective>
    
    var body: some View {
        NavigationStack{
            ForEach(objectives) { objective in
                NavigationLink(value: objective) {
                    VStack {
                        ObjectiveCardView(objective: objective)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding([.leading], 10)
                            .font(.title3)
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .navigationDestination(for: Objective.self) { objective in
                ObjectiveDetailView(objective: objective)
                    .navigationTitle(objective.name)
            }
        }
    }
}
