//
//  Modifiers.swift
//  SwiftUI Demo
//
//  Created by Роман Беспалов on 18.12.2022.
//

import Foundation
import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .bold(true)
            .background(Color.orange)
    }
}

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
    }
}
