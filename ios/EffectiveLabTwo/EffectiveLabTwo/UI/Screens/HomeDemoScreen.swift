import SwiftUI

struct HomeDemoScreen: View {
    let ScreenData: HomeData = loadLocalJSON(
        filename: "dummyData"
    )
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            LazyVStack (
                alignment: .leading
            ) {
                VStack (spacing: Sizes.Page.Spacing) {
                    UserHeader(
                        name: ScreenData.userName
                    )
                    DoctorCard(
                        image: ScreenData.doctorCard.image,
                        name: ScreenData.doctorCard.name,
                        title: ScreenData.doctorCard.title,
                        date: ScreenData.doctorCard.date,
                        timeRange: ScreenData.doctorCard.timeRange
                    )
                    SearchBar()
                }
                .padding(Sizes.Base.Padding)

                ActionRow(
                    actions: ScreenData.actionButtons
                )

                VStack (spacing: Sizes.Page.Spacing) {
                    NearDoctors(
                        doctors: ScreenData.nearDoctors
                    )
                }
                .padding(Sizes.Base.Padding)
            }
        }
        .background(.white)
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    HomeDemoScreen()
}
