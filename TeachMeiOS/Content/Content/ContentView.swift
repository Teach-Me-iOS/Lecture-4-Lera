//
//  ContentView.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    private let cellHeight: CGFloat = 300
    private let cellCornerRadius: CGFloat = 20
    private let titleCornerRadius: CGFloat = 15
    private let opacity = 0.8
    
    @State var selectedComand: ContentModel.Command?
    
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                ForEach(viewModel.commands, id: \.self) { command in
                    
                    Button(
                        action: { selectedComand = command },
                        label: {
                            
                            ZStack {
                                command.image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(cellCornerRadius)
                                
                                HStack {
                                    Text(command.name)
                                        .font(.largeTitle)
                                        .fontWeight(.medium)
                                        .padding(9)
                                        .background(.white.opacity(opacity))
                                        .cornerRadius(cellCornerRadius)
                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding()
                                }
                            }
                        }
                    )
                    .padding()
                }
            }
        }
        .foregroundColor(.black)
        .background(.mint)
        .sheet(item: $selectedComand) { command in
            DetailView(
                image: command.image,
                title: command.name,
                text: command.text,
                isFavorite: viewModel.isCommandFavorite(command),
                onFavoritesTapped: {
                    if viewModel.isCommandFavorite(command) {
                        viewModel.removeFavorite(command)
                    } else {
                        viewModel.addFavorite(command)
                    }
                }
            )
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
