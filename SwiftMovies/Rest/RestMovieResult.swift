//
//  RestMovieResult.swift
//  SwiftMovies
//
//  Created by jpo on 08/07/2021.
//

import Foundation

struct RestMovieResult: Codable {
    let page : Int?
    let movies: [RestMovie]
    let totalPages: Int?
    let totalResults: Int?
    
    enum CodingKeys: String, CodingKey {
        case page
        case movies = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
