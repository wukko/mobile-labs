import SwiftUI

struct DoctorCardInfo: View {
    let image: String
    let name: String
    let title: String

    var body: some View {
        HStack (spacing: Sizes.DoctorCard.HSpacing) {
            ProfilePic(
                icon: image,
                size: Sizes.DoctorCard.PhotoScale
            )

            VStack (
                alignment: .leading,
                spacing: Sizes.DoctorCard.LineSpacing
            ) {
                Text(name)
                    .font(Poppins.ThickTitle)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(LocalizedStringKey(title))
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

#Preview {
    DoctorCardInfo(
        image: "doctor1",
        name: "Dr. Imran Syahir",
        title: "GeneralDoctor"
    )
}
