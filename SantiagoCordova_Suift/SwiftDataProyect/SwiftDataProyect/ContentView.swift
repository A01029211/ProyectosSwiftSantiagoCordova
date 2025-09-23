//
//  ContentView.swift
//  SwiftDataProyect
//
//  Created by Alumno on 23/09/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    @Query(sort: \TravelGoal.dateAdded) var travelGoals : [TravelGoal]
    
    // var travelGoals: [TravelGoal] = []
    
    @State private var isShowingItemSheat = false
    @State private var travelGoalToedit: TravelGoal?
    var body: some View {
        NavigationStack {
            List{
                ForEach(travelGoals) {
                    travelgoal in
                    Text(travelgoal.name)
                        .onTapGesture {
                            travelGoalToedit = travelgoal
                        }
                }
                .onDelete{ indexSet in
                    for index in indexSet {
                        context.delete(travelGoals[index])
                    }
                    
                }
            }
            .navigationTitle("Travel Goals")
            .navigationBarTitleDisplayMode(.large)
            .toolbar{
                Button("Add", systemImage: "plus") {
                    isShowingItemSheat = true
                }
            }
            .sheet(isPresented: $isShowingItemSheat){
                AddTravelGoalSheet()
            }
            .sheet(item: $travelGoalToedit) {
                travelGoal in UpdateTravelGoalSheet(travelGoal: travelGoal)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [TravelGoal.self], inMemory: true)
}
