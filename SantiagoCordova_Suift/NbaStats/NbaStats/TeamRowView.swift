//
//  TeamRowView.swift
//  NbaStats
//
//  Created by Santiago Cordova on 19/08/25.
//

import SwiftUI

struct TeamRowView: View {
    let team: Team
    
    var body: some View {
        
        HStack {
            Image(team.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            
            Text(team.name)
        }
    }
}

#Preview {
    TeamRowView(team: Team(name: "Chicago, Bulls", imageName: "Chicago", players: []))
}
