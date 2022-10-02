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

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                image
                    .resizable()
                    .frame(height: 300)

                Text(title)
                    .font(.title)

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
        text: command.text)
    }
}
