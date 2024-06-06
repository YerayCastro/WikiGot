//
//  TemporadaDetailView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 9/11/22.
//

import SwiftUI

struct TemporadaDetailView: View {
    @State var temporada: Temporada
    
    var body: some View {
        ScrollView {
            VStack{
                Image(temporada.imagen)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .frame(alignment: .center)
                    .clipShape(Circle())

                
                Spacer()
                Text(temporada.nombre)
                    .bold()
                    .font(.largeTitle)

            }
            VStack(alignment: .leading) {
                Text("Trama")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                Text(temporada.trama)
                
                Divider()
                
                Text("Fecha de primera emisión")
                    .font(.subheadline)
                    .bold()
                Text(temporada.primera_emision)
                
                Divider()
                
                Text("Fecha de última emisión")
                    .font(.subheadline)
                    .bold()
                Text(temporada.ultima_emision)
                
                Divider()
                
               
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

struct TemporadaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TemporadaDetailView(temporada: getTemporada(id: 0))
    }
}
