//
//  RoundedButton.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 25.03.2024.
//

import SwiftUI

struct RoundedText: View {
    let title: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
            Spacer()
        }
            .padding()
            .background(Color.mint)
            .clipShape(Capsule())
            .foregroundStyle(Color.white)
    }
}

#Preview {
    RoundedText(title: "Далее")
}
