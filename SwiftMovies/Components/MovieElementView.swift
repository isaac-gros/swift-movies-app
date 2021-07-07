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
        VStack {
            HStack(alignment: .center, spacing: 10) {
                KFImage(movie.imageUrl)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 175, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                VStack(alignment: .leading, spacing: 15, content: {
                    HStack {
                        Text(movie.title)
                            .font(.title2)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .lineLimit(3)
                        Spacer()
                        RatingView(rating: movie.rating)
                    }
                    Text(movie.description)
                })
                .frame(width: .infinity, height: 200, alignment: .center)
            }
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
