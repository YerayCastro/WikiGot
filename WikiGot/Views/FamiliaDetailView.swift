//
//  FamiliaDetailView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 8/11/22.
//

import SwiftUI

struct FamiliaDetailView: View {
    
    @State var familia: Familia
    var _titulosCasas: [TituloCasa] = titulosCasas
    
    
    var body: some View {
        ScrollView {
            VStack{
                Image(familia.imagen)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .frame(alignment: .center)
                
                Spacer()
                Text(familia.nombre)
                    .bold()
                    .font(.largeTitle)

            }
            VStack(alignment: .leading) {
                Text("Descripción")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                Text(familia.descripcion)
                
                Divider()
                
                Text("Historia")
                    .font(.title3)
                    .bold()
                Text(familia.historia)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Apariencia y Carácter")
                        .font(.title3)
                        .bold()
                    Text(familia.apariencia)
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Origen")
                            .bold()
                        Text("· " + familia.origen)
                            
                        Text("Títulos")
                            .bold()
                            .padding(.top)
                        ForEach(familia.titulos, id: \.self) { titulo in
                            Text("· " + getTituloCasa(id: titulo).nombre)
                        }

                        Text("Señor/a")
                            .bold()
                            .padding(.top)
                        ForEach(familia.senor, id: \.self) { senor in
                            Text("· " + getPersonaje(id: senor).nombre)
                        }
                        
                        Text("Region")
                            .bold()
                            .padding(.top)
                        ForEach(familia.region, id: \.self) { region in
                            Text("· " + getRegion(id: region).nombre)
                        }
                        
                        Text("Blasón")
                            .bold()
                            .padding(.top)
                        ForEach(familia.blason, id: \.self) { blason in
                            Text("· " + getBlason(id: blason).descripcion)
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
        }
        .ignoresSafeArea()
        .padding()
    }
}

struct FamiliaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FamiliaDetailView(familia: getFamilia(id: 0))
    }
}
