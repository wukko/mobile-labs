import SwiftUI

struct UserHeader: View {
    var name: String

    var body: some View {
        HStack() {
            VStack(
                alignment: .leading,
                spacing: Sizes.Header.LineSpacing
            ) {
                Text("Hello")
                    .font(Poppins.BigCaption)
                    .foregroundColor(Colors.Gray)
                Text(name)
                    .font(Poppins.BigTitle)
                    .foregroundColor(Colors.DarkBlue)
            }

            Spacer()
            NavigationLink(
                destination: SubView().navigationTitle("Dummy")
            ) {
                ProfilePic(
                    icon: "DummyUser",
                    size: Sizes.Header.PhotoScale
                )
            }
            .accessibilityLabel(LocalizedStringKey("Accessibility_ProfilePic"))
            .buttonStyle(SquishyButton())
        }
        .padding(.bottom, Sizes.Header.BottomSpace)
        .frame(
            alignment: .leading
        )
    }
}

#Preview {
    UserHeader(
        name: "James Moore"
    )
}
