//
//  TeamViewModel.swift
//  NbaStats
//
//  Created by Santiago Cordova on 19/08/25.
//

import SwiftUI

@Observable
class TeamViewModel {
    var arrayTeams = [Team]()

    init() {
        let chicagoPlayers = [
            Player(name: "Josh Giddy", imageName: "JoshGiddey", height: 202),
            Player(name: "Lonzo Ball", imageName: "LonzoBall", height: 197),
            Player(name: "Cobe White", imageName: "Chicago", height: 196)
        ]

        let bostonPlayers = [
            Player(name: "Jayson Tatum", imageName: "Tatum", height: 203),
            Player(name: "Jaylen Brown", imageName: "Brown", height: 198)
        ]

        let lakersPlayers = [
            Player(name: "LeBron James", imageName: "LeBron", height: 206),
            Player(name: "Anthony Davis", imageName: "AD", height: 208)
        ]

        arrayTeams.append(Team(name: "Chicago Bulls", imageName: "Chicago", players: chicagoPlayers))
        arrayTeams.append(Team(name: "Boston Celtics", imageName: "Boston", players: bostonPlayers))
        arrayTeams.append(Team(name: "Los Angeles Lakers", imageName: "Lakers", players: lakersPlayers))
    }
}

