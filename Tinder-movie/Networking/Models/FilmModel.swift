//
//  FilmModel.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 04.03.2024.
//

import Foundation

struct FilmModel: Codable {
    let id: Int
    let type: String
    let name: String
    let rating: RatingType
    let description: String
    let votes: RatingType
    let year: Int
    let poster: Poster
    let genres: [Genre]
    let countries: [Genre]
    let top250: String?
    
    struct RatingType: Codable {
        let kp: Double
        let imdb: Double
    }
    
    struct Poster: Codable {
        let url: String
    }
    
    struct Genre: Codable {
        let name: String
    }
}
