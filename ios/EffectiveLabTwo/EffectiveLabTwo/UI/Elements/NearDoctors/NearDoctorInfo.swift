import SwiftUI

struct NearDoctorInfo: View {
    let image: String
    let name: String
    let title: String
    let distance: String
    
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
                    .foregroundColor(Colors.DarkBlue)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(LocalizedStringKey(title))
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
                Text(distance)
                    .font(Poppins.SmallCaption)
                    .foregroundColor(Colors.Gray)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

#Preview {
    NearDoctorInfo(
        image: "doctor2",
        name: "Dr. Joseph Brostito",
        title: "Dental Specialist",
        distance: "1.2 KM"
    )
}
