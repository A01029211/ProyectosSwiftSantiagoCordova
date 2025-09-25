//
//  ListaPagosView.swift
//  ExpencesTracker
//
//  Created by Alumno on 24/09/25.
//

import SwiftUI
import SwiftData

struct ListaPagosView: View {
    
    var categoria: String
        @Query var pagos: [Pago]
    @State private var isShowingPagoSheat = false

        init(categoria: String) {
            self.categoria = categoria
            _pagos = Query(
                filter: #Predicate { pago in
                    pago.typodePago == categoria
                },
                sort: \.dateAdded,
                order: .reverse
            )
        }
    
    var body: some View {
        List(pagos){ pago in
            VStack{
                Text(pago.titulo)
                Text(pago.info)
                Text("$\(pago.total)")
                    .bold()
            }
            .padding(.vertical, 4)
            .toolbar{
                Button("Add", systemImage: "plus") {
                    isShowingPagoSheat = true
                }
            }
            .sheet(isPresented: $isShowingPagoSheat){
                AddPagoSheet(categoria: categoria)
            }
            
        }
    }
}

#Preview {
    ListaPagosView(categoria: "Comida")
        .modelContainer(for: [Pago.self], inMemory: true)
}
