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
            Player(name: "Cobe White", imageName: "CobyWhite", height: 196),
            Player(name: "Nikola Vucevic", imageName: "NikolaVucevic", height: 200),
            Player(name: "Matas Buzelis", imageName: "MatasBuzelis", height: 206)
        ]

        let bostonPlayers = [
            Player(name: "Jayson Tatum", imageName: "JaysonTatum", height: 203),
            Player(name: "Jaylen Brown", imageName: "JaylenBrown", height: 198),
            Player(name: "Derric kWhite", imageName: "DerrickWhite", height: 193),
            Player(name: "Miles Norris", imageName: "MilesNorris", height: 204),
            Player(name: "Al Horfords", imageName: "AlHorford", height: 199),
        ]

        let lakersPlayers = [
            Player(name: "LeBron James", imageName: "LebronJames", height: 206),
            Player(name: "Luck Doncic", imageName: "LuckDoncic", height: 196),
            Player(name: "Rui Hachimura", imageName: "RuiHachimura", height: 210),
            Player(name: "Dorian Finney", imageName: "DorianFinney", height: 193),
            Player(name: "Austin Reaves", imageName: "AustinReaves", height: 197),
        ]
        
        let thunderPlayers = [
            Player(name: "Shai Gilgeous-Alexander", imageName: "ShaiGilgeousAlexander", height: 198),
            Player(name: "Luguentz Dort", imageName: "LuguentzDort", height: 196),
            Player(name: "Isaiah Hartenstein", imageName: "IsaiahHartenstein", height: 206),
            Player(name: "Chet Holmgren", imageName: "ChetHolmgren", height: 211),
            Player(name: "Isaiah Hartenstein", imageName: "IsaiahHartenstein", height: 213),
        ]

        arrayTeams.append(Team(name: "Chicago Bulls", imageName: "Chicago", players: chicagoPlayers))
        arrayTeams.append(Team(name: "Boston Celtics", imageName: "Boston", players: bostonPlayers))
        arrayTeams.append(Team(name: "Los Angeles Lakers", imageName: "Lakers1", players: lakersPlayers))
        arrayTeams.append(Team(name: "OKC Thunder", imageName: "Thunder", players: thunderPlayers))
        
    }
}

