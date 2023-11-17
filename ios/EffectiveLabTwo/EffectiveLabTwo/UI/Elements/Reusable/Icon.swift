import SwiftUI

struct Icon: View {
    var icon: String = "clock"
    var size: CGFloat? = Sizes.Default.IconSize
    var color: Color? = .black

    var body: some View {
        Image(icon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(
                width: size,
                height: size,
                alignment: .center
            )
            .clipped()
            .foregroundColor(color)
    }
}

#Preview {
    Icon(
        icon: "calendar"
    )
}
