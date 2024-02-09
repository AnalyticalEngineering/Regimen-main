//
//  ObjectiveCardView.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import SwiftUI

struct ObjectiveCardView: View {
    
    let objective: Objective
    
    var body: some View {
        HStack {
            Image(systemName: "scope")
                .foregroundStyle(Color(objective.color))
            Text(objective.name)
                .font(.title2)
                .fontDesign(.serif)
                .fontWeight(.bold)
                .foregroundStyle(Color(objective.color))
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .opacity(0.4)
                .padding([.trailing], 10)
        }
        .padding(.horizontal)
        .padding(.top, 5)
        .padding(.bottom, 5)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(objective.color), lineWidth: 2))
    }
}
#Preview {
    
            TabBarHome()
        }
   
