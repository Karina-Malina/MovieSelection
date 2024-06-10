//
//  ChoosingMembersView.swift
//  Tinder-movie
//
//  Created by Karina Blinova on 06.03.2024.
//

import SwiftUI

struct ChoosingMembersView: View {
    @StateObject var viewModel: ChoosingMembersViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                PickerView(selectedValue: $viewModel.numberOfUsers)
                ForEach(viewModel.users, id: \.self) {user in
                    TextField(
                        "Введите имя \(user.id) участника",
                        text: user.bindingName,
                        prompt: Text("Имя \(user.id) участника").foregroundStyle(Color.lightGray))
                }
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.darkGray)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                Spacer()
                NavigationLink(destination: FilterView(viewModel: FilterViewModel())) {
                    RoundedText(title: "Далее")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ChoosingMembersView(viewModel: ChoosingMembersViewModel())
}
