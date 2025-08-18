//
//  PlaceViewModel.swift
//  Activity3_MyFirstApp
//
//  Created by Alumno on 18/08/25.
//

import Foundation

@Observable
class PlaceViewModel {
    
    var arrPlaces = [Place]()
    
    init(){
        let place = Place(name: "ChichenItza", imageName: "ChichenItza")
        arrPlaces.append(place)
        
        let place2 = Place(name: "Colosseum", imageName: "Colosseum")
        arrPlaces.append(place2)
        
        let place3 = Place(name: "TajMahal", imageName: "TajMahal")
        arrPlaces.append(place3)
    }
}
