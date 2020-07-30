//
//  UnderLinedText.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 30/07/20.
//

import SwiftUI

struct UnderLinedText: View {
    var title: String = ""
    var font: Font = .custom("Open Sans", size: 14)

    var titleColor: Color = .white
    var alignment: Alignment = .leading
    let tapAction: () -> Void
    
    var body: some View {
        Text(title)
            .foregroundColor(titleColor)
            .font(font)
            .underline()
            .frame(width: UIScreen.main.bounds.width - 40, height: 40, alignment: alignment)
            .onTapGesture {
                tapAction()
            }
    }
}
