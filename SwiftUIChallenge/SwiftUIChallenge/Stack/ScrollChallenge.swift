//
//  ScrollChallenge.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 12/07/20.
//

import SwiftUI

struct ScrollChallenge: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(Forest.items, id:\.self) { item in
                    ForestRow(item: item)
                }
            }.navigationTitle("Forests")
        }
    }
}

struct ScrollChallenge_Previews: PreviewProvider {
    static var previews: some View {
        ScrollChallenge()
    }
}
