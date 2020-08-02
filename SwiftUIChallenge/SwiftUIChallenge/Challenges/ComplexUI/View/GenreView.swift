//
//  GenreView.swift
//  MovieDemoApp
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct GenreView: View {
    var body: some View {
        return HStack(spacing: 15) {
            Button(action: actionMethod) {
                Text("Action")
                    .padding([.leading,.trailing], 20)
                    .padding([.top,.bottom], 5)
                    .overlay(
                        Capsule(style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                )
            }.accentColor(.black)
            Button(action: actionMethod) {
                Text("Biography")
                    .padding([.leading,.trailing], 20)
                    .padding([.top,.bottom], 5)
                    .overlay(
                        Capsule(style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                )
            }.accentColor(.black)
            Button(action: actionMethod) {
                Text("Drama")
                    .padding([.leading,.trailing], 20)
                    .padding([.top,.bottom], 5)
                    .overlay(
                        Capsule(style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                )
            }.accentColor(.black)
        }.padding([.top], 10)
    }

    func actionMethod() {

    }
}
