//
//  PhotoViewModel.swift
//  NasaApiPRactice
//
//  Created by Santiago Cordova on 21/08/25.
//


import Foundation

@Observable
class PhotoViewModel : ObservableObject{
    var arrPhotos = [Photo]()
    
    func getPhotosNasa() async throws {
        
        // Crear objeto
        guard let url = URL(string:  "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&count=10") else {
            print ("invalid url")
            return
        }
        
        // 2. Preparar el request a la pagina http con la url
        let urlRequest = URLRequest(url: url)
        
        //3. llamada con url session
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            print("error")
            return
        }
        
        // 4. decodificar la informacion de formato JSON
        let results = try JSONDecoder().decode([Photo].self, from: data)
        print (results)
        
        // 5. uzamos el thread principal para actualizar la variable de las fotos
        DispatchQueue.main.async{
            self.arrPhotos = results
        }
    }
}
