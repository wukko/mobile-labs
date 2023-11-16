import SwiftUI

struct DoctorCardInfo: View {
    var body: some View {
        Button (action: {}) {
            HStack {
                ProfilePic(
                    icon: "DummyUser",
                    size: Sizes.DoctorCard.PhotoScale
                )

                VStack (
                    alignment: .leading,
                    spacing: Sizes.DoctorCard.LineSpacing
                ) {
                    Text("Dr. Imran Syahir")
                        .font(Poppins.ThickTitle)
                        .foregroundColor(.white)
                    Text("GeneralDoctor")
                        .font(Poppins.SmallCaption)
                        .foregroundColor(Colors.BrightGray)
                }

                Spacer()

                Icon(
                    icon: "arrow-right",
                    size: Sizes.Icons.Big,
                    color: .white
                )
            }
        }
    }
}
