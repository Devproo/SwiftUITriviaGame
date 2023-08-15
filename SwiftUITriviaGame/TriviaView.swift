//
//  TriviaView.swift
//  SwiftUITriviaGame
//
//  Created by ipeerless on 15/08/2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
       if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                Text("Congratulation you completed the game ⭐️")
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }

            }
            .foregroundColor(Color("AccentColor"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hue: 0.086, saturation: 0.403, brightness: 0.924))
        } else {
            QuestionView()
                .environmentObject(TriviaManager())
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
