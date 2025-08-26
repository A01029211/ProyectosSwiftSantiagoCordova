//
//  ContentView.swift
//  API_Practice
//
//  Created by Alumno on 25/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var pokemonVM = PokemonViewModel()
    
    var body: some View {
        NavigationStack {
            List(pokemonVM.pokemonList) { pokemon in
                NavigationLink {
                    PokemonDetailView(url: pokemon.url, pokemonVM: pokemonVM)
                } label: {
                    PokemonRowView(pokemon: pokemon)
                }
            }
            .task {
                do {
                    try await pokemonVM.getPokemonList()
                } catch {
                    print("Error al cargar Pokémon")
                }
            }
            .navigationTitle("Pokédex (Gen 1)")
        }
    }
}

#Preview {
    ContentView()
}

