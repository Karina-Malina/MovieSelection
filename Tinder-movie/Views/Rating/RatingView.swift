//
//  RatingView.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

import SwiftUI

struct RatingView: View {
    @State var rating: Double = 7
    
    var body: some View {
        VStack {
            HStack {
                Text("Рейтинг")
                Spacer()
                Text("от \(Int(rating))")
            }
            Slider(value: $rating, in: 1...10, step: 1)
                .tint(Color.white)
        }
        .padding()
        .foregroundStyle(Color.white)
        .background(Color.darkGray)
        .font(.title3)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    RatingView()
}
