//
//  PlaceRowView.swift
//  Activity3_MyFirstApp
//
//  Created by Alumno on 18/08/25.
//

import SwiftUI

struct PlaceRowView: View {
    let place: Place
    
    var body: some View {
        HStack {
            Image(place.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            Text(place.name)
        }
    }
}

#Preview {
    PlaceRowView(place: Place(name: "ChichenItza", imageName: "ChichenItza"))
}
