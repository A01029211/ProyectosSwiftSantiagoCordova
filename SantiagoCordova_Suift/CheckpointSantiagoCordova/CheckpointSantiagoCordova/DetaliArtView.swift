//
//  DetaliArtView.swift
//  CheckpointSantiagoCordova
//
//  Created by Alumno on 03/09/25.
//

import SwiftUI

struct DetaliArtView: View {
    let art : Artist
    var body: some View {
        VStack{
            Text(art.title)
                .font(.title)
                .bold()
            
            Text(art.artist)
                .font(.subheadline)
                
            
            Image(art.imageName)
                .resizable()
                .scaledToFit()
            
            Text(art.description)
                .font(.subheadline)
            
            
            
            
        }
    }
}

#Preview {
    DetaliArtView(art: Artist(artist: "Georges Seurat", title: "A Sunday on La Grande Jatte", description: "In his best-known and largest painting, Georges Seurat depicted people from different social classes strolling and relaxing in a park just west of Paris on La Grande Jatte, an island in the Seine River. Although he took his subject from modern life, Seurat sought to evoke the sense of timelessness associated with ancient art, especially Egyptian and Greek sculpture. He once wrote, “I want to make modern people, in their essential traits, move about as they do on those friezes, and place them on canvases organized by harmonies of color.", imageName: "A_Sunday_on_La_Grande_Jatte"))
}
