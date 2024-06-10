//
//  FilterModel.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

import Foundation

struct FilterModel: Identifiable {
    var id: FilterType
    let title: String
    let subtitle: String
    
    
    enum FilterType: CaseIterable {
        case genres
        case countries
        case years
        case collections
        
        var title: String {
            switch self {
            case .genres: "Жанры"
            case .countries: "Страна"
            case .years: "Год"
            case .collections: "Коллекции"
            }
        }
        
        var subtitle: String {
            switch self {
            case .genres: "любые"
            case .years: "любой"
            case .countries, .collections: "любая"
            }
        }
    }
}
