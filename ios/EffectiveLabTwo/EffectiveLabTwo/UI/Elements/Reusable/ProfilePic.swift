import SwiftUI

struct ProfilePic: View {
    var icon: String = "DummyUser"
    var size: CGFloat? = Sizes.Default.ProfilePicSize

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
            .clipShape(Circle())
            .accessibilityLabel(LocalizedStringKey("Hello"))
    }
}

#Preview {
    ProfilePic(
        icon: "DummyUser",
        size: 40
    )
}
