import SwiftUI

struct DoctorCard: View {
    let image: String
    let name: String
    let title: String
    let date: String
    let timeRange: String

    var body: some View {
        NavigationLink(
            destination: SubView().navigationTitle("Dummy")
        ) {
            VStack() {
                DoctorCardInfo(
                    image: image,
                    name: name,
                    title: title
                )
                Divider()
                    .background(.white)
                    .padding(.top, Sizes.DoctorCard.Line.PaddingTop)
                    .padding(.bottom, Sizes.DoctorCard.Line.PaddingBottom)
                DoctorCardTimes(
                    date: date,
                    timeRange: timeRange
                )
            }
            .padding(Sizes.DoctorCard.Padding)
            .frame(
                alignment: .leading
            )
            .background(Colors.Blue)
            .cornerRadius(Sizes.Base.CornerRadius)
        }
        .buttonStyle(SquishyButton())
    }
}
#Preview {
    DoctorCard(
        image: "doctor1",
        name: "Dr. Imran Syahir",
        title: "GeneralDoctor",
        date: "Friday, 12 July",
        timeRange: "11:40 - 12:30 PM"
    )
}
