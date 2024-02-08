//
//  Objectives.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import SwiftUI

struct Objectives: View {
    var body: some View {
        NavigationStack {
            VStack{
                
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
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button(action: {
                        HapticManager.notification(type: .success)
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                    })
                })
            }
        }
    }
}

#Preview {
    Objectives()
}
