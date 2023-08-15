//
//  QuestionView.swift
//  SwiftUITriviaGame
//
//  Created by ipeerless on 14/08/2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        VStack {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.index)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: triviaManager.progress)
            VStack(alignment: .leading, spacing: 20) {
                Text( triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color("AccentColor") : Color(.gray).opacity(0.3))
            }
            .disabled(!triviaManager.answerSelected)

            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.086, saturation: 0.403, brightness: 0.924))
        .navigationBarHidden(true)
    
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManager())
    }
}
