//
//  EmailTextFieldModifier.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 30/07/20.
//

import SwiftUI



struct EmailTextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Open Sans", size: 14))
            .foregroundColor(Color.black)
            .keyboardType(.emailAddress)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .textContentType(.emailAddress)
            .autocapitalization(.none)
    }
}
