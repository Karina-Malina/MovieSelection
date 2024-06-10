//
//  RoundedButton.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 18.03.2024.
//

import SwiftUI

struct RoundedButton: View {
    let title: String
    let action: (() -> Void)
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Spacer()
            Text(title)
            Spacer()
        })
        .padding()
        .background(Color.mint)
        .clipShape(Capsule())
        .foregroundStyle(Color.white)
    }
}

#Preview {
    RoundedButton(
        title: "Далее",
        action: {})
}
