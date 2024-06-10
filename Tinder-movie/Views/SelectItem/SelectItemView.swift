//
//  SelectItemView.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

import SwiftUI

struct SelectItemView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(subtitle)
        }
        .foregroundStyle(Color.white)
        .padding()
        .background(Color.darkGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    SelectItemView(
        title: "Жанры",
        subtitle: "любые")
}
