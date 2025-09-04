//
//  ContentView.swift
//  CheckpointSantiagoCordova
//
//  Created by Alumno on 03/09/25.
//

import SwiftUI


struct ContentView: View {
    
@State private var artVM = artViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            VStack {

                List {
                    ForEach(artVM.arrArt) { item in
                        
                        NavigationLink {
                            DetaliArtView(art: item)
                        } label: {
                            ArtRowView(art: item)
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
