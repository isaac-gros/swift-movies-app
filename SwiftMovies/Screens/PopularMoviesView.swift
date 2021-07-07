//
//  PopularMoviesView.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct PopularMoviesView: View {
    
    @State var isLoading: Bool = true
    @State var content: String = ""
    @State var movies: [Movie]
    
    var body: some View {
        
        VStack {
            if isLoading {
                ProgressView()
                    .onAppear(perform: loadPopularMovies)
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
                let anyJson = try JSONSerialization.jsonObject(with: data)
                let convertedJson = anyJson as! [String: Any]
                let results = convertedJson["results"] as? [[String: Any]]
                
                // TODO : Better Movie instance creations
                movies.removeAll()
                for result in results! {
                    movies.append(
                        Movie(
                            id: result["id"] as! Int,
                            title: result["title"] as! String,
                            overview: result["overview"] as! String,
                            voteAverage: result["vote_average"] as! Double,
                            posterPath: MOVIES_IMAGES_BASE_URL + (result["poster_path"] as! String)
                        )
                    )
                }
                
                isLoading = false
                
            } catch {
                content = "Une erreur s'est produite, veuillez réessayer."
            }
        }
        
        task.resume()
    }
}

struct PopularMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularMoviesView(isLoading: true, content: "", movies: PreviewData.defaultMoviesList)
    }
}
