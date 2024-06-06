//
//  PersonajeViewModel.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 11/11/22.
//

import Foundation
import SwiftUI

final class PersonajeViewModel: ObservableObject {
    
    private var _favoritos: [Favorito] = favoritos
    
    private(set) var data: [Personaje] = personajes
    
    @Published var filteredData = [Personaje]()
    
    func search(with query: String = ""){
        filteredData = query.isEmpty ? data : data.filter{$0.nombre.contains(query)}
    }
}
