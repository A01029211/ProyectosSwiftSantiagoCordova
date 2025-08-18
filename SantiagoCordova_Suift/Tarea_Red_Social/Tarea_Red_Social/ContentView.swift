//
//  ContentView.swift
//  Tarea_Red_Social
//
//  Created by Santiago Cordova on 14/08/25.
//  Ejemplo Red Social Pinterest
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTopic: String = "All"
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                // Parte de arriba que tienen los temas que puedes explorar
                HStack {
                    Text("All")
                        .font(.subheadline)
                        .underline(selectedTopic == "All")
                        .onTapGesture {
                           selectedTopic = "All"
                        }
                    Text("Basketabll")
                        .font(.subheadline)
                        .underline(selectedTopic == "Basketball")
                        .onTapGesture {
                            selectedTopic = "Basketball"
                        }
                    Text("Tech")
                        .underline(selectedTopic == "Tech")
                        .onTapGesture {
                           selectedTopic = "Tech"
                        }
                    Text("Fashon")
                        .underline(selectedTopic == "Fashon")
                        .onTapGesture {
                           selectedTopic = "Fashon"
                        }
                    Text("Music")
                        .underline(selectedTopic == "Music")
                        .onTapGesture {
                           selectedTopic = "Music"
                        }
                }
            }
            padding()
            if selectedTopic == "All" {
                All_view()
            }
            else if selectedTopic == "Basketball" {
                Basketball_view()
            }
            else if selectedTopic == "Tech" {
                Tech_view()
            }
            
            HStack{
                Image(systemName: "house")
                
                Image(systemName: "magnifyingglass")
                
                Image(systemName: "plus")
                
                Image(systemName: "ellipsis.message")
                
                Image(systemName: "person")
            }
            .padding(EdgeInsets.init(top: 5, leading: 14, bottom: 5, trailing: 14))
        }
        .padding()
    }
}




struct All_view: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Image("Lebron")
                        .resizable()
                    
                    Text("Hello, World!")
                        .font(.headline)
                }
                HStack{
                    Image("Jordan")
                        .resizable()
                    
                    Text("Hello, World!")
                        .font(.headline)
                }
            }
            Spacer()
        }
    }
}

struct Basketball_view: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Image("Lebron")
                        .resizable()
                    
                    Text("Hello, World!")
                        .font(.headline)
                }
                HStack{
                    Image("Jordan")
                        .resizable()
                    
                    Text("Hello, World!")
                        .font(.headline)
                }
            }
            Spacer()
        }
    }
}


struct Tech_view: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Image("Lebron")
                        .resizable()
                    
                    Text("Hello, World!")
                        .font(.headline)
                }
                HStack{
                    Image("Jordan")
                        .resizable()
                    
                    Text("Hello, World!")
                        .font(.headline)
                }
            }
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}
