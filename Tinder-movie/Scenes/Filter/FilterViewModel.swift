//
//  FilterViewModel.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

import Foundation

final class FilterViewModel: ObservableObject {
    var data = [FilterModel]()
    let filterService = FilterService()
    
    init() {
        setup()
    }
    
    private func setup() {
        data = FilterModel.FilterType.allCases.map { model(type: $0) }
    }
    
    private func model(type: FilterModel.FilterType) -> FilterModel {
        .init(
            id: type,
            title: type.title,
            subtitle: type.subtitle)
    }
    
    func findAction() {
        filterService.getFilmsByFilter { films in
            
        }
    }
}
