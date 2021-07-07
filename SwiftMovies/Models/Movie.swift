//
//  Movie.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import Foundation

class Movie: Identifiable, Codable {
    let id: Int
    let title: String
    let overview: String
    let voteAverage: Double
    let posterPath: URL?
    
    init(id: Int, title: String, overview: String, voteAverage: Double, posterPath: String) {
        self.id = id
        self.title = title
        self.overview = overview
        self.voteAverage = voteAverage
        self.posterPath = URL(string: posterPath)
    }
}
