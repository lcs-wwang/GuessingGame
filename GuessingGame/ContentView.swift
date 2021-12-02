//
//  ContentView.swift
//  GuessingGame
//
//  Created by Winston Wang on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentGuess: Double = 50.0
    
    let target = Int.random(in: 1...100)
    
    @State var feedback = "" //no hint in the game
    
    var body: some View {
        VStack{
            Slider(value: $currentGuess,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
            },
                   minimumValueLabel: {
                Text("0")
            },
                   maximumValueLabel: {
                Text("100")
            })
            Text("\(String(format: "%.0f",currentGuess))")
                .font(.largeTitle)
                .bold()
            Button(action: {
                
                // make the users guess into an integer
                let currentGuessAsInteger = Int(currentGuess)
                
                if currentGuessAsInteger < target{
                    feedback = "Guess higher next time!"
                } else if currentGuessAsInteger > target{
                    feedback = "Guess lower next time!"
                } else {
                    feedback = "You Got It!!!"
                }
                
                
                print("Button was pressed")
            }, label: {
                Text("Press me")
            })
                .buttonStyle(.automatic)
                .padding(.top, 30)
            
            Text("The super secret target is \(target)")
            
            Text(feedback)
                .italic()
                .padding()
            
            Spacer()
        }
        .navigationTitle("Guessing Game")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
