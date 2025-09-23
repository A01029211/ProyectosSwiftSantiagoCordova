//
//  UpdateTravelGoalSheet.swift
//  SwiftDataProyect
//
//  Created by Alumno on 23/09/25.
//

import SwiftUI

struct UpdateTravelGoalSheet: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var context
    
    @Bindable var travelGoal : TravelGoal
    var body: some View {
        NavigationStack{
        Form{
            TextField("Destination", text: $travelGoal.name)
            DatePicker("Date", selection: $travelGoal.dateAdded, displayedComponents: .date)
            Toggle("Visited", isOn: $travelGoal.visited)
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
                Button("Done"){
                    dismiss()
                }
            }
        }
        
    }
}
}

#Preview {
    UpdateTravelGoalSheet(travelGoal: TravelGoal(name: "Mexico", dateAdded: .now, visited: true))
}
