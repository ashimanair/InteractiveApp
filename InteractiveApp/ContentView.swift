//
//  ContentView.swift
//  InteractiveApp
//
//  Created by Scholar on 6/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    //Add another State property called textTitle that stores the string "What is your name"
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack{
            Text(textTitle)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .fontWeight(.heavy)
                .border(Color.purple, width: 3)
            
            Button("Submit Name") {
                //print(name)
                textTitle = "Welcome \(name)!!!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.671, saturation: 0.291, brightness: 0.944))
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
