//
//  ContentModel.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 24.09.2022.
//

import SwiftUI

struct ContentModel {
    enum Command: CaseIterable, Identifiable {
        case down
        case playDead
        case rollOver
        case sit
        case spin
        
        var name: String {
            switch self {
            case .down:
                return "Down"
            case .playDead:
                return "Play Dead"
            case .rollOver:
                return "Roll Over"
            case .sit:
                return "Sit"
            case .spin:
                return "Spin"
            }
        }
        
        var image: Image {
            Image(name.lowercased())
        }
        
        var text: String {
            """
        Benefits of Teaching Your Dog to Sit
        -------------------------
        Your puppy will learn to use this default behavior as a way to pay for bigger rewards. A sit becomes puppy currency to ask for (and receive) benefits because it needs to know that only by following the rules of the house will it get what it wants.

        Here are some examples. To go out the door, the dog should pay with a “sit” first. At mealtime, a “sit” becomes a polite request, and the reward is getting the bowl placed before it. When the puppy brings you a toy for a game, teach that it must first “sit” before being rewarded with the game.

        This isn’t mean—just imagine the chaos of that blustering pushy puppy once it reaches adult size! Teach the default "sit" now. That places you in control, while it reinforces your puppy’s social position in the family. Your puppy learns from the very beginning that as a part of the family, it have to get along with humans and since you control the resources—the food, opening the door, games—it must be polite to you.

        Lure Training Basics
        -------------------------
        There are several training techniques available today. Lure training uses a high-value reward like a favorite treat or toy to gently lure and guide your puppy into the sit position.

        How to Lure Train
        -------------------------
        * Stand in front of your puppy and hold the lure just above its head but in front of the nose. Lift the lure upward over the top of the head. To follow the movement of the toy or treat, the puppy will have to lift its head, which puts it off balance. As its nose follows the treat, its furry bottom must touch the ground to keep from falling over.

        * Stand in front of your puppy and say, “sit.” Be sure to speak to it in a firm, calm voice.

        * As soon as it sits down, give the puppy the treat or toy reward.

        * Set up a puppy routine and repeat this exercise several times each day. If you’re working with treats, be sure to schedule the training before meals so it's a bit hungry. Within a short time, your puppy will learn it can shortcut to the treat by simply planting its bottom as soon as you say “sit” rather than waiting to be lured.

        * Once your puppy know what “sit” means, partner the word command with a hand signal. Decide on what signal to use—like a closed fist—and use it every time. By using the word command with the same hand signal each time, and without the lure, the puppy will begin to associate the hand signal with the command. Your goal is for it to recognize the hand action and word, perform the behavior, and then be rewarded with the treat or toy.

        * At first, be sure to reward with the treat or toy every time. Be sure you use a reward that the puppy only gets during these training drills so it looks forward to the lessons.Eventually, ask for the “sit” without rewarding (other than verbal praise) and offer the treat/toy reward only every second or third time. This is called “intermittent rewards” and is a powerful teaching tool. Your puppy learns that it might get a treat and but does not know when. The goal is for it to learn to recognize the command and perform the action with or without seeing a reward.


        Clicker Training Basics
        -------------------------
        Clicker training shapes a natural behavior. Rather than luring the puppy into position, or pushing/prodding or otherwise placing them into a sit, clicker training and shaping lets the puppy do their own thing, and then rewards them for the action you like—in this case, a “sit.”

        It takes a bit longer, but once the light bulb goes off, your puppy will nearly turn backflips to “discover” what else you want them to do. Clicker training is great fun for puppies and teaches them how to learn, and how to please you. Use tiny smidgeons of treats, so it’s more just a taste and smell than anything to fill up the tummy.


        How to Clicker Train
        -------------------------
        * Gather your treats and clicker, and set the treats aside so the puppy doesn’t focus on them. Then simply watch for your puppy to sit on its own—and click as soon as its bottom touches down. Then toss your puppy the treat. Timing is key and it’s important to click exactly when the tail makes contact. The treat follows to reinforce the behavior.

        * The puppy will probably look a bit confused but grateful as it gobbles up the reward. Now it knows treats are handy and wants another one. This is when puppy brains kick into high gear, trying to figure out how to get another treat. Don’t talk, don’t lure, don’t point or offer other guidance. Let it figure things out on its own. Puzzling out how it works teaches the most powerful lesson. Your puppy will know something prompted the “click-treat,” but it may take several mistakes before it happens to repeat the sit—and you immediately click-treat.

        * After this second or third treat, your puppy will recognize it's on to something! You can nearly see the wheels spin as it starts offering all kinds behaviors that led up to the treat. Maybe it will paw your leg, bark, grab a toy, scratch, and fall into a sit by accident (click-treat!).

        * When the light bulb goes off—if I “sit” that click sounds and a click means a treat—your pup may offer half a dozen or more sits in a row. Quit while it's still excited so you don't wear out its enthusiasm.

        * You can now start associating the command with the action. As its bottom hits the ground, say “sit” at the same moment you click, and then give the treat. That way the puppy will figure out the word identifies the action.
        """
            
//    """
//    Teaching your dog to sit is one of the most basic dog commands to teach your pup, thus making it a great one to start with. A dog who knows the “Sit” command will be much calmer and easier to control than dogs who aren’t taught this simple command. Additionally, the “Sit” command prepares your dog for harder commands such as “Stay” and “Come. Here’s how to teach your dog the “Sit” command: 1 Hold a treat close to your dog’s nose. 2 Move your hand up, allowing his head to follow the treat and causing his bottom to lower. 3 Once he’s in sitting position, say “Sit,” give him the treat, and share affection. Repeat this sequence a few times every day until your dog has it mastered. Then ask your dog to sit before mealtime, when leaving for walks and during other situations when you’d like him calm and seated.
//    """
        }
        
        var id: UUID { UUID() }
    }
}
