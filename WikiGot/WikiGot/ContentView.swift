//
//  ContentView.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 28/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var isActive:Bool = false
    @State private var selection: Tab = .casas
    
    enum Tab {
        case casas
        case personajes
        case lugares
        case temporadas
        case episodios
    }
    @State private var searchTerm = ""
    
    var body: some View {
        VStack {
            if self.isActive {
                TabView(selection: $selection) {
                    FamiliasView()
                        .tabItem {
                            Label("Casas", systemImage: "house.fill")
                        }
                    PersonajesView()
                        .tabItem {
                            Label("Personajes", systemImage: "person.fill")
                        }
                    LugaresView()
                        .tabItem {
                            Label("Lugares", systemImage: "location.fill")
                        }
                    TemporadaView()
                        .tabItem {
                            Label("Temporadas", systemImage: "list.number")
                        }
                    EpisodioView()
                        .tabItem {
                            Label("Episodios", systemImage: "list.triangle")
                        }
                }
                .padding()
            } else {
                SplashView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
