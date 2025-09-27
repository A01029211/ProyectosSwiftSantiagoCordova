//
//  ListaPagosView.swift
//  ExpencesTracker
//
//  Created by Alumno on 24/09/25.
//

import SwiftUI
import SwiftData

struct ListaPagosView: View {
    @Environment(\.modelContext) var context
    var categoria: String
    @Query var pagos: [Pago]
    @State private var isShowingPagoSheet = false
    
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
        NavigationStack {
            List{
                ForEach (pagos){ pago in
                VStack(alignment: .leading, spacing: 4) {
                    Text(pago.titulo)
                    Text(pago.info)
                    Text("$\(pago.total)").bold()
                }
                .padding(.vertical, 4)
                
            }
                .onDelete { indexSet in
                        for index in indexSet {
                            context.delete(pagos[index])
                        }
                        try? context.save()   // opcional: forzar guardado inmediato
                    }
            }
            .navigationTitle(categoria)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingPagoSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isShowingPagoSheet) {
            AddPagoSheet(categoria: categoria)
        }
    }
}

#Preview {
    ListaPagosView(categoria: "Comida")
        .modelContainer(for: [Pago.self], inMemory: true)
}
