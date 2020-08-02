//
//  MovieDetail.swift
//  MovieDemoApp
//  Copyright © 2020 Deloitte Digital. All rights reserved.
//

import SwiftUI

enum MoviewDetailViews: CaseIterable, Identifiable {
    var id: MoviewDetailViews { self }

    case imageAndRatings
    case nameAndGenre
    case description
    case castAndCrews
}

struct MovieDetailView: View {
   
    let movie: Movie = testMovieDetailData
    @Environment(\.presentationMode) var presentation

    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView {
                ForEach(MoviewDetailViews.allCases, id: \.self) { movieDetail in
                    self.movieDetailViewType(viewType: movieDetail)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
            .navigationBarTitle("")

            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Image("back")
            }.accentColor(.black)
        }
    }
    
    func movieDetailViewType(viewType: MoviewDetailViews) -> some View {
        switch viewType {
        case .imageAndRatings:
            return AnyView(ImageAndRatingsView(image: movie.image))
        case .nameAndGenre:
            return AnyView(NameAndGenreView())
        case .description:
            return AnyView(MovieDescriptionView(description: movie.description))
        case .castAndCrews:
            return AnyView(CastAndCrewsView(castAndCrews: movie.castAndCrews))
        }
    }
}
