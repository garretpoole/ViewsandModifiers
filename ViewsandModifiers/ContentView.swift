//
//  ContentView.swift
//  ViewsandModifiers
//
//  Created by Garret Poole on 2/13/22.
//

import SwiftUI
//Generics
//can pass any kind of content that must conform to the View protocol
struct GridStack<Content: View>: View{
    let rows: Int
    let columns: Int
    //defines a function that accepts two ints and returns content to display
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View{
        VStack{
            //without 'id: ...' assumes rows and columns are fixed
            ForEach(0..<rows, id: \.self){ row in
                HStack{
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
       
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
