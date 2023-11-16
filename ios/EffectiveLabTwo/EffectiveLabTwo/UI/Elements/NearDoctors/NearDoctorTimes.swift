import SwiftUI

struct NearDoctorTimes: View {
    let rating: String
    let freeTime: String

    var body: some View {
        HStack (spacing: Sizes.DoctorCard.TimeSpacing) {
            Chip(
                icon: "star",
                title: rating,
                color: Colors.Yellow
            )
            Chip(
                icon: "clock",
                title: freeTime,
                color: Colors.BrightBlue
            )
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
    }
}

#Preview {
    NearDoctorTimes(
        rating: "4,8 (120 Reviews)",
        freeTime: "Free at 13:00"
    )
}
