//
//  CastAndCrewsView.swift
//  MovieDemoApp
//  Copyright © 2020 Deloitte Digital. All rights reserved.
//

import SwiftUI

struct CastAndCrewsView: View {
    let castAndCrews: [CastAndCrew]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Cast and Crew")
                .padding(.all)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(castAndCrews) { castAndCrew in
                        CastAndCrewSingleView(castAndCrew: castAndCrew)
                    }
                }
            }
        }
    }
}
