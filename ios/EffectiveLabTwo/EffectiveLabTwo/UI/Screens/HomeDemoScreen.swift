import SwiftUI

struct HomeDemoScreen: View {
    var body: some View {
        ScrollView {
            VStack (
                alignment: .leading
            ) {
                VStack (spacing: Sizes.Page.Spacing) {
                    UserHeader()
                    DoctorCard()
                    SearchBar()
                }
                .padding(Sizes.Base.Padding)

                ActionRow()

                VStack (spacing: Sizes.Page.Spacing) {
                    NearDoctors()
                }
                .padding(Sizes.Base.Padding)
            }
        }
        .background(.white)
    }
}

#Preview {
    HomeDemoScreen()
}
