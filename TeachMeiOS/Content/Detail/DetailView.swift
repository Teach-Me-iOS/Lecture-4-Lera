//
//  DetailView.swift
//  TeachMeiOS
//
//  Created by Lera on 29.09.2022.
//

import SwiftUI

struct DetailView: View {
    let image: Image
    let title: String
    let text: String
    let isFavorite: Bool
    var onFavoritesTapped: () -> Void

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                image
                    .resizable()
                    .scaledToFit()

                HStack {
                    Text(title)
                        .font(.title)

                    Button(
                        action: onFavoritesTapped,
                        label: {
                            isFavorite ? Image(systemName: "star.fill").foregroundColor(.mint) : Image(systemName: "star").foregroundColor(.mint)
                        }
                    )
                }

                Text(text)
                    .font(.body)
                    .padding(.horizontal)
            }
            .padding(.bottom, 30)
        }
        .ignoresSafeArea()
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let command = ContentModel.Command.down

        DetailView(
            image: command.image,
            title: command.name,
            text: command.text,
            isFavorite: false,
            onFavoritesTapped: { }
        )
    }
}