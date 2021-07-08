//
//  PopularMoviesView.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct PopularMoviesView: View {
    
    @State var movies: [Movie] = []
    @State var isLoading: Bool = true
    @State var content: String = "Chargement..."
    
    var body: some View {
        
        VStack {
            if isLoading {
                ProgressView()
                    .onAppear(perform: loadPopularMovies)
                Text(content)
            } else {
                List {
                    ForEach(movies) { movie in
                        MovieElementView(movie: movie)
                            .listRowInsets(EdgeInsets())
                    }
                }
            }
        }
        
    }
    
    func loadPopularMovies() {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(API_KEY)&language=fr-FR&page=1")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            
            guard let data = data else { return }
            
            do {
                let restMoviesResult = try JSONDecoder().decode(RestMovieResult.self, from: data)
                for movie in restMoviesResult.movies {
                    movies.append(
                        Movie(
                            id: movie.id,
                            title: movie.title,
                            overview: movie.overview,
                            voteAverage: movie.voteAverage,
                            posterPath: URL(string: MOVIES_IMAGES_BASE_URL + (movie.posterPath ?? ""))
                        )
                    )
                }
                isLoading = false
            } catch {
                print("Erreur lors du décodage")
            }
        }
        
        task.resume()
    }
}

struct PopularMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularMoviesView(movies: PreviewData.defaultMoviesList)
    }
}
