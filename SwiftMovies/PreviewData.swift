//
//  PreviewData.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import Foundation

struct PreviewData {
    static let defaultMovie = Movie(
        title: "Shrek",
        description: "Shrek, l'ogre le plus terrifiant de tout le royaume, se voit menacé d'expulsion par les habitants de Fort Fort Lointain, exténués de sa présence.",
        rating: 8.9,
        imageUrl: URL(string: "https://static.wikia.nocookie.net/rise-of-the-brave-tangled-dragons/images/8/85/Shrek_2001_poster.jpg/revision/latest?cb=20210327083535")
    )
    
    static let defaultMoviesList = [
        Movie(
            title: "Bee Movie",
            description: "Barry Bee Benson n'est pas une abeille ordinaire : tout juste diplômé, il se désole de n'avoir qu'une seule perspective d'avenir, Honex, la fabrique de miel",
            rating: 7,
            imageUrl: URL(string: "https://images-na.ssl-images-amazon.com/images/I/51Pedqj6OEL._AC_.jpg")
        ),
        Movie(
            title: "Shrek",
            description: "Shrek, l'ogre le plus terrifiant de tout le royaume, se voit menacé d'expulsion par les habitants de Fort Fort Lointain, exténués de sa présence.",
            rating: 8.9,
            imageUrl: URL(string: "https://static.wikia.nocookie.net/rise-of-the-brave-tangled-dragons/images/8/85/Shrek_2001_poster.jpg/revision/latest?cb=20210327083535")
        ),
        Movie(
            title: "Matrix",
            description: "Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l'un des pirates les plus recherchés du cyber-espace.",
            rating: 8,
            imageUrl: URL(string: "https://www.ecranlarge.com/uploads/image/001/085/matrix-affiche-1085429.jpg")
        )
    ]
}
