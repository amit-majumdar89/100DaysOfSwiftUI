//
//  GradientButtonStyle.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 13/07/20.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: .zero, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
