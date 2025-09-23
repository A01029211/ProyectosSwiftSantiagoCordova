//
//  SwiftDataProyectApp.swift
//  SwiftDataProyect
//
//  Created by Alumno on 23/09/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProyectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [TravelGoal.self])
    }
}
