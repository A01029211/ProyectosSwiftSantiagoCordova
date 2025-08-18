//
//  PlaceDetailView.swift
//  Activity3_MyFirstApp
//
//  Created by Alumno on 18/08/25.
//

import SwiftUI

struct PlaceDetailView: View {
    let place:Place
    
    var body: some View {
        VStack{
            Image(place.imageName)
                .resizable()
                .scaledToFit( )
            
            Text(place.name)
        }
    }
}

#Preview {
    PlaceDetailView(place: Place(name: "ChichenItza", imageName: "ChichenItza"))
}
