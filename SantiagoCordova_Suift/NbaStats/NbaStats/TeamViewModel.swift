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
        let team1 = Team(name: "Chicago, Bulls", imageName: "Chicago")
        arrayTeams.append(team1)
        
        let team2 = Team(name: "Boston, Celtics", imageName: "Chicago")
        arrayTeams.append(team2)
        
        let team3 = Team(name: "Los Angeles, Lakers", imageName: "Chicago")
        arrayTeams.append(team3)
    }
}


