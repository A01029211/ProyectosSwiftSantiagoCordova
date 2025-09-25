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
