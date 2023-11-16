import SwiftUI

struct HomeDemoScreen: View {
    var body: some View {
        ScrollView {
            VStack (
                alignment: .leading,
                spacing: Sizes.Page.Spacing
            ) {
                UserHeader()
                DoctorCard()
                SearchBar()
                ActionRow()
                NearDoctors()
            }
        }
        .padding(Sizes.Base.Padding)
        .background(.white)
    }
}

#Preview {
    HomeDemoScreen()
}
