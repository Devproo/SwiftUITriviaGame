//
//  ContentView.swift
//  SwiftUITriviaGame
//
//  Created by ipeerless on 14/08/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack {
                    Text("Trivia Game")
                        .lilacTitle()
                    Text("Are you ready to test your trivia skills")
                        .foregroundColor(Color("AccentColor"))
                }
                NavigationLink {
                    TriviaView()
                        .environmentObject(TriviaManager())
                } label: {
                    PrimaryButton(text: "Let's go")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(hue: 0.086, saturation: 0.403, brightness: 0.924))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
