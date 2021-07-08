//
//  RestMovie.swift
//  SwiftMovies
//
//  Created by jpo on 08/07/2021.
//

import Foundation

struct RestMovie: Codable {
    let id: Int?
    let title: String?
    let overview: String?
    let voteAverage: Float?
    let posterPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case voteAverage = "vote_average"
        case posterPath = "poster_path"
    }
}
