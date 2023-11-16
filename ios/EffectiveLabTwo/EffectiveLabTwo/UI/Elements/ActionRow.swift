import SwiftUI

struct ActionRow: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Spacer().frame(width: Sizes.Base.Padding)
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
                        icon: "home",
                        name: "Calendar"
                    )
                    ActionButton(
                        icon: "doctors",
                        name: "Doctor"
                    )
                }
                Spacer().frame(width: Sizes.Base.Padding)
            }
        }
    }
}

#Preview {
    ActionRow()
}
