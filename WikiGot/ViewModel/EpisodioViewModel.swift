//
//  EpisodioViewModel.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 12/11/22.
//

import Foundation
import SwiftUI

final class EpisodioViewModel: ObservableObject {
    
    
    private var _favoritos: [Favorito] = favoritos
    
    private(set) var data: [Episodio] = episodios
    
    @Published var filteredData = [Episodio]()
    
    func search(with query: String = ""){
        filteredData = query.isEmpty ? data : data.filter{$0.nombre.contains(query)}
    }
}
