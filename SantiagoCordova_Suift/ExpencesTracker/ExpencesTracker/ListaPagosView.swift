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
            
        }
    }
}

#Preview {
    
    ListaPagosView(categoria: "Comida")
}
