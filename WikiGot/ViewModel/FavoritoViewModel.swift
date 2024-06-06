//
//  FavoritoViewModel.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 15/11/22.
//

import Foundation
import SwiftUI

final class FavoritoViewModel: ObservableObject {
    private var _favoritos: [Favorito] = favoritos
    
    private(set) var data: [Favorito] = favoritos
    
    @Published var filteredData = [Favorito]()
    
    func search(with query: String = ""){
        filteredData = query.isEmpty ? data : data.filter{$0.nombre.contains(query)}
    }
}

