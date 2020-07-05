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


