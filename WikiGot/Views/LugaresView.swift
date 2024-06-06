//
//  LugaresView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 28/10/22.
//

import SwiftUI

struct LugaresView: View {
    @State var _lugares: [Lugar] = lugares
    @StateObject var lugaresViewModel = LugaresViewModel()
    @State private var query = ""

    var body: some View {
        NavigationStack {
            Image("LogoLugares")
                .resizable()
                .frame(height: 200)
            Spacer()
            List {
                ForEach(lugaresViewModel.filteredData) { _lugar in
                    NavigationLink(destination: LugaresDetailView(lugar: _lugar)) {
                        Text(_lugar.nombre)
                    }
                }
            .navigationTitle("Lugares")
            
            }
            .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always), prompt: "Buscar")
                
            .onSubmit(of: .search) {
                lugaresViewModel.search(with: query)
            }
            .onChange(of: query) { newQuery in
                lugaresViewModel.search(with: newQuery)
            }
            .onAppear{
                lugaresViewModel.search(with: query)
            }
        }
    }
}

struct LugaresView_Previews: PreviewProvider {
    static var previews: some View {
        LugaresView(_lugares: lugares)
    }
}
