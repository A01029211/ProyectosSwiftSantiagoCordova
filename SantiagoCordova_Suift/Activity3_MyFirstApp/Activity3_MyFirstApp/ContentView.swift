//
//  ContentView.swift
//  Activity3_MyFirstApp
//
//  Created by Santiago Cordova on 18/08/25.
//

import SwiftUI



struct ContentView: View {
    @State var placeViewModel = PlaceViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(placeViewModel.arrPlaces) { item in
                        
                        NavigationLink {
                            PlaceDetailView(place: item)
                        } label: {
                            PlaceRowView(place: item)
                        }
                        
                    }
                }
                
            }
            .padding()
        }
            
    }
}


#Preview {
    ContentView()
}


