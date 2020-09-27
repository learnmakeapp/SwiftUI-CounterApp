//
//  ContentView.swift
//  LMACounter
//
//  Created by Arifin Firdaus on 25/08/20.
//  Copyright © 2020 Learn Make Application. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
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
        return Text("33")
            .font(Font.system(size: 68))
    }
    
    fileprivate func makeResetButton() -> some View {
        return Button(action: {
            print("reset button tapped")
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
            print("count button tapped")
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
