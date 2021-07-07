//
//  Movie.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let rating: Double
    let imageUrl: URL?
}
