//
//  PersonajeDetailView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 3/11/22.
//

import SwiftUI

struct PersonajeDetailView: View {
    @State var personaje: Personaje
    var _titulosCasas: [TituloCasa] = titulosCasas
    
    
    
    var body: some View {
        ScrollView {
            VStack {
                Image(personaje.imagen)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                Spacer()
                Text(personaje.nombre)
                    .bold()
                    .font(.largeTitle)
            }
                
            VStack(alignment: .leading) {
                Text("Descripción")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                Text(personaje.descripcion)
                
                Divider()
                
                Text("Historia")
                    .font(.title3)
                    .bold()
                Text(personaje.historia)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Apariencia y Carácter")
                        .font(.title3)
                        .bold()
                    Text(personaje.apariencia ?? "")
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Origen")
                            .bold()
                        Text("· " + personaje.origen)
                        
                        Text("Título")
                            .bold()
                            .padding(.top)
                        ForEach(personaje.titulo, id: \.self) { titulo in
                            Text("· " + getTituloCasa(id: titulo).nombre)
                        }
                        
                        Text("Actor")
                            .bold()
                            .padding(.top)
                        Text("· " + personaje.actor)
                        
                        
                    }
                    .frame(
                          minWidth: 0,
                          maxWidth: .infinity,
                          minHeight: 0,
                          maxHeight: .infinity,
                          alignment: .topLeading)
                }
            }
        }
        .ignoresSafeArea()
        .padding()
    }
}

struct PersonajeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonajeDetailView(personaje: getPersonaje(id: 0))
    }
}
