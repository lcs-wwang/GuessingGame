//
//  ContentView.swift
//  GuessingGame
//
//  Created by Winston Wang on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Slider(value: .constant(64.0),
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                Text("Opacity")
            },
                   minimumValueLabel: {
                Text("0")
            },
                   maximumValueLabel: {
                Text("100")
            })
            Text("64")
                .font(.largeTitle)
                .bold()
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Press me")
            })
                .buttonStyle(.automatic)
            
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
