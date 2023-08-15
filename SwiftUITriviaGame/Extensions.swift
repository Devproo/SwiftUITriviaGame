//
//  Extensions.swift
//  SwiftUITriviaGame
//
//  Created by ipeerless on 14/08/2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
    
}
