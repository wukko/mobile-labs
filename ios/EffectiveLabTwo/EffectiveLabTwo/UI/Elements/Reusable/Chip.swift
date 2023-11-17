import SwiftUI

struct Chip: View {
    var icon: String
    var title: String
    var color: Color? = .white
    var iconSize: CGFloat? = Sizes.Default.IconSize

    var body: some View {
        HStack(
            alignment: .center,
            spacing: Sizes.Chip.Spacing
        ) {
            Icon(
                icon: icon,
                size: iconSize,
                color: color
            )
            Text(LocalizedStringKey(title))
                .foregroundColor(color)
                .font(Poppins.Chip)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    Chip(
        icon: "clock",
        title: "11:00 - 12:00 AM",
        color: .black,
        iconSize: 16.0
    )
}
