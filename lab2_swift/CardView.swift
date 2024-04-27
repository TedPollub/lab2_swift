//
//  CardView.swift
//  lab2_swift
//
//  Created by student on 27/04/2024.
//

import Foundation
import SwiftUI

struct CardView: View {
    @State var content: String
    @State var zakryte: Bool
    init(content: String) {
        self.content = content
        self.zakryte = true
    }
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 12.0)
                .fill(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 12.0)
                        .stroke(.blue, lineWidth: 2))
                .onTapGesture {
                    zakryte = !zakryte
                }
            Text(content)
                .font(.largeTitle)
                .allowsHitTesting(false)
            if (zakryte) {
                RoundedRectangle(cornerRadius: 12.0)
                    .fill(.blue)
                    .allowsHitTesting(false)
            }
        })
    }
}
