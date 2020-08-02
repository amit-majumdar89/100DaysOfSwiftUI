//
//  CastAndCrew.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/06/20.
//

import Foundation

struct CastAndCrew : Identifiable {
    var id = UUID()
    var name: String
    var designation: String
    var image: String { return name }
}
