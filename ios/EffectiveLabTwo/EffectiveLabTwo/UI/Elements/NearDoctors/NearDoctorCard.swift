import SwiftUI

struct NearDoctorCard: View {
    var body: some View {
        Button(action: {}) {
            VStack() {
                NearDoctorInfo()
                Divider()
                    .background(.white)
                    .padding(.top, Sizes.DoctorCard.Line.PaddingTop)
                    .padding(.bottom, Sizes.DoctorCard.Line.PaddingBottom)
                NearDoctorTimes()
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
            .shadow(color: Colors.Shadow, radius: 10, y: 12)
        }
        .buttonStyle(SquishyButton())
    }
}

#Preview {
    NearDoctorCard()
}
