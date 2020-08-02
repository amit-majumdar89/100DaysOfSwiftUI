//
//  MovieDescriptionView.swift
//  MovieDemoApp
//  Copyright © 2020 Deloitte Digital. All rights reserved.
//

import SwiftUI

struct MovieDescriptionView: View {
    var description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Plot Summary")
            Text(description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.all)
    }
}
