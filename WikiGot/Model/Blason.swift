//
//  Blason.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 4/11/22.
//

import Foundation

struct Blason: Hashable, Identifiable {
    var id: Int
    var nombre: String
    var descripcion: String
    var imagen: String
}

func getBlason(id: Int) -> Blason {
    return blasones.filter { blason in
        return blason.id == id
    }.first ?? Blason(id: -1, nombre: "", descripcion: "", imagen: "")
}

var blasones: [Blason] = [
    .init(id: 0, nombre: "Lannister", descripcion: "Un león rampante de oro sobre campo de gules.", imagen: "LogoLannister"),
    .init(id: 1, nombre: "Stark", descripcion: "Un lobo huargo de cenizo corriendo sobre campo de plata.", imagen: "LogoStark"),
    .init(id: 2, nombre: "Baratheon", descripcion: "Un venado coronado de sable sobre campo de oro.", imagen: "LogoBaratheon"),
    .init(id: 0, nombre: "Lannister", descripcion: "Un león rampante de oro sobre campo de gules.", imagen: "LogoLannister")
    
]
