//
//  MovieSubDetailView.swift
//  MovieDemoApp
//  Copyright © 2020 Singh, Nilaakash Uday (US - Mumbai). All rights reserved.
//

import SwiftUI

struct MovieSubDetailView: View {
    var body: some View {
        return HStack(spacing: 10) {
            Text("2019")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
            Text("PG-13")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
            Text("2hr 32min")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
        }
    }
}
