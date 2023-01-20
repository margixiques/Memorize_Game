//
//  CardView.swift
//  Memorize
//
//  Created by Margarita Xiques on 19/01/23.
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceUp = false
    @State var content = "🐳"
    
    var body: some View {
        
        let shape = RoundedRectangle(cornerRadius: 20)
        
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle) }
            else {
                shape.fill().foregroundColor(.red)
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
