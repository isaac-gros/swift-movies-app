//
//  ContentView.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PopularMoviesView(isLoading: true, content: "", movies: PreviewData.defaultMoviesList)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
