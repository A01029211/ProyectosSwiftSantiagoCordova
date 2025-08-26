//
//  PokemonViewModel.swift
//  API_Practice
//
//  Created by Santiago Cordova on 25/08/25.
//



import Foundation

@Observable
class PokemonViewModel {
    var pokemonList = [PokemonEntry]()
    
    // Llamada para obtener los 151 Pokémon
    func getPokemonList() async throws {
        // 1. Crear objeto URL
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151&offset=0") else {
            print("URL inválida")
            return
        }
        
        // 2. Preparar request
        let urlRequest = URLRequest(url: url)
        
        // 3. Llamada con URLSession
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            print("Error en la respuesta")
            return
        }
        
        // 4. Decodificar JSON (nota: el array está dentro de "results")
        let result = try JSONDecoder().decode(PokemonListResponse.self, from: data)
        print(result.results)
        
        // 5. Actualizar variable en el hilo principal
        DispatchQueue.main.async {
            self.pokemonList = result.results
        }
    }
    
    // Llamada para obtener el detalle de un Pokémon
    func getPokemonDetail(from urlString: String) async throws -> PokemonDetail {
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        return try JSONDecoder().decode(PokemonDetail.self, from: data)
    }
}

