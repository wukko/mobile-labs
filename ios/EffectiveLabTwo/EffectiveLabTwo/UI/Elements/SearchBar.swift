import SwiftUI

struct SearchBar: View {
    var body: some View {
        Button(action: {}) {
            HStack (spacing: Sizes.SearchBar.Spacing) {
                Icon(
                    icon: "search",
                    size: Sizes.Icons.Big,
                    color: Colors.Gray
                )
                Text("SearchPlaceholder")
                    .font(Poppins.Caption)
                    .foregroundColor(Colors.Gray)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(Sizes.SearchBar.Padding)
            .background(Colors.SubBackground)
            .cornerRadius(Sizes.Base.CornerRadius)
        }
        .buttonStyle(SquishyButton())
    }
}

#Preview {
    SearchBar()
}
