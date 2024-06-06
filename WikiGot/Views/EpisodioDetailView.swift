//
//  EpidodioDetailView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 10/11/22.
//

import SwiftUI

struct EpisodioDetailView: View {
    @State var episodio: Episodio
    var body: some View {
        ScrollView {
            VStack {
                Image(episodio.imagen)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                Spacer()
                Text(episodio.nombre)
                    .bold()
                    .font(.largeTitle)
            }
                
            VStack(alignment: .leading) {
                HStack{
                    Text("Numero de Episodio")
                        .font(.title3)
                        .bold()
                        .padding(.top)
                    Text(episodio.numero_episodio)
                        .font(.title3)
                        .bold()
                        .padding(.top)
                }
                
                Divider()
                
                Text("Trama")
                    .font(.title3)
                    .bold()
                Text(episodio.trama)
                
                Divider()
                
                VStack {
                    Text("Fecha de Emisión")
                        .font(.subheadline)
                        .bold()
                    Text(episodio.fecha_emision)
                    
                        
                    }
                    .frame(
                          minWidth: 0,
                          maxWidth: .infinity,
                          minHeight: 0,
                          maxHeight: .infinity,
                          alignment: .topLeading)
                }
            }
        .ignoresSafeArea()
        .padding()
        }
        
    }

        

struct EpisodioDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodioDetailView(episodio: getEpisodio(id: 0))
    }
}
