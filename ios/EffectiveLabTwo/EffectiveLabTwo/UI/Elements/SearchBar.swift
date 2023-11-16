import SwiftUI

struct SearchBar: View {
    var body: some View {
        Button(action: {}) {
            HStack (spacing: Sizes.SearchBar.Spacing) {
                Icon(
                    icon: "search",
                    size: 24.0,
                    color: Colors.Gray
                )
                Text("SearchPlaceholder")
                    .font(Poppins.Caption)
                    .foregroundColor(Colors.Gray)
                Spacer()
            }
            .padding(Sizes.SearchBar.Padding)
            .background(Colors.SubBackground)
            .cornerRadius(Sizes.Base.CornerRadius)
        }
    }
}

#Preview {
    SearchBar()
}
