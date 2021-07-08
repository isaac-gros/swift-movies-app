//
//  MovieElementView.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI
import Kingfisher

struct MovieElementView: View {
    
    let movie: Movie
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            KFImage(movie.posterPath)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .clipped()
            VStack(alignment: .leading, spacing: 15, content: {
                HStack {
                    Text(movie.title)
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    RatingView(rating: movie.voteAverage)
                }
                Text(movie.overview)
                    .lineLimit(4)
            })
        }
        .padding()
    }
}

struct MovieElementView_Previews: PreviewProvider {
    static var previews: some View {
        MovieElementView(movie: PreviewData.defaultMovie)
            .previewLayout(.sizeThatFits)
    }
}
