//
//  RatingView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/06/20.
//

import SwiftUI

// Rating View
struct RatingView: View {
    var body: some View {
        VStack() {
            Image(systemName: "star.fill")
            Text("8.2/10")
            Text("150,212")
                .font(.subheadline)
                .foregroundColor(.secondary
            )
        }.padding(.all)
    }
}
