//
//  Pago.swift
//  ExpencesTracker
//
//  Created by Alumno on 24/09/25.
//

import Foundation
import SwiftData

@Model
class Pago{
    var typodePago: String
    var titulo: String
    var info: String
    var total: Int
    var dateAdded: Date
    
    init(typodePago: String, titulo: String, info: String, total: Int, dateAdded: Date) {
        self.typodePago = typodePago
        self.titulo = titulo
        self.info = info
        self.total = total
        self.dateAdded = dateAdded
    }
}
