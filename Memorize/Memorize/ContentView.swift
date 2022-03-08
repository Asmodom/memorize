//
//  ContentView.swift
//  Memorize
//
//  Created by Don Nijssen on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .stroke()
                .stroke(lineWidth: 3.0)

            Text("Hi donnijssen.com")
                .foregroundColor(.blue)
        }
            .padding(.horizontal)
            .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
