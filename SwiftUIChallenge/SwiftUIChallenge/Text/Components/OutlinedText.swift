//
//  OutlinedText.swift
//  100DaysOfSwiftUI
//
//  Created by Khasnobis, Pritha on 04/07/20.
//  Copyright © 2020 Deloitte. All rights reserved.
//

import SwiftUI

// Outline of a text using offset
struct OutlinedText: View {
    
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}
