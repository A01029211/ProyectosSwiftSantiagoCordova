//
//  TeamPlayersView.swift
//  NbaStats
//
//  Created by Alumno on 19/08/25.
//

import SwiftUI

struct TeamPlayersView: View {
    let teamName: String
    let viewModel: PlayersViewModel
    
    var players: [Player] {
        switch teamName {
        case "Chicago, Bulls":
            return viewModel.arrayPlayersChicago
        case "Boston, Celtics":
            return viewModel.arrayPlayersBoston
        case "Los Angeles, Lakers":
            return viewModel.arrayPlayersLakers
        default:
            return []
        }
    }

    var body: some View {
        List(players) { player in
            HStack {
                Image(player.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .containerShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(player.name)
                        .font(.headline)
                    Text("Estatura: \(player.height) cm")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
