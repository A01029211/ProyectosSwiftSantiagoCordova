//
//  artViewModel.swift
//  CheckpointSantiagoCordova
//
//  Created by Alumno on 03/09/25.
//

import Foundation

@MainActor
@Observable
class artViewModel {
    var arrArt = [Artist]()
    
    init () {
        
        
        arrArt = load("artworkData.json")
        
        print(arrArt)
        
        
    }
    
    
    func load<T: Decodable >(_ filename: String) -> T {
        var data = Data()
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldnt upload \(filename) from main bundle: n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
        
    }
    
    
    
    
}
