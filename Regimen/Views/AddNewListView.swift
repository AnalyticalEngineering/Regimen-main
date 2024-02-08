//
//  AddNewListView.swift
//  Regimen
//
//  Created by J. DeWeese on 2/8/24.
//

import SwiftUI

struct AddNewListView: View {
    ///MARK:  PROPERTIES
    @Environment(\.dismiss) private var dismiss
    @State private var name: String = ""
    @State private var selectedColor: Color = .orange
    ///Save
    let onSave: (String, UIColor) -> Void
    private var isFormValid: Bool {
        !name.isEmpty
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Image(systemName: "scope")
                        .foregroundStyle(Color.colorGreen)
                        .font(.system(size: 100))
                    TextField("Objective Name", text: $name)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(30)
                .clipShape(RoundedRectangle(cornerRadius: 12.0, style: .continuous))
                
                ColorPicker("Choose Color", selection: $selectedColor, supportsOpacity: false)
                    .padding(.horizontal)
                    .font(.title2)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 65)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Cancel"){
                            HapticManager.notification(type: .success)
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .principal ){
                        Text("New Objective")
                            .font(.title2)
                            .fontDesign(.serif)
                            .fontWeight(.bold)
                            .foregroundStyle(.secondary)
                    }
                        ToolbarItem(placement: .topBarTrailing) {
                            Button("Save"){
                                HapticManager.notification(type: .success)
                              onSave(name, UIColor(selectedColor))
                            }
                            .buttonStyle(.borderedProminent)
                            .disabled(!isFormValid)
                        }
                    }
                }
        }
    }

                      #Preview{
                          AddNewListView(onSave: {(_, _) in })
                }
