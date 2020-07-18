//
//  ButtonChallenge.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 13/07/20.
//

import SwiftUI

struct ButtonChallenge: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello World")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5)
                )
            Button(action: {
                print("Delete tapped!")
            }) {
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientButtonStyle())
            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
            
            VStack {
                Button(action: {
                    print("Delete tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientButtonStyle())
                
                Button(action: {
                    print("Share tapped!")
                }) {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                        Text("Share")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientButtonStyle())
                
                Button(action: {
                    print("Edit tapped!")
                }) {
                    HStack {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
    }
}

struct ButtonChallenge_Previews: PreviewProvider {
    static var previews: some View {
        ButtonChallenge()
    }
}
