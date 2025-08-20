//
//  TeamPlayersView.swift
//  NbaStats
//
//  Created by Santiago Cordova on 19/08/25.
//

import SwiftUI

struct TeamPlayersView: View {
    let team: Team
    

    var body: some View {
        List(team.players) { player in
            HStack {
                Image(player.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(player.name)
                        .font(.headline)
                    Text("Estatura: \(player.height) cm")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle(team.name)
    }
}
