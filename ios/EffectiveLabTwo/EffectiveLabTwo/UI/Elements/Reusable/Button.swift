import SwiftUI

struct SquishyButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.6 : 1)
            .scaleEffect(
                configuration.isPressed ? 0.9 : 1.0
            ).animation(
                .interpolatingSpring(stiffness: 1000, damping: 100),
                value: configuration.isPressed
            )
    }
}
