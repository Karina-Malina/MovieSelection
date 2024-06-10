//
//  ChoosingMembersViewModel.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 19.03.2024.
//

import SwiftUI

final class ChoosingMembersViewModel: ObservableObject {
    @Published var users: [User]
    @Published var numberOfUsers = 1 {
        didSet {
            setNewUsers(oldValue: oldValue)
        }
    }
    
        init() {
            users = [User(id: 1, name: "", favoriteMovies: [])]
        }
    
    private func setNewUsers(oldValue: Int) {
        if numberOfUsers < oldValue {
            users.removeLast()
        } else {
            let id = users.count + 1
            users.append(User(id: id, name: "", favoriteMovies: []))
            
        }
    }
    
    func buttonAction() {
        
    }
}
