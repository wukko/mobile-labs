import SwiftUI

struct DoctorCard: View {
    var body: some View {
        VStack() {
            DoctorCardInfo()
            Divider()
                .background(.white)
                .padding(.top, Sizes.DoctorCard.Line.PaddingTop)
                .padding(.bottom, Sizes.DoctorCard.Line.PaddingBottom)
            DoctorCardTimes()
        }
        .padding(Sizes.DoctorCard.Padding)
        .frame(
            alignment: .leading
        )
        .background(Colors.Blue)
        .cornerRadius(Sizes.Base.CornerRadius)
    }
}
#Preview {
    DoctorCard()
}
