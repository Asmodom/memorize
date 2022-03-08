//
//  ContentView.swift
//  Memorize
//
//  Created by Don Nijssen on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content:{
            
            RoundedRectangle(cornerRadius: 25.0)
                .stroke()
                .stroke(lineWidth: 3.0)

                .foregroundColor(.red)
            
            Text("Hi donnijssen.com")
        })
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
