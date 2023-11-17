import SwiftUI

struct ActionRow: View {
    let actions: [ActionButtonData]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Spacer().frame(width: Sizes.Base.Padding)
                LazyHStack(
                    spacing: Sizes.ActionRow.Spacing
                ) {
                    ForEach(0 ..< actions.count, id: \.self) { i in
                        ActionButton(
                            icon: actions[i].icon,
                            name: actions[i].name
                        )
                    }
                }
                Spacer().frame(width: Sizes.Base.Padding)
            }
        }
    }
}

#Preview {
    ActionRow(
        actions: [
            ActionButtonData(name: "Covid", icon: "covid"),
            ActionButtonData(name: "Medicine", icon: "link")
        ]
    )
}
