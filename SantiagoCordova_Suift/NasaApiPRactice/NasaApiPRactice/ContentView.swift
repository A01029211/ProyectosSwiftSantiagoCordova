//
//  ContentView.swift
//  NasaApiPRactice
//
//  Created by Alumno on 21/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var fotoVM = PhotoViewModel()
    
    var body: some View {
        VStack {
            List(fotoVM.arrPhotos) { item in
                Text(item.title)
                AsyncImage(url: URL(string: item.url!))
                    .scaledToFit()
                    .frame(height: 100)
                Text(item.explanation)
            }
            // task ayuda a correr codigo cuando la lista esta cargada o se actualizo
            .task {
                do{
                    try await fotoVM.getPhotosNasa()
                } catch {
                    print("Error al cargar las fotos")
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
