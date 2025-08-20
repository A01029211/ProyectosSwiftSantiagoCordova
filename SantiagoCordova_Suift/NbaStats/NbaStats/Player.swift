//
//  Player.swift
//  NbaStats
//
//  Created by Santiago Cordova on 19/08/25.
//

import Foundation

struct Player : Identifiable{
    var id = UUID()
    var name: String
    var imageName: String
    var height: Int
}
