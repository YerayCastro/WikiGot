//
//  EpisodioView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 10/11/22.
//

import SwiftUI

struct EpisodioView: View {
    
    @State var _episodios: [Episodio] = episodios
    @State var _temporadas: [Temporada] = temporadas
    @StateObject var episodioViewModel = EpisodioViewModel()
    @State private var query = ""
    
    var body: some View {
        NavigationStack {
            Image("LogoEpisodios")
                .resizable()
                .frame(height: 200)
            Spacer()
            List {
                ForEach(_temporadas) { _temporada in
                    //if (_personajes.filter(aaa -> aaa.familia == _familia.id).count > 0) {
                        Section {
                            ForEach(episodioViewModel.filteredData) { _episodio in
                                if (_episodio.temporada == _temporada.id) {
                                    NavigationLink(destination: EpisodioDetailView(episodio: _episodio)) {
                                        Text(_episodio.nombre)
                                    }
                                } else {}
                            }
                        } header: {
                            Text(_temporada.nombre)
                        }
                    //}
                }
            }
            .navigationTitle("Episodios")
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always), prompt: "Buscar")
            
        .onSubmit(of: .search) {
            episodioViewModel.search(with: query)
        }
        .onChange(of: query) { newQuery in
            episodioViewModel.search(with: newQuery)
        }
        .onAppear{
            episodioViewModel.search(with: query)
        }
    }
}

struct EpisodioView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodioView()
    }
}
