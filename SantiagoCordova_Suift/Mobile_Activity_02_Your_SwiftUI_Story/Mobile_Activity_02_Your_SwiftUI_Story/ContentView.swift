//
//  ContentView.swift
//  Mobile_Activity_02_Your_SwiftUI_Story
//
//  Created by Alumno on 13/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isScaled = false
    
    var body: some View {
        VStack {
            HStack {
                Image("ChichenItza")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .clipShape(Circle())
                VStack (alignment: .leading){
                    Text("Acount")
                        .fontWeight(.bold)
                        .font(.headline)
                    Text("Chicenitza, yucatan")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                Spacer()
                
                Image(systemName: "ellipsis")
                
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            Image("ChichenItza")
                .resizable()
                .scaledToFit()
            
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundStyle(Color(.red))
                    .scaleEffect(isScaled ? 1.5 : 1)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1)){
                            isScaled.toggle()
                        }
                    }
                Image(systemName: "message")
                Image(systemName: "paperplane")
                
                Spacer()
                
                Image(systemName: "save")
            }
            .font(.title2)
            .padding(.horizontal)
            .padding(.vertical, 5)
            
            
            VStack (alignment: .leading){
                Text("chicenitza_")
                    .fontWeight(.bold) +
                Text("Chichén Itza, antigua ciudad maya. Este sitio arqueológico es un testimonio del ingenio y la habilidad de una cultura que dejó un legado perdurable en la historia de la humanidad.")
                Text("13 Mayo 2025")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            
            Divider()
            Spacer()
            
                
        }
        
    }
}

#Preview {
    ContentView()
}
