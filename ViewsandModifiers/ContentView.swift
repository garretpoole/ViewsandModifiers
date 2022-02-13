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
        //prefer ternary conditional operator ?
        //two if statements makes swiftui do a lot more work
        Button("Hello World") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
