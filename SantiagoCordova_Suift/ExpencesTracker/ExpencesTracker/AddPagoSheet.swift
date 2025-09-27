import SwiftUI
import SwiftData

struct AddPagoSheet: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    var categoria: String   // para saber a qué categoría pertenece el pago
    
    @State private var titulo: String = ""
    @State private var info: String = ""
    @State private var total: String = ""
    @State private var dateAdded: Date = .now
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Información del pago") {
                    TextField("Título", text: $titulo)
                    TextField("Descripción", text: $info)
                    TextField("Monto", text: $total)
                        .keyboardType(.numberPad)
                    DatePicker("Fecha", selection: $dateAdded, displayedComponents: .date)
                }
            }
            .navigationTitle("Nuevo gasto")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Guardar") {
                        guard let monto = Int(total) else { return }
                        let nuevo = Pago(
                            typodePago: categoria,  // ¡clave para que pase el filtro!
                            titulo: titulo,
                            info: info,
                            total: monto,
                            dateAdded: dateAdded
                        )
                        context.insert(nuevo)
                        // SwiftData autosavea, pero llamar save() hace el commit explícito:
                        try? context.save()
                        dismiss()
                    }
                    .disabled(!isValidPago)
                }
            }
        }
    }
    
    private var isValidPago: Bool {
        !titulo.isEmpty && Int(total) != nil
    }
}

#Preview {
    AddPagoSheet(categoria: "Comida")
        .modelContainer(for: [Pago.self], inMemory: true)
}
