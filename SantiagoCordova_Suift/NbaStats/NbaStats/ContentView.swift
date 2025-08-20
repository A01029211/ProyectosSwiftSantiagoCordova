//
//  ContentView.swift
//  NbaStats
//
//  Created by Santiago Cordova on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var teamViewModel = TeamViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(teamViewModel.arrayTeams) { team in
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
