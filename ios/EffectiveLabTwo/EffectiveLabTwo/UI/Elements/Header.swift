import SwiftUI

struct UserHeader: View {
    var body: some View {
        HStack() {
            VStack(
                alignment: .leading,
                spacing: Sizes.Header.LineSpacing
            ) {
                Text("Hello")
                    .font(Poppins.BigCaption)
                    .foregroundColor(Colors.Gray)
                Text("Hi James")
                    .font(Poppins.BigTitle)
                    .foregroundColor(Colors.DarkBlue)
            }

            Spacer()
            Button(action: {}) {
                ProfilePic(
                    icon: "DummyUser",
                    size: Sizes.Header.PhotoScale
                )
            }
        }
        .padding(.bottom, Sizes.Header.BottomSpace)
        .frame(
            alignment: .leading
        )
    }
}

#Preview {
    UserHeader()
}
