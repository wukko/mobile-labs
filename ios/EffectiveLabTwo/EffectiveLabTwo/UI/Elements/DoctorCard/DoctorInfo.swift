import SwiftUI

struct DoctorCardInfo: View {
    var body: some View {
        HStack (spacing: Sizes.DoctorCard.HSpacing) {
            ProfilePic(
                icon: "doctor1",
                size: Sizes.DoctorCard.PhotoScale
            )

            VStack (
                alignment: .leading,
                spacing: Sizes.DoctorCard.LineSpacing
            ) {
                Text("Dr. Imran Syahir")
                    .font(Poppins.ThickTitle)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("GeneralDoctor")
                    .font(Poppins.SmallCaption)
                    .foregroundColor(Colors.BrightGray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }

            Icon(
                icon: "arrow-right",
                size: Sizes.Icons.Big,
                color: .white
            )
        }
    }
}
