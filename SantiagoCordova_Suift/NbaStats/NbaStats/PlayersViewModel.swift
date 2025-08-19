//
//  PlayersViewModel.swift
//  NbaStats
//
//  Created by Alumno on 19/08/25.
//

import SwiftUI

@Observable
class PlayersViewModel {
    var arrayPlayersChicago = [Player]()
    var arrayPlayersBoston = [Player]()
    var arrayPlayersLakers = [Player]()
    
    
    init() {
        
        // jugadores de chicago
        let Player1 = Player(name: "Josh Giddy", imageName: "JoshGiddey", height: 202)
        arrayPlayersChicago.append(Player1)
        
        let Player2 = Player(name: "Lonzo Ball", imageName: "LonzoBall", height: 197)
        arrayPlayersChicago.append(Player2)
        
        let Player3 = Player(name: "Cobe White", imageName: "Chicago", height: 196)
        arrayPlayersChicago.append(Player3)
        
        // jugadores de boston
        let Player6 = Player(name: "Josh Giddy", imageName: "JoshGiddey", height: 202)
        arrayPlayersBoston.append(Player6)
        
        let Player7 = Player(name: "Lonzo Ball", imageName: "LonzoBall", height: 197)
        arrayPlayersBoston.append(Player7)
        
        let Player8 = Player(name: "Cobe White", imageName: "Chicago", height: 196)
        arrayPlayersBoston.append(Player8)
        
        // Jugadores Lakers
        let Player11 = Player(name: "Josh Giddy", imageName: "JoshGiddey", height: 202)
        arrayPlayersLakers.append(Player11)
        
        let Player12 = Player(name: "Lonzo Ball", imageName: "LonzoBall", height: 197)
        arrayPlayersLakers.append(Player12)
        
        let Player13 = Player(name: "Cobe White", imageName: "Chicago", height: 196)
        arrayPlayersLakers.append(Player13)
    }
    
    
}
