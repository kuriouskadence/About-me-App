//
//  ContentView.swift
//  About me App
//
//  Created by kadence  on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funFactText = "Reveal a fact about me!!"
    @State private var showFact = false
    
    var body: some View {
        ZStack {            Color(.systemMint)
                .ignoresSafeArea()
            VStack {
                Text("Hi!! My name is Kadence")
                    .font(.largeTitle)
                Image("kadence2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text(funFactText)
                    .padding()
                Button("Tap Me ;)"){
                    funFactText = "I was the captain of my field hockey team!"
                    showFact = true
                }
                .padding()
                .buttonStyle(.bordered)
                //.background(.purple)
                if showFact == true {
                    Text("I turn 16 on 7/14")
                }
            }
            .padding()
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
