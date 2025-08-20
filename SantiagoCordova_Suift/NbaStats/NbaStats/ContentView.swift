//
//  ContentView.swift
//  NbaStats
//
//  Created by Santiago Cordova on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    let teamViewModel = TeamViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(teamViewModel.arrayTeams) { item in
                        NavigationLink {
                            TeamPlayersView(team: team)
                        } label: {
                            TeamRowView(team: team)
                        }
                    }
                }
            }
            .navigationTitle("NBA Teams")
        }
    }
}

#Preview {
    ContentView()
}
