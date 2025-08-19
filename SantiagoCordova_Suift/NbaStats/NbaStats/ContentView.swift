//
//  ContentView.swift
//  NbaStats
//
//  Created by Santiago Cordova on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(TeamViewModel.arrayTeams) { item in
                        
                        NavigationLink {
                            TeamPlayersView(teamName: <#T##String#>, viewModel: <#T##PlayersViewModel#>: item)
                        } label: {
                            TeamRowView(team: item)
                        }
                        
                    }
                }
                
            }
            .padding()
    }
}

#Preview {
    ContentView()
}
