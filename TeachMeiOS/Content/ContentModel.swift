//
//  ContentModel.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 24.09.2022.
//

import SwiftUI

struct ContentModel {
    struct Command: Hashable, Identifiable {
        var id = UUID()
        var image: Image
        var name: String
        var text: String
        
        func hash(into hasher: inout Hasher){
            hasher.combine(name)
        }
    }
}
