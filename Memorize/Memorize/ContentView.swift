//
//  ContentView.swift
//  Memorize
//
//  Created by Don Nijssen on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))] ){
                    ForEach(viewModel.cards){ card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
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
    /*var removeButton: some View{
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
    }*/
}


struct CardView: View{
    let card: MemoryGame<String>.Card
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if card.isFacedUp{
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 3.0)

                Text(card.content)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }else{
                shape
                    .fill()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
                        
    static var previews: some View {
        let game = EmojiMemoryGame()
        //create for each color scheme to see the ui effects
        ContentView(viewModel: game).preferredColorScheme(.light)
        ContentView(viewModel: game).preferredColorScheme(.dark)
    }
}
