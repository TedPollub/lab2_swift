//
//  ContentView.swift
//  lab2_swift
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    let allCards: [String] = [
            ["👹","🥶","😂","😱","😍","😉","😇","🤣",
            "🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼",
            "🍎","🍊","🍋","🍉","🍇","🍓","🍒","🥭"]
        ]
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<allCards.count, id: \.self) { index in
                CardView(content: "spierdalaj")
            }
        }
    }
}

#Preview {
    ContentView()
}
