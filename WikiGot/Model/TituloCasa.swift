//
//  TituloCasa.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 4/11/22.
//

import Foundation

struct TituloCasa: Hashable, Identifiable {
    var id: Int
    var nombre: String
}

func getTituloCasa(id: Int) -> TituloCasa {
    return titulosCasas.filter { titulo in
        return titulo.id == id
    }.first ?? TituloCasa(id: -1, nombre: "")
}

var titulosCasas: [TituloCasa] = [
    .init(id: 0, nombre: "Señor/a de Rocadragón"),
    .init(id: 1, nombre: "Rey/Reina de los Ándalos los Ryonhar y los Primeros Hombres"),
    .init(id: 2, nombre: "Rey/Reina de Rocadrgón Principe de Refugio Estival"),
    .init(id: 3, nombre: "Señor/a de Bastión de Tormentas"),
    .init(id: 4, nombre: "Señor/a Supremo de las Tierras de la Tormenta"),
    .init(id: 5, nombre: "Señor/a de Invernalia"),
    .init(id: 6, nombre: "Guardián/a del Norte"),
    .init(id: 7, nombre: "Rey/Reina en el Norte"),
    .init(id: 8, nombre: "Rey/Reina del Tridente"),
    .init(id: 9, nombre: "Rey/Reina de la Roca"),
    .init(id: 10, nombre: "Señor/a de Roca Casterly"),
    .init(id: 11, nombre: "Escudo de Lannnisport"),
    .init(id: 12, nombre: "Guardián/a del Occidente"),
    .init(id: 13, nombre: "Mano del Rey"),
    .init(id: 14, nombre: "Rey/Reina de los Siete Reinos"),
    .init(id: 15, nombre: "Rey/Reina Regente"),
    .init(id: 16, nombre: "Protector/a del Reino"),
    .init(id: 17, nombre: "Señor/a de Roca Casterly"),
    .init(id: 18, nombre: "Luz del Occidente"),
    .init(id: 19, nombre: "Ser"),
    .init(id: 20, nombre: "Guardián/a del Oriente"),
    .init(id: 21, nombre: "Lord Comandante de la Guardia Real"),
    .init(id: 22, nombre: "Consejero de la Moneda"),
    .init(id: 23, nombre: "Salvador de la Ciudad"),
    .init(id: 24, nombre: "Princesa de Invernalia"),
    .init(id: 25, nombre: "Regente"),
    .init(id: 26, nombre: "Principe Heredero de Invernalia"),
    .init(id: 27, nombre: "Mayordomo de la Guardia de la Noche"),
    .init(id: 28, nombre: "Lord Comandante de la Guardia de la Noche"),
    .init(id: 29, nombre: "Señor/a de los Siete Reinos"),
    .init(id: 30, nombre: "Protector/a del Reino"),
    .init(id: 31, nombre: "Príncipe de los Siete Reinos"),
    .init(id: 32, nombre: "Princesa de Rocadragón"),
    .init(id: 33, nombre: "Khaleesi de los Dothraki"),
    .init(id: 34, nombre: "Reina de Meereen"),
    .init(id: 35, nombre: "Principe de Rocadragón")
]



