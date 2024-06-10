//
//  PickerView.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 06.03.2024.
//

import SwiftUI

struct PickerView: View {
    @Binding var selectedValue: Int
    let values = Range(1...10)
    
    var body: some View {
        VStack {
            Text("Выберите количество участников")
                .font(.title2)
            Picker("Please choose a color", selection: $selectedValue) {
                ForEach(values, id: \.self) {
                    Text($0.description)
                        .foregroundStyle(Color.white)
                }
            }
            .pickerStyle(.wheel)
        }
        .foregroundStyle(Color.white)
        .padding()
        .background(Color.darkGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
