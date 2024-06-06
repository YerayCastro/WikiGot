//
//  FamiliaModel.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 11/11/22.
//

import Foundation
import SwiftUI

final class FamiliaViewModel: ObservableObject {
    
    private var _favoritos: [Favorito] = favoritos
    
    private(set) var data: [Familia] = familias
    
    @Published var filteredData = [Familia]()
    
    func search(with query: String = ""){
        filteredData = query.isEmpty ? data : data.filter{$0.nombre.contains(query)}
    }
}
