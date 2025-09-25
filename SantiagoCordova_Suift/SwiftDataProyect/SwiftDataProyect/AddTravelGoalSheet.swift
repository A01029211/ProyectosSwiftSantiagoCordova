//
//  AddTravelGoalSheet.swift
//  SwiftDataProyect
//
//  Created by Alumno on 23/09/25.
//

import SwiftUI
import SwiftData

struct AddTravelGoalSheet: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var context
    
    @State private var name : String = ""
    @State private var dateAdded : Date = .now
    @State private var visited : Bool = false
    
    var body: some View {
        NavigationStack{
        Form{
            TextField("Destination", text: $name)
            DatePicker("Date", selection: $dateAdded, displayedComponents: .date)
            Toggle("Visited", isOn: $visited)
        }
        .navigationTitle("New Travel Goal")
        .navigationBarTitleDisplayMode(.large)
        .toolbar{
            ToolbarItemGroup(placement: .topBarLeading){
                Button("Cancel"){
                    dismiss()
                }
            }
            ToolbarItemGroup(placement: .topBarTrailing) {
                Button("Save"){
                    guard TravelGoal.isValidName(name) else { return }
                    let travelGoal = TravelGoal(name: name, dateAdded: dateAdded, visited: visited)
                    context.insert(travelGoal)
                    try! context.save()
                    dismiss()
                }
                .disabled(!TravelGoal.isValidName(name))
            }
        }
        
    }
}
}

#Preview {
    AddTravelGoalSheet()
}
