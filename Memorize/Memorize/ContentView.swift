//
//  ContentView.swift
//  Memorize
//
//  Created by Don Nijssen on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp:true)
            CardView(isFaceUp:false)
            CardView(isFaceUp:true)
            CardView(isFaceUp:false)
            
        }
            .padding(.horizontal)
            .foregroundColor(.red)
    }
}


struct CardView: View{
    @State var isFaceUp: Bool
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp{
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .stroke()
                    .stroke(lineWidth: 3.0)

                Text("✈️")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }else{
                shape
                    .fill()
            }

        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //create for each color scheme to see the ui effects
        ContentView().preferredColorScheme(.light)
        ContentView().preferredColorScheme(.dark)
    }
}
