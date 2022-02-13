//
//  ContentView.swift
//  ViewsandModifiers
//
//  Created by Garret Poole on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    //cannot return a protocol View, must fill it to be some View
    var body: some View {
        //VStack returns a form of a tuple view up to 10
        //causes the 10 View limit
        VStack{
            Text("Hello")
            Text("World")
            Text("Goodbye")
            Text("World")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
