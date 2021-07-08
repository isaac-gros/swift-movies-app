//
//  ContentView.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PopularMoviesView()
                .navigationTitle("Populaires")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
