//
//  ContentViewModel.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 24.09.2022.
//

import Foundation
import SwiftUI

protocol ContentViewModelProtocol {
    var commands: [ContentModel.Command] { get }

    func isCommandFavorite(_ command: ContentModel.Command) -> Bool
    func addFavorite(_ command: ContentModel.Command)
    func removeFavorite(_ command: ContentModel.Command)
}

class ContentViewModel: ContentViewModelProtocol, ObservableObject {
    @State var commands: [ContentModel.Command]
    @State var favorites: [ContentModel.Command] = []

    init() {
        // Download from remote server
        commands = ContentModel.Command.allCases
    }

    func isCommandFavorite(_ commandWhichWeAreSearching: ContentModel.Command) -> Bool {
        for command in favorites {
            if commandWhichWeAreSearching == command {
                return true
            }
        }
        return false
    }

    func addFavorite(_ command: ContentModel.Command) {
        favorites.append(command)
    }

    func removeFavorite(_ commandWhichWeAreSearching: ContentModel.Command) {
        for (index, element) in favorites.enumerated() {
            if commandWhichWeAreSearching == element {
                favorites.remove(at: index)
            }
        }
    }

}
