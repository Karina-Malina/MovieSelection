//
//  ContentView.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ChoosingMembersView(viewModel: ChoosingMembersViewModel())
        }
    }
}

#Preview {
    ContentView()
}
