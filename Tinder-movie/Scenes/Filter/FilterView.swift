//
//  FilterView.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

import SwiftUI

struct FilterView: View {
    @State var selectedType: HorizontalTypeModel.EntityType = .all
    @State var rating: Double = 7
    var viewModel: FilterViewModel
    
    var body: some View {
        VStack(spacing: 30) {
            HorizontalTypeView(selectedType: selectedType)
            table
            RatingView(rating: rating)
            Spacer()
            NavigationLink {
                
            } label: {
                Button("Искать") {
                    viewModel.findAction()
                }
            }
        }
        .padding()
    }
    
    var table: some View {
        ForEach(viewModel.data) { element in
            Button(action: {
                
            }, label: {
                SelectItemView(
                    title: element.title,
                    subtitle: element.subtitle)
            })
        }
    }
}

#Preview {
    FilterView(viewModel: .init())
}
