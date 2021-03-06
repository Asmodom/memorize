//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Don Nijssen on 07/03/2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
