import SwiftUI

struct ProfilePic: View {
    var icon: String = "DummyUser"
    var size: CGFloat? = Sizes.Default.ProfilePicSize
    var bgColor: Color? = .white

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
            .background(bgColor)
            .clipShape(Circle())
    }
}

#Preview {
    ProfilePic(
        icon: "DummyUser",
        size: 40
    )
}
