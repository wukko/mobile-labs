import SwiftUI

struct ActionRow: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(
                spacing: Sizes.ActionRow.Spacing
            ) {
                ActionButton(
                    icon: "covid",
                    name: "Covid"
                )
                ActionButton(
                    icon: "doctors",
                    name: "Doctor"
                )
                ActionButton(
                    icon: "link",
                    name: "Medicine"
                )
                ActionButton(
                    icon: "hospital",
                    name: "Hospital"
                )
                ActionButton(
                    icon: "hospital",
                    name: "Hospital"
                )
            }
        }
        .padding(.top, Sizes.ActionRow.PaddingTop)
    }
}

#Preview {
    ActionRow()
}
