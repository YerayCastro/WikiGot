//
//  Religion.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 8/11/22.
//

import Foundation

struct Region: Hashable, Identifiable {
    var id: Int
    var nombre: String
}

func getRegion(id: Int) -> Region {
    return regiones.filter { region in
        return region.id == id
    }.first ?? Region(id: -1, nombre: "")
}

var regiones: [Region] = [
    .init(id: 0, nombre: "Tierras del Oeste"),
    .init(id: 1, nombre: "El Norte"),
    .init(id: 2, nombre: "Bastión de Tormentas"),
    .init(id: 3, nombre: "Tierras de la Corona")
]
