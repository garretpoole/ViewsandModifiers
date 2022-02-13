//
//  ContentView.swift
//  ViewsandModifiers
//
//  Created by Garret Poole on 2/13/22.
//

import SwiftUI

//custom modifier for titles in the project
struct Title: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
//extend so in main body can just use '.titleStyle()'
extension View{
    func titleStyle() -> some View{
        modifier(Title())
    }
}
//custom ViewModifiers can have custom properties
struct Watermark: ViewModifier{
    var text: String
    func body(content: Content) -> some View{
        ZStack(alignment: .bottomTrailing){
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(.black)
        }
    }
}
//do not have ability to have custom properties
extension View{
    func watermarked(with text: String) -> some View{
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .titleStyle()
        Color.blue
            .frame(width: 300, height: 300)
            .watermarked(with: "Hacking with Swift")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
