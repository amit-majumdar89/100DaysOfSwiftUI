//
//  ImageChallengeView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 02/07/20.
//

import SwiftUI

struct ImageChallengeView: View {
    var body: some View {
        VStack(content: {
            Text("Text With Image")
                .font(.largeTitle)
            Image("tree1")
               .resizable()
               .scaledToFill()
               .frame(width: 300, height: 300, alignment: .center)
               .border(Color.blue, width: 3.0)
               .cornerRadius(16.0)
               .clipped()
            Image(systemName: "cloud.heavyrain.fill")
                .resizable()
                .font(.largeTitle)
                .foregroundColor(Color.green)
                .frame(width: 30, height: 30, alignment: .center)
        })
    }
}

struct ImageChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ImageChallengeView()
    }
}
