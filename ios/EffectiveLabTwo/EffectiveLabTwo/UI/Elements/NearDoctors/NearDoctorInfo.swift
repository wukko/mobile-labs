import SwiftUI

struct NearDoctorInfo: View {
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
                Text("Dr. Joseph Brostito")
                    .font(Poppins.ThickTitle)
                    .foregroundColor(Colors.DarkBlue)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("DentalSpecialist")
                    .font(Poppins.SmallCaption)
                    .foregroundColor(Colors.Gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            HStack {
                Icon(
                    icon: "location",
                    size: Sizes.Icons.Small,
                    color: Colors.Gray
                )
                Text("1.2 KM")
                    .font(Poppins.SmallCaption)
                    .foregroundColor(Colors.Gray)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

#Preview {
    NearDoctorInfo()
}
