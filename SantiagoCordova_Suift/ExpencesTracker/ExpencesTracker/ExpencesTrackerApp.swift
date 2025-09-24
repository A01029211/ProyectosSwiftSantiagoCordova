//
//  ExpencesTrackerApp.swift
//  ExpencesTracker
//
//  Created by Alumno on 24/09/25.
//

import SwiftUI
import SwiftData

@main
struct ExpencesTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Pago.self])
    }
}
