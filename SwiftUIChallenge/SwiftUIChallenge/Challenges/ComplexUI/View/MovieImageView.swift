//
//  MovieImageView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/06/20.
//
import SwiftUI

/// View for movie image
struct MovieImageView: View {
    let image: String

    var body: some View {
        return VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 370)
                .clipped()
                .cornerRadius(radius: 50, corners: [.bottomLeft, .bottomRight])
            Spacer(minLength: 50)
        }
    }
}
