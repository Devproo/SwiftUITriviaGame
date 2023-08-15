//
//  Answer.swift
//  SwiftUITriviaGame
//
//  Created by ipeerless on 15/08/2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool 
}
