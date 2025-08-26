//
//  PokemonRowView.swift
//  API_Practice
//
//  Created by Alumno on 25/08/25.
//

import SwiftUI

struct PokemonRowView: View {
    let pokemon: PokemonEntry
    var body: some View {
        HStack{
            Text(pokemon.name)
                .font(.headline)
            Spacer()
        }
    }
}

