//
//  RatingView.swift
//  SwiftMovies
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct RatingView: View {
    
    @State var rating: Float
    private let circleStrokeWidth: CGFloat = 7
    
    private func trimPercent () -> CGFloat {
        let percentage = rating * 10 / 100
        return CGFloat(percentage)
    }
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(Color.black.opacity(0.2), lineWidth: circleStrokeWidth)
                    .padding(circleStrokeWidth / 2)
                Circle()
                    .trim(from: 0, to: trimPercent())
                    .rotation(Angle(degrees: -90))
                    .stroke(style: StrokeStyle(lineWidth: circleStrokeWidth, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.orange)
                    .padding(circleStrokeWidth / 2)
                    .animation(.easeInOut)
                Text(String(rating))
                    .bold()
            }
            .frame(width: 45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 7.0)
            .previewLayout(.sizeThatFits)
    }
}
