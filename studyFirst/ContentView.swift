//
//  ContentView.swift
//  studyFirst
//
//  Created by Гость on 20.06.2023.
//

import SwiftUI

struct ContentView: View {
    var emojis = Array(["🛶", "✈️", "🚁", "🚀", "🚀", "🛶", "✈️", "🚁", "🚀", "🚀","🛶", "✈️", "🚁", "🚀", "🚀"].enumerated())
    @State var emonjiCount = 4
    
    var body: some View {
        var addButton: some View = StdButton(action: {
            emonjiCount += 1
        }, title: "+")
        var removeButton: some View = StdButton(action: {
            emonjiCount -= 1
        }, title: "-")
        
        VStack {
            HStack {
                ForEach(emojis[0..<emonjiCount], id: \.offset) { emoji in
                    CardView(content: emoji.element)
                    
                }
            }
            .padding(.all)
            HStack {
                addButton
                Spacer()
                removeButton
            }
            
        }
    }
}

struct StdButton: View {
    var action: () -> Void
    var title: String
    
    var body: some View {
        var textColor: Color = Color.white
        var bgColor: Color = Color.blue
        
        Button(action: action, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .foregroundColor(bgColor)
                    .frame( width: 120, height: 40)
                Text(title)
                    .foregroundColor(textColor)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.horizontal, 5)
            .padding(.bottom, 5)

        })
    }
}

struct CardView: View {
    let id = UUID()
    let content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let radius: CGFloat = 16
            let outerColor: Color = Color.orange
            let innerColor: Color = Color.white
            
            if isFaceUp {
                RoundedRectangle(cornerRadius: radius)
                    .fill()
                    .foregroundColor(innerColor)
                RoundedRectangle(cornerRadius: radius)
                    .stroke(lineWidth: 3)
                    .foregroundColor(outerColor)
                Text(content)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: radius)
                    .fill()
                    .foregroundColor(outerColor)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
            
    }
}
