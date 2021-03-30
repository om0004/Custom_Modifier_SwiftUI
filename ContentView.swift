//
//  ContentView.swift
//  CustomModifier
//
//  Created by om on 30/03/21.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        Color.blue
            .watermark("Chelsea")
            
    }
}
struct WaterMark:ViewModifier
{
    var text:String
    func body(content: Content) -> some View
    {
        ZStack(alignment:.bottomTrailing)
        {
        content
        Text(text)
            .font(.caption)
            .foregroundColor(.white)
            .padding(5)
            .background(Color.black)
        }
    }
}
extension View
{
    func watermark(_ text:String) -> some View
    {
        self.modifier(WaterMark(text:text))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
