//
//  PersonajesView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 28/10/22.
//

import SwiftUI

struct PersonajesView: View {
    @State var _personajes: [Personaje] = personajes
    @State var _familias: [Familia] = familias
    @StateObject var personajeViewModel = PersonajeViewModel()
    private var _favoritos: [Favorito] = favoritos
    @State private var query = ""
    
    var body: some View {
        NavigationStack {
            Image("LogoPersonajes")
                .resizable()
                .frame(height: 200)
            Spacer()
            List {
                ForEach(_familias) { _familia in
                    //if (_personajes.filter(aaa -> aaa.familia == _familia.id).count > 0) {
                        Section {
                            ForEach(personajeViewModel.filteredData) { _personaje in
                                if (_personaje.familia == _familia.id) {
                                    NavigationLink(destination: PersonajeDetailView(personaje: _personaje)) {
                                            Text(_personaje.nombre)
                                        }        
                                } else {}
                            }
                        } header: {
                            Text(_familia.nombre)
                        }
                    //}
                }
            }
            .navigationTitle("Personajes")
            .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always), prompt: "Buscar")
                
            .onSubmit(of: .search) {
                personajeViewModel.search(with: query)
            }
            .onChange(of: query) { newQuery in
                personajeViewModel.search(with: newQuery)
            }
            .onAppear{
                personajeViewModel.search(with: query)
            }
        }
    }
    
    func favorite(personaje: Personaje) {
        //personaje.changeFavorite()
        favoritos.append(Favorito(id: personaje.id, nombre: personaje.nombre, tipoClase: personaje.tipoClase))
    }
}

struct PersonajesView_Previews: PreviewProvider {
    static var previews: some View {
        PersonajesView()
    }
}
