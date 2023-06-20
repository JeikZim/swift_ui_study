//
//  ContentView.swift
//  studyFirst
//
//  Created by Гость on 20.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                HStack {
                    GlobeImage()
                    GlobeImage()
                    GlobeImage()
                }
                Text("Hello, Pure Native!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
//                    .foregroundColor(.red)
            }
            .foregroundColor(.orange)
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 5)
                .foregroundColor(.orange)
                .padding(.horizontal)
        }
        .padding(.vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//func GlobeImage () -> some View {
//    return Image(systemName: "globe")
//        .imageScale(.large)
//        .foregroundColor(.accentColor)
//}

struct GlobeImage: View {
    var body: some View {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundColor(.accentColor)
    }
}
