//
//  TemporadaViewModel.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 12/11/22.
//

import Foundation
import SwiftUI

final class TemporadaViewModel: ObservableObject {
    
    private var _favoritos: [Favorito] = favoritos
    
    private(set) var data: [Temporada] = temporadas
    
    @Published var filteredData = [Temporada]()
    
    func search(with query: String = ""){
        filteredData = query.isEmpty ? data : data.filter{$0.nombre.contains(query)}
    }
}
