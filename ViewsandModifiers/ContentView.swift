//
//  ContentView.swift
//  ViewsandModifiers
//
//  Created by Garret Poole on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    var body: some View {
        //child modifier is priority over the parent modifier
        VStack{
            Text("Gryffindor")
                .font(.largeTitle)
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
                .blur(radius: 5)
        }
        //environment (parent) modifier applies to everything inside
        .font(.title)
        //certain modifiers are not environment, they are cumulaive
        .blur(radius: 5)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
