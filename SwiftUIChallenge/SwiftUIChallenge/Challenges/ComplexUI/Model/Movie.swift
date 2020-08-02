//
//  Movie.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/06/20.
//

import SwiftUI

struct Movie : Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var castAndCrews: [CastAndCrew]

    var image: String { return name }
}



let testMovieDetailData = Movie(name: "Ford V Ferrari",
                         description: "American automotive designer Carroll Shelby and fearless British race car driver Ken Miles battle corporate interference, the laws of physics and their own personal demons to build a revolutionary vehicle for the Ford Motor Co.",
                        castAndCrews: testCastAndCrewData)

let testCastAndCrewData = [
    CastAndCrew(name: "James Mangold", designation: "Director"),
    CastAndCrew(name: "Matt Damon", designation: "Carroll"),
    CastAndCrew(name: "Christian Bale", designation: "Ken Miles"),
    CastAndCrew(name: "Caitriona Balfe", designation: "Mollie")
]
