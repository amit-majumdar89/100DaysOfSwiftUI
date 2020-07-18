//
//  ShadowButtonStyle.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 13/07/20.
//

import SwiftUI

struct ShadowButtonStyle: ButtonStyle {
   
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
    }
}
