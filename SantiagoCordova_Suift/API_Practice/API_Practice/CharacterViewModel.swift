//
//  CharacterViewModel.swift
//  API_Practice
//
//  Created by Alumno on 25/08/25.
//

import Foundation

@Observable
class CharacterViewModel: ObservableObject {
    var arrPhoros = [Character]()
    
    func getInformation() async throws{
        // crear objeto
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/475") else {
            print("invlid url")
        }
        
    }
}
