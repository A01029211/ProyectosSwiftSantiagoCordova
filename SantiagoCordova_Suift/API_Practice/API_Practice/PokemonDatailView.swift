//
//  PokemonDatailView.swift
//  API_Practice
//
//  Created by Santiago Cordova on 25/08/25.
//

import SwiftUI

struct PokemonDetailView: View {
    let url: String
    let pokemonVM: PokemonViewModel   
    @State private var pokemonDetail: PokemonDetail? = nil

    var body: some View {
        ScrollView {
            if let detail = pokemonDetail {
                VStack(spacing: 16) {
                    Text(detail.name.capitalized)
                        .font(.largeTitle)
                        .bold()

                    if let spriteString = detail.sprites.front_default,
                       let spriteURL = URL(string: spriteString) {
                        AsyncImage(url: spriteURL) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                                    .frame(width: 160, height: 160)
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 160, height: 160)
                            case .failure:
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 160, height: 160)
                            @unknown default:
                                EmptyView()
                            }
                        }
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Tipos")
                            .font(.headline)
                        ForEach(detail.types, id: \.slot) { slot in
                            Text(slot.type.name.capitalized)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
            } else {
                VStack {
                    ProgressView("Cargando...")
                }
                .frame(maxWidth: .infinity, minHeight: 200)
            }
        }
        .navigationTitle("Detalle")
        .navigationBarTitleDisplayMode(.inline)
        .task {
            do {
                pokemonDetail = try await pokemonVM.getPokemonDetail(from: url)

               
            } catch {
                print("Error cargando detalle del Pokémon: \(error)")
            }
        }
    }
}

#Preview {
    PokemonDetailView(
        url: "https://pokeapi.co/api/v2/pokemon/1/",
        pokemonVM: PokemonViewModel()
    )
}
