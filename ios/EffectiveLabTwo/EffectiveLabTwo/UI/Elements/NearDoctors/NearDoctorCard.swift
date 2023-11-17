import SwiftUI

struct NearDoctorCard: View {
    let image: String
    let name: String
    let title: String
    let distance: String
    let rating: String
    let freeTime: String

    var body: some View {
        NavigationLink(
            destination: SubView().navigationTitle("Dummy")
        ) {
            VStack() {
                NearDoctorInfo(
                    image: image,
                    name: name,
                    title: title,
                    distance: distance
                )
                Divider()
                    .background(.white)
                    .padding(.top, Sizes.DoctorCard.Line.PaddingTop)
                    .padding(.bottom, Sizes.DoctorCard.Line.PaddingBottom)
                NearDoctorTimes(
                    rating: rating,
                    freeTime: freeTime
                )
            }
            .padding(Sizes.DoctorCard.Padding)
            .frame(
                alignment: .leading
            )
            .background(.white)
            .cornerRadius(Sizes.Base.CornerRadius)
            .overlay(
                RoundedRectangle(
                    cornerRadius: Sizes.Base.CornerRadius
                ).stroke(Colors.Shadow, lineWidth: 1)
            )
            .shadow(
                color: Colors.Shadow,
                radius: Sizes.NearDoctors.ShadowRad,
                y: Sizes.NearDoctors.ShadowY
            )
        }
        .buttonStyle(SquishyButton())
    }
}

#Preview {
    NearDoctorCard(
        image: "doctor2",
        name: "Dr. Joseph Brostito",
        title: "Dental Specialist",
        distance: "1.2 KM",
        rating: "4,8 (120 Reviews)",
        freeTime: "Free at 13:00"
    )
}
