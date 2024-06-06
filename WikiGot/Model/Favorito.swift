//
//  Favorito.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 14/11/22.
//

import Foundation
import SwiftUI

struct Favorito {
    var id: Int
    var nombre: String
    var tipoClase: TipoClase

}


func getFavorito(id: Int) -> Favorito {
    return favoritos.filter { favorito in
        return favorito.id == id
    }.first ?? Favorito(id: -1, nombre: "", tipoClase: .personaje)
}

var favoritos: [Favorito] = [
        Favorito(id: 1, nombre: "Cercei", tipoClase: .personaje)
]


/*
var favoritos: [Favorito] = [
    Favorito
    .init(id: 1, nombre: "Cercei", favorito: .personaje),
    .init(id: 2, nombre: "Jaime", favorito: .personaje),
    .init(id: 3, nombre: "Tywin", favorito: .personaje),
    .init(id: 4, nombre: "Arya", favorito: .personaje),
    .init(id: 5, nombre: "Eddard", favorito: .personaje),
    .init(id: 6, nombre: "Brandom", favorito: .personaje),
    .init(id: 7, nombre: "Jon", favorito: .personaje),
    .init(id: 8, nombre: "Stannis", favorito: .personaje),
    .init(id: 9, nombre: "Robert", favorito: .personaje),
    .init(id: 10, nombre: "Joffrey", favorito: .personaje),
    .init(id: 11, nombre: "Daenerys", favorito: .personaje),
    .init(id: 12, nombre: "Rhaegar", favorito: .personaje),
    .init(id: 13, nombre: "Viserys", favorito: .personaje),
    .init(id: 0, nombre: "Lannister", favorito: .familia),
    .init(id: 1, nombre: "Stark", favorito: .familia),
    .init(id: 2, nombre: "Baratheon", favorito: .familia),
    .init(id: 3, nombre: "Targaryen", favorito: .familia),
    .init(id: 0, nombre: "Roca Casterly", favorito: .lugares),
    .init(id: 1, nombre: "Invernalia", favorito: .lugares),
    .init(id: 2, nombre: "Roca Dragón", favorito: .lugares),
    .init(id: 3, nombre: "Desmbarco del Rey", favorito: .lugares),
    .init(id: 0, nombre: "Temporada 1", favorito: .temporada),
    .init(id: 1, nombre: "Temporada 2", favorito: .temporada),
    .init(id: 2, nombre: "Temporada 3", favorito: .temporada),
    .init(id: 3, nombre: "Temporada 4", favorito: .temporada),
    .init(id: 4, nombre: "Temporada 5", favorito: .temporada),
    .init(id: 5, nombre: "Temporada 6", favorito: .temporada),
    .init(id: 6, nombre: "Temporada 7", favorito: .temporada),
    .init(id: 7, nombre: "Temporada 8", favorito: .temporada),
    .init(id: 7, nombre: "Temporada 8", favorito: .temporada),
    .init(id: 0, nombre: "Winter Is Coming", favorito: .episodio),
    .init(id: 1, nombre: "The Kingsroad", favorito: .episodio),
    .init(id: 2, nombre: "Lord Snow", favorito: .episodio),
    .init(id: 3, nombre: "Cripples, Bastards, and Broken Things", favorito: .episodio),
    .init(id: 4, nombre: "The Wolf and the Lion", favorito: .episodio),
    .init(id: 5, nombre: "A Golden Crown", favorito: .episodio),
    .init(id: 6, nombre: "You Win or You Die", favorito: .episodio),
    .init(id: 7, nombre: "The Pointy End", favorito: .episodio),
    .init(id: 8, nombre: "Baelor", favorito: .episodio),
    .init(id: 9, nombre: "Fire and Blood", favorito: .episodio),
    .init(id: 10, nombre: "The North Remembers", favorito: .episodio),
    .init(id: 11, nombre: "The Night Lands", favorito: .episodio),
    .init(id: 12, nombre: "What Is Dead May Never Die", favorito: .episodio),
    .init(id: 13, nombre: "Garden of Bones", favorito: .episodio),
    .init(id: 14, nombre: "The Ghost of Harrenhal", favorito: .episodio),
    .init(id: 15, nombre: "The Old Gods and the New", favorito: .episodio),
    .init(id: 16, nombre: "A Man Without Honor", favorito: .episodio),
    .init(id: 17, nombre: "The Prince of Winterfell", favorito: .episodio),
    .init(id: 18, nombre: "Blackwater", favorito: .episodio),
    .init(id: 19, nombre: "Valar Morghulis", favorito: .episodio),
    .init(id: 20, nombre: "Valar Dohaeris", favorito: .episodio),
    .init(id: 21, nombre: "Dark Wings, Dark Words", favorito: .episodio),
    .init(id: 22, nombre: "Walk of Punishment", favorito: .episodio),
    .init(id: 23, nombre: "And Now His Watch is Ended", favorito: .episodio),
    .init(id: 24, nombre: "Kissed by Fire", favorito: .episodio),
    .init(id: 25, nombre: "The Climb", favorito: .episodio),
    .init(id: 26, nombre: "The Bear and the Maiden Fair", favorito: .episodio),
    .init(id: 27, nombre: "Second Sons", favorito: .episodio),
    .init(id: 28, nombre: "The Rains of Castamere", favorito: .episodio),
    .init(id: 29, nombre: "Mhysa", favorito: .episodio),
    .init(id: 30, nombre: "Two Swords", favorito: .episodio),
    .init(id: 31, nombre: "The Lion and the Rose", favorito: .episodio),
    .init(id: 32, nombre: "Breaker of Chains", favorito: .episodio),
    .init(id: 33, nombre: "Oathkeeper", favorito: .episodio),
    .init(id: 34, nombre: "First of His Name", favorito: .episodio),
    .init(id: 35, nombre: "The Laws of Gods and Men", favorito: .episodio),
    .init(id: 36, nombre: "Mockingbird", favorito: .episodio),
    .init(id: 37, nombre: "The Mountain and the Viper", favorito: .episodio),
    .init(id: 38, nombre: "The Watchers on the Wall", favorito: .episodio),
    .init(id: 39, nombre: "The Children", favorito: .episodio),
    .init(id: 40, nombre: "The Wars to Come", favorito: .episodio),
    .init(id: 41, nombre: "The House of Black and White", favorito: .episodio),
    .init(id: 42, nombre: "High Sparrow", favorito: .episodio),
    .init(id: 43, nombre: "Sons of the Harpy", favorito: .episodio),
    .init(id: 44, nombre: "Kill the Boy", favorito: .episodio),
    .init(id: 45, nombre: "Unbowed, Unbent, Unbroken", favorito: .episodio),
    .init(id: 46, nombre: "The Gift", favorito: .episodio),
    .init(id: 47, nombre: "Hardhome", favorito: .episodio),
    .init(id: 48, nombre: "The Dance of Dragons", favorito: .episodio),
    .init(id: 49, nombre: "Mother's Mercy", favorito: .episodio),
    .init(id: 50, nombre: "The Red Woman", favorito: .episodio),
    .init(id: 51, nombre: "Home", favorito: .episodio),
    .init(id: 52, nombre: "Oathbreaker", favorito: .episodio),
    .init(id: 53, nombre: "Book of the Stranger", favorito: .episodio),
    .init(id: 54, nombre: "The Door", favorito: .episodio),
    .init(id: 55, nombre: "Blood of My Blood", favorito: .episodio),
    .init(id: 56, nombre: "The Broken Man", favorito: .episodio),
    .init(id: 57, nombre: "No One", favorito: .episodio),
    .init(id: 58, nombre: "Battle of the Bastards", favorito: .episodio),
    .init(id: 59, nombre: "The Winds of Winter", favorito: .episodio),
    .init(id: 60, nombre: "Dragonstone", favorito: .episodio),
    .init(id: 61, nombre: "Stormborn", favorito: .episodio),
    .init(id: 62, nombre: "The Queen's Justice", favorito: .episodio),
    .init(id: 63, nombre: "The Spoils of War", favorito: .episodio),
    .init(id: 64, nombre: "Eastwatch", favorito: .episodio),
    .init(id: 65, nombre: "Beyond the Wall", favorito: .episodio),
    .init(id: 66, nombre: "The Dragon and the Wolf", favorito: .episodio),
    .init(id: 67, nombre: "Winterfell", favorito: .episodio),
    .init(id: 68, nombre: "A Knight of the Seven Kingdoms", favorito: .episodio),
    .init(id: 69, nombre: "The Long Night", favorito: .episodio),
    .init(id: 70, nombre: "The Last of the Starks", favorito: .episodio),
    .init(id: 71, nombre: "The Bells", favorito: .episodio),
    .init(id: 72, nombre: "The Iron Throne", favorito: .episodio)
]
*/
