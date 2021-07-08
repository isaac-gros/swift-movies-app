//
//  ContentView.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PopularMoviesView()
                .tabItem { Label("Populaires", systemImage: "star") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
