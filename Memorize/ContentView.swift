//
//  ContentView.swift
//  Memorize
//
//  Created by Margarita Xiques on 19/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojis: [String] = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    
    @State var emojiCount = 11
    
    var body: some View {
        
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(emojis [0...emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            .font(.largeTitle)
            Spacer()
            
            HStack {
                Spacer()
                animalsTheme
                Spacer()
                vehiclesTheme
                Spacer()
                fruitsTheme
                Spacer()
                natureTheme
                Spacer()
            }
        }
        .padding(.horizontal)
    }
    
    var animalsTheme: some View {
        
        Button {
            let animals = ["🐶","🐱","🐹","🐰","🦊","🐼","🐨","🐮","🐷","🐸","🐵","🐴","🐌","🦋","🐢","🐳","🐥", "🦆","🦉","🦇"]
            emojis = animals.shuffled()
            let random = Int.random(in: 4...19)
            emojiCount = random
        } label: {
            VStack{
                Image(systemName: "tortoise")
                    .font(.title)
                Text("Animals")
                    .font(.body)
            }
        }
    }
    var vehiclesTheme: some View {
        
        Button {
            let vehicles = ["🚗","🛵","🚜","🚑","🚀","✈️","🏎","🚚","🚖","🚠","🚃","🚝","🚉","🛴","🚲","🛺"]
            emojis = vehicles.shuffled()
            let random = Int.random(in: 4...15)
            emojiCount = random
        } label: {
            VStack{
                Image(systemName: "car")
                    .font(.title)
                Text("Vehicles")
                    .font(.body)
            }
        }
    }
    
    var fruitsTheme: some View {
        
        Button {
            let fruits = ["🍏","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🥭","🥝","🍒","🍅","🥑","🍍","🍈", "🥥", "🍎"]
            emojis = fruits.shuffled()
            let random = Int.random(in: 4...17)
            emojiCount = random
        } label: {
            VStack{
                Image(systemName: "applelogo")
                    .font(.title)
                Text("Fruits")
                    .font(.body)
            }
        }
    }
    
    var natureTheme: some View {
        
        Button {
            let nature = ["🌵","🍄","🌲","🌳","🪵","🌸","🌼","🌷","🌞","🌛","🍁","🪴","🌴","🌈","🔥","🌟", "💦", "❄️", "🌊", "☁️", "🌏", "🌪"]
            emojis = nature.shuffled()
            let random = Int.random(in: 4...21)
            emojiCount = random
        } label: {
            VStack{
                Image(systemName: "leaf")
                    .font(.title)
                Text("Nature")
                    .font(.body)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
