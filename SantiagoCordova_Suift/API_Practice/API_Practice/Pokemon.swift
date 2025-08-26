//
//  Character.swift
//  API_Practice
//
//  Created by Alumno on 25/08/25.
//

import Foundation

// Respuesta de la lista de Pokémon
struct PokemonListResponse: Codable {
    let results: [PokemonEntry]
}

// Cada Pokémon en la lista
struct PokemonEntry: Codable, Identifiable {
    let name: String
    let url: String
    var id: String { url }
}

// Detalle de un Pokémon
struct PokemonDetail: Codable {
    let id: Int
    let name: String
    
    let sprites: Sprites
    let types: [PokemonTypeSlot]
}

// Imagen del Pokémon
struct Sprites: Codable {
    let front_default: String?
}

// Tipo de pokemon
struct PokemonTypeSlot: Codable {
    let slot: Int
    let type: PokemonType
}

struct PokemonType: Codable {
    let name: String
}
