//
//  AddOverlay.swift
//  100DaysOfSwiftUI
//
//  Created by Khasnobis, Pritha on 04/07/20.
//  Copyright © 2020 Deloitte. All rights reserved.
//

import SwiftUI

// Overlay for ny view
struct AddOverlay<Content: View, Overlay: View>: View {
    
    let content: Content
    let overlay: Overlay
    
    internal init(_ content: Content, _ overlay: Overlay) {
        self.content = content
        self.overlay = overlay
    }
    
    var body: some View {
        content
            .overlay(overlay)
            .mask(content)
    }
}
