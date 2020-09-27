//
//  ContentView.swift
//  LMACounter
//
//  Created by Arifin Firdaus on 25/08/20.
//  Copyright © 2020 Learn Make Application. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 112) {
            makeCountText()
            HStack(alignment: .center, spacing: 64) {
                makeResetButton()
                makeCountButton()
            }
        }
    }
    
    fileprivate func makeCountText() -> Text {
        return Text("\(counter)")
            .font(Font.system(size: 68))
    }
    
    fileprivate func makeResetButton() -> some View {
        return Button(action: {
            self.counter = 0
        }) {
            Text("Reset")
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 130, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.red)
        .cornerRadius(8)
    }
    
    fileprivate func makeCountButton() -> some View {
        return Button(action: {
            self.counter += 1
        }) {
            Text("Count")
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 130, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.blue)
        .cornerRadius(8)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
