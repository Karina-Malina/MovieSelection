//
//  FilterService.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 04.03.2024.
//

import Foundation

final class FilterService {
    
    func getFilmsByFilter() async throws -> [FilmModel]? {
        let url = URL(string: "https://api.kinopoisk.dev/v1.4/movie")!
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
        let queryItems: [URLQueryItem] = [
            URLQueryItem(name: "page", value: "1"),
            URLQueryItem(name: "limit", value: "10"),
            URLQueryItem(name: "type", value: "movie"),
        ]
        components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems
        
        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        request.allHTTPHeaderFields = [
            "accept": "application/json",
            "X-API-KEY": "2JFEAB1-S4RM1YZ-JGANJZ4-V27RK1F"
        ]
        
        let (data, _) = try await URLSession.shared.data(for: request)
        do {
            let films = try JSONDecoder().decode(NetworkModel.self, from: data)
            return films.docs
        } catch {
            throw error
        }
    }
}
