import SwiftUI

struct ActionButton: View {
    var icon: String
    var name: String

    var body: some View {
        NavigationLink(
            destination: SubView().navigationTitle("Dummy")
        ) {
            VStack(spacing: Sizes.ActionRow.VSpacing) {
                HStack {
                    Icon(
                        icon: icon,
                        size: Sizes.Icons.Big,
                        color: Colors.Blue
                    )
                }
                .padding(Sizes.Icons.Big)
                .background(Colors.SubBackground)
                .clipShape(Circle())

                Text(LocalizedStringKey(name))
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
