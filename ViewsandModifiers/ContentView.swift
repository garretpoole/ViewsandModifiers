//
//  ContentView.swift
//  ViewsandModifiers
//
//  Created by Garret Poole on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    //views as properties
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    //ViewBuilder wraps interior like body does
    @ViewBuilder var spells: some View{
        Text("Lumos")
        Text("Obliviate")
    }
    var body: some View {
        VStack{
            motto1
                .foregroundColor(.red)
            motto2
                .foregroundColor(.blue)
        }
        
        HStack{
            spells
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
