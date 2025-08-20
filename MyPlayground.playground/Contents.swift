import SwiftUI

var arrPlaces = [Place]()

struct Place : Identifiable, Decodable {
    var id = UUID()
    var name : String
    var title: String
    var description: String
    var videoURL : String
    var imageName : [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case title
        case description
        case videoURL
        case imageName
    }
}

func loadPlaces() async throws -> [Place]{
    let url = URL(string: "https://tec-actions-test-production.up.railway.app/places")
    let(data, _) = try await URLSession.shared.data(from: url!)
    let places = try JSONDecoder().decode([Place].self, from: data)
    
    return places
}

arrPlaces = try await loadPlaces()

Task{
    arrPlaces .forEach {place in
        print(place.name)
    }
}
