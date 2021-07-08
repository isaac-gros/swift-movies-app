//
//  PreviewData.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import Foundation

struct PreviewData {
    static let defaultMovie = Movie(
        id: 1,
        title: "Shrek",
        overview: "Shrek, l'ogre le plus terrifiant de tout le royaume, se voit menacé d'expulsion par les habitants de Fort Fort Lointain, exténués de sa présence.",
        voteAverage: 8.9,
        posterPath: URL(string: "https://static.wikia.nocookie.net/rise-of-the-brave-tangled-dragons/images/8/85/Shrek_2001_poster.jpg/revision/latest?cb=20210327083535")
    )
    
    static let defaultMoviesList = [
        Movie(
           id: 1,
           title: "Shrek",
           overview: "Shrek, l'ogre le plus terrifiant de tout le royaume, se voit menacé d'expulsion par les habitants de Fort Fort Lointain, exténués de sa présence.",
           voteAverage: 8.9,
           posterPath: URL(string: "https://static.wikia.nocookie.net/rise-of-the-brave-tangled-dragons/images/8/85/Shrek_2001_poster.jpg/revision/latest?cb=20210327083535")
       ),
        Movie(
           id: 2,
           title: "Shrek",
           overview: "Shrek, l'ogre le plus terrifiant de tout le royaume, se voit menacé d'expulsion par les habitants de Fort Fort Lointain, exténués de sa présence.",
           voteAverage: 8.9,
           posterPath: URL(string: "https://static.wikia.nocookie.net/rise-of-the-brave-tangled-dragons/images/8/85/Shrek_2001_poster.jpg/revision/latest?cb=20210327083535")
       ),
        Movie(
           id: 3,
           title: "Shrek",
           overview: "Shrek, l'ogre le plus terrifiant de tout le royaume, se voit menacé d'expulsion par les habitants de Fort Fort Lointain, exténués de sa présence.",
           voteAverage: 8.9,
           posterPath: URL(string: "https://static.wikia.nocookie.net/rise-of-the-brave-tangled-dragons/images/8/85/Shrek_2001_poster.jpg/revision/latest?cb=20210327083535")
       ),
    ]
}
