//
//  FamiliasView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 28/10/22.
//

import SwiftUI

struct FamiliasView: View {
    @State var _familias: [Familia] = familias
    @StateObject var familiaViewModel = FamiliaViewModel()
    @State private var query = ""
    
    
    
    
    var body: some View {
        NavigationStack {
            Image("logoCasas")
                .resizable()
                .frame(height: 200)
            Spacer()
            List {
                ForEach(familiaViewModel.filteredData) { _familia in
                    NavigationLink(destination: FamiliaDetailView(familia: _familia)) {
                        Text(_familia.nombre)
                        Image(_familia.imagen)
                            .resizable()
                            .frame(width: 20,height: 20)
                            .padding(.leading)
                            
                    }
                }
            .navigationTitle("Familias")
            
            }
            .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always), prompt: "Buscar")
                
            .onSubmit(of: .search) {
                familiaViewModel.search(with: query)
            }
            .onChange(of: query) { newQuery in
                familiaViewModel.search(with: newQuery)
            }
            .onAppear{
                familiaViewModel.search(with: query)
            }
        }
    }
}

struct FamiliasView_Previews: PreviewProvider {
    static var previews: some View {
        FamiliasView(_familias: familias)
    }
}
