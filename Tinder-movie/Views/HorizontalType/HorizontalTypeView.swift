//
//  HorizontalTypeView.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 26.02.2024.
//

import SwiftUI

struct HorizontalTypeView: View {
    let allTypes = HorizontalTypeModel.EntityType.allCases
    @State var selectedType = HorizontalTypeModel.EntityType.all
    
    var body: some View {
        HStack {
            ForEach(allTypes) { element in
                Spacer()
                Button(action: {
                    selectedType = element
                }, label: {
                    Text(element.rawValue)
                        .foregroundStyle(Color.white)
                        .font(.title3)
                        .underline(element == selectedType)
                })
                Spacer()
            }
        }
        .padding()
        .background(Color.darkGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        
    }
}

#Preview {
    HorizontalTypeView(selectedType: .all)
}
