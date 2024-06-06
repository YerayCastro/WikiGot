//
//  RocacasterlyDetail.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 4/11/22.
//

import SwiftUI

struct LugaresDetailView: View {
    
    @State var lugar: Lugar
    
    var body: some View {
        ScrollView {
            VStack{
                Image(lugar.imagen)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .frame(alignment: .center)
                    .clipShape(Circle())

                
                Spacer()
                Text(lugar.nombre)
                    .bold()
                    .font(.largeTitle)

            }
            VStack(alignment: .leading) {
                Text("Descripción")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                Text(lugar.descripcion)
                
                Divider()
                
                Text("Historia")
                    .font(.title3)
                    .bold()
                Text(lugar.historia)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Características")
                        .font(.title3)
                        .bold()
                    Text(lugar.caracteristicas)
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Región")
                            .bold()
                        Text("· " + lugar.region)
                            
                        Text("Gobierno")
                            .bold()
                            .padding(.top)
                        Text("· " + lugar.gobierno)

                        Text("Religion")
                            .bold()
                            .padding(.top)
                        Text("· " + lugar.religion)
                        
                       
                        }
                        
            
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

struct LugaresDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LugaresDetailView(lugar: getLugar(id: 0))
    }
}
