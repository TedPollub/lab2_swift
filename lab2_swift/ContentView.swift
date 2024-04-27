//
//  ContentView.swift
//  lab2_swift
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    let allCards: [String] = ["⛔️", "🚟", "🌳", "3️⃣", "🍥", "🏜", "📓", "🈷️", "🚅", "🐂", "🚜", "😜", "💸", "🕍", "🚎", "🐻", "🐯", "🕘", "👌", "🔜", "🎧", "🎂", "📥", "🖖"]
    @State var currentCards: [String] = ["⛔️", "🚟"]
    var body: some View {
        VStack(content: {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                ForEach(currentCards.indices, id: \.self) { index in
                    CardView(content: currentCards[index])
                        .aspectRatio(1, contentMode: .fill)
                }
            }.padding()
            HStack(content: {
                Button(action: {adjustCardNumber(by: 1, symbol: "-")}) {
                    Text("-")
                }
                .frame(width: 100)
                .overlay( RoundedRectangle(cornerRadius: 12.0)
                        .stroke(.blue, lineWidth: 2))
                
                Button(action: {adjustCardNumber(by: 1, symbol: "+")}) {
                    Text("+")
                }
                .frame(width: 100)
                .overlay( RoundedRectangle(cornerRadius: 12.0)
                        .stroke(.blue, lineWidth: 2))
            })
            .font(.largeTitle)
            .frame(maxHeight: .infinity, alignment: .bottom)
            
        })
    }
    
    func adjustCardNumber(by offset: Int, symbol: String) {
        if (symbol == "+" && currentCards.count < allCards.count) {
            currentCards.append(allCards.shuffled().first!)
        }
        else if (symbol == "-" && currentCards.count > 2) {
            currentCards.remove(at: currentCards.count - 1)
        }
    }
}

#Preview {
    ContentView()
}
