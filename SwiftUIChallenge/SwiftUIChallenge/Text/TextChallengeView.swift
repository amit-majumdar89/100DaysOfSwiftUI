//
//  TextChallengeView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/06/20.
//

import SwiftUI

struct TextChallengeView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .italic()
                .underline()
                .multilineTextAlignment(.center)
                .lineSpacing(10.0)
                .border(Color.black, width: 1)
                .padding(.all, 20)
                .background(Color.red)
                .shadow(color: .gray, radius: 2, x: 0, y: 15)
                .rotation3DEffect(
                    .degrees(60),
                    axis: (x: 1.0, y: 0.0, z: 0.0),
                    anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    anchorZ: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
                    perspective: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            Text("HELLO!")
                .shadow(color: .black, radius: 1)
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .bold))
            
            Text("WELCOME TO")
                .shadow(color: .green, radius: 3)
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .bold))
            
            OutlinedText(text: " 100 Days of SwiftUI ", width: 0.5, color: .red)
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .bold))
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.red, lineWidth: 5)
                )
            
            Text("We are studying about different swift UI components in 100 days and this is a multiline Text with gradient background effect")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal, 32)
                .padding(.vertical)
                .background(gradient())
                .cornerRadius(12)
            
            Text("This is gradient foreground effct")
                .font(.system(size: 20, weight: .bold))
                .foreground(gradient())
                .padding(.horizontal, 32)
                .padding(.vertical)
                .cornerRadius(12)
            
           Text("Fancy Stroke")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.blue)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.blue, lineWidth: 5))
            
            (Text("Attribured ").fontWeight(.bold) +
            Text("property ").underline() +
            Text("of ").foregroundColor(Color.red) +
            Text("text").foregroundColor(Color.purple).italic()).frame(height: 40)
        }
        
    }
}

struct TextChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        TextChallengeView()
    }
}
