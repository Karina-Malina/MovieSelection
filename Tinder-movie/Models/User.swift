//
//  User.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 16.03.2024.
//

import SwiftUI

struct User: Codable, Hashable {
    
    let id: Int
    let name: String
    let favoriteMovies: [Int]
    
    var bindingName: Binding<String> {
        @State var name = self.name
        return $name
    }
}
