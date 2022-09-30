//
//  ContentViewModel.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 24.09.2022.
//

import Foundation
import SwiftUI

struct ContentViewModel {
    typealias Command = ContentModel.Command

    var commands: [Command] = []
    private var commandNames = ["Sit", "Play Dead", "Roll Over", "Spin", "Down"]
    private let text = """
Teaching your dog to sit is one of the most basic dog commands to teach your pup, thus making it a great one to start with. A dog who knows the “Sit” command will be much calmer and easier to control than dogs who aren’t taught this simple command. Additionally, the “Sit” command prepares your dog for harder commands such as “Stay” and “Come. Here’s how to teach your dog the “Sit” command: 1 Hold a treat close to your dog’s nose. 2 Move your hand up, allowing his head to follow the treat and causing his bottom to lower. 3 Once he’s in sitting position, say “Sit,” give him the treat, and share affection. Repeat this sequence a few times every day until your dog has it mastered. Then ask your dog to sit before mealtime, when leaving for walks and during other situations when you’d like him calm and seated.

"""
    
    init() {
        commandNames
            .sorted()
            .forEach { commandName in
                let image = Image(commandName.lowercased())
                let command = Command(image: image, name: commandName, text: text)
                commands.append(command)
            }
    }
}
