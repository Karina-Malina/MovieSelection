//
//  HorizontalTypeModel.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

struct HorizontalTypeModel {
    enum EntityType: String, CaseIterable, Identifiable {
        
        var id: Self {
            return self
        }
        
        case all = "Все"
        case movie = "Фильмы"
        case serials = "Сериалы"
    }
}
