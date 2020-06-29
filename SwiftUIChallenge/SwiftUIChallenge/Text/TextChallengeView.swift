//
//  TextChallengeView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/06/20.
//

import SwiftUI

struct TextChallengeView: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.blue)
            .italic()
            .underline()
            .multilineTextAlignment(.center)
            .lineSpacing(10.0)
            .border(Color.black, width: 1)
            .padding(.all, 20)
            .background(Color.red)
            .shadow(color: .gray, radius: 2, x: 0, y: 15)
            .rotation3DEffect(
                .degrees(60),
                axis: (x: 1.0, y: 0.0, z: 0.0),
                anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                anchorZ: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
                perspective: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
    }
}

struct TextChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        TextChallengeView()
    }
}
