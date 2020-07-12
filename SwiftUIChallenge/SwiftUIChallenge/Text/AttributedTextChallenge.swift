//
//  AttributedTextChallenge.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 06/07/20.
//

import SwiftUI

struct AttributedTextChallenge: View {
    var body: some View {
        (Text("Copyright ").font(.body).foregroundColor(.gray) + Text("@").bold() + Text(" Amit Majumdar"))
    }
}

struct AttributedTextChallenge_Previews: PreviewProvider {
    static var previews: some View {
        AttributedTextChallenge()
    }
}
