//
//  Movie.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import Foundation

struct Movie: Identifiable, Codable {
    let id: Int?
    let title: String?
    let overview: String?
    let voteAverage: Float?
    let posterPath: URL?
    
    init(id: Int?, title: String?, overview: String?, voteAverage: Float?, posterPath: URL?) {
        self.id = id ?? 0
        self.title = title ?? "(vide)"
        self.overview = overview ?? "Aucune description disponible."
        self.voteAverage = voteAverage ?? 0
        self.posterPath = posterPath ?? URL(string: "")
    }
}
