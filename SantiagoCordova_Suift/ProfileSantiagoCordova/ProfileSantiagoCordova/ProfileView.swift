//
//  ContentView.swift
//  ProfileSantiagoCordova
//
//  Created by Alumno on 02/09/25.
//

import SwiftUI

struct ProfileView: View {
    
    //Memojis
    let avatars = ["Memoji1", "Memoji2", "Memoji3"]
    @State private var selectedAvatar = "Memoji1"
    
    @State private var zoomLevel: CGFloat = 1.0 //zoom
    
    @State private var backgroundColor: Color = .gray
    
    @State private var isProfilePublic: Bool = false
    @State private var notificationsEnabled: Bool = false
    
    var body: some View {
        VStack {
            Text("Perfil")
                .font(.largeTitle)
                .bold()
            
            Image(selectedAvatar)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
                .background(Circle().fill(backgroundColor.opacity(0.8)).frame(width: 200))
                .clipShape(Circle())
                .shadow(radius: 5)
                .scaleEffect(zoomLevel)
                .padding()
            
            // picker para escojer la imagen de tu avatar
            Picker("Elige      tu     avatar", selection: $selectedAvatar) {
                ForEach(avatars, id: \.self) { avatar in
                    Text("avatar")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            HStack{
                Text("Zoom a imagen:")
                Slider(value: $zoomLevel, in: 1...1.3, step:0.05)
            }
            .padding()
            //Picker color fondo Memoji
            ColorPicker("Selecciona Color Fondo Memoji", selection: $backgroundColor)
            .padding()
            
            // agregar una lina divisora
            Divider()
            Toggle(isOn: $isProfilePublic){
                Text(isProfilePublic ? "Perfil Público" : "Perfil Privado")
            }
            .padding()
            
            Divider()
            Toggle(isOn: $notificationsEnabled){
                Text(notificationsEnabled ? "Notificaciones Activadas" : "Notificaciones Desactivadas")
            }
            .padding()
            
            Spacer()
            
            }
            .padding()
        }
        
    }


#Preview {
    ProfileView()
}
