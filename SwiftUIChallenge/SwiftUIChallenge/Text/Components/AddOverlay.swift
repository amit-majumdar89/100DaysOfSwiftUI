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
