//
//  ContentView.swift
//  Memorize
//
//  Created by Don Nijssen on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🚝", "🚌", "🚲", "🚘", "🚁", "🛵", "🏎", "🚃", "🛺", "⛵️", "🚤", "🚕", "🚚", "🛸", "🛶", "🚢", "🚡", "🛰", "🛻", "🚜", "🏍", "🚔", "🛴"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))] ){
                    ForEach(emojis[0..<emojiCount], id:\.self, content:{ emoji in
                        CardView(isFaceUp:true,content: emoji).aspectRatio(2/3, contentMode: .fit)
                    })
                }
            }
            .foregroundColor(.red)
            /*Spacer()
            HStack{
                removeButton
                Spacer()
                addButton.foregroundColor(.green)
            }
            .font(.largeTitle)
            .padding(.horizontal)*/

        }
        .padding(.horizontal)
    }
    //plus.circle
    var removeButton: some View{
        Button(action: {
            if emojiCount > 1{
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        }).foregroundColor(.blue)
    }
    
    var addButton: some View{
        Button(action: {
            if emojiCount < emojis.count{
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
}


struct CardView: View{
    @State var isFaceUp: Bool
    var content: String
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp{
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 3.0)

                Text(content)
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
