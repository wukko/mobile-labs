import SwiftUI

struct HomeDemoScreen: View {
    let ScreenData: HomeData = loadLocalJSON(
        filename: "dummyData"
    )
    var body: some View {
        VStack(spacing: 0) {
            UserHeader(
                name: ScreenData.userName
            )
            .padding(.horizontal, Sizes.Base.Padding)
            .padding(.top, Sizes.Header.PaddingTop)

            ScrollView (.vertical, showsIndicators: false) {
                LazyVStack (
                    alignment: .leading
                ) {
                    VStack (spacing: Sizes.Page.Spacing) {
                        DoctorCard(
                            image: ScreenData.doctorCard.image,
                            name: ScreenData.doctorCard.name,
                            title: ScreenData.doctorCard.title,
                            date: ScreenData.doctorCard.date,
                            timeRange: ScreenData.doctorCard.timeRange
                        )
                        SearchBar()
                    }
                    .padding([.horizontal, .bottom], Sizes.Base.Padding)
                    .padding(.top, Sizes.Page.Spacing)
                    
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
}

#Preview {
    HomeDemoScreen()
}
