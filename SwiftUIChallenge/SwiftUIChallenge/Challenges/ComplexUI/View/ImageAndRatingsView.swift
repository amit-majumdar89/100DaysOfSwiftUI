//
//  ImageAndRatingsView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/06/20.
//

import SwiftUI

/// Movie Image and Ratings view combined
struct ImageAndRatingsView: View {
    var image: String

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            MovieImageView(image: image)
            MovieRatingsView()
        }

    }
}
