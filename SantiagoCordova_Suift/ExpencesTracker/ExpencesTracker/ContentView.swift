//
//  ContentView.swift
//  ExpencesTracker
//
//  Created by Alumno on 24/09/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    let categorias = ["Comida", "Transporte", "Servicios", "Otros"]
    @Environment(\.modelContext) var context
    @Query(sort: \Pago.titulo, order: .forward) var pagos : [Pago]

    
    var body: some View {
        NavigationStack{
            List{
                ForEach(categorias, id: \.self) {
                    categoria in
                    NavigationLink(destination: ListaPagosView(categoria: categoria)){
                        
                    }
                    Text(categoria)
                        .font(.title2)
                        .padding()
                }
            }
            .navigationTitle("Lista de Gastos")
            .navigationBarTitleDisplayMode(.large)
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Pago.self], inMemory: true)
}
