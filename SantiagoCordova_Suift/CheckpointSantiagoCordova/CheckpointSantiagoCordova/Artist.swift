//
//  Artist.swift
//  CheckpointSantiagoCordova
//
//  Created by Alumno on 03/09/25.
//

import Foundation

struct Artist : Decodable, Identifiable {
    var id : Int
    var artist : String
    var title : String
    var description : String
    var imageName : String
}
