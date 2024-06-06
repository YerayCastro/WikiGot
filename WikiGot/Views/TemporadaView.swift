//
//  TemporadaView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 9/11/22.
//

import SwiftUI

struct TemporadaView: View {
    @State var _temporadas: [Temporada] = temporadas
    @StateObject var temporadaViewModel = TemporadaViewModel()
    @State private var query = ""

    
    
    var body: some View {
        NavigationStack {
            Image("LogoTemporadas")
                .resizable()
                .frame(height: 200)
            Spacer()
            List {
                ForEach(temporadaViewModel.filteredData) { _temporada in
                    NavigationLink(destination: TemporadaDetailView(temporada: _temporada)) {
                        Text(_temporada.nombre)
                    }
                }
            .navigationTitle("Temporadas")
            }
            .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always), prompt: "Buscar")
                
            .onSubmit(of: .search) {
                temporadaViewModel.search(with: query)
            }
            .onChange(of: query) { newQuery in
                temporadaViewModel.search(with: newQuery)
            }
            .onAppear{
                temporadaViewModel.search(with: query)
            }
        }
    }
}

struct TemporadaView_Previews: PreviewProvider {
    static var previews: some View {
        TemporadaView(_temporadas: temporadas)
    }
}
