//
//  UIView+Custom.swift
//  100DaysOfSwiftUI
//
//  Created by Khasnobis, Pritha on 04/07/20.
//  Copyright © 2020 Deloitte. All rights reserved.
//

import SwiftUI

extension View {
    
    // Add overlay
    public func foreground<Overlay: View>(_ overlay: Overlay)-> some View {
        AddOverlay(self, overlay)
    }
    
    // Add gradient
    public func gradient()-> some View {
        LinearGradient(
            gradient: .init(colors: [.red, .green, .yellow, .purple, .blue]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}


