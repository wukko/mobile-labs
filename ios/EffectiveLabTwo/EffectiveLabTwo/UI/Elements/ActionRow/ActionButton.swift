import SwiftUI

struct ActionButton: View {
    var icon: String
    var name: LocalizedStringKey

    var body: some View {
        Button(action: {}) {
            VStack(spacing: Sizes.ActionRow.VSpacing) {
                HStack {
                    Icon(
                        icon: icon,
                        size: Sizes.Icons.Big,
                        color: Colors.IconBlue
                    )
                }
                .padding(Sizes.Icons.Big)
                .background(Colors.SubBackground)
                .clipShape(Circle())

                Text(name)
                    .font(Poppins.Caption)
                    .foregroundColor(Colors.Gray)
            }
        }
        .buttonStyle(SquishyButton())
    }
}

#Preview {
    ActionButton(
        icon: "covid",
        name: "Covid"
    )
}
