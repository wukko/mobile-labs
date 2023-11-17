import SwiftUI

struct DoctorCardTimes: View {
    let date: String
    let timeRange: String

    var body: some View {
        HStack (spacing: Sizes.DoctorCard.TimeSpacing) {
            Chip(
                icon: "calendar",
                title: date
            )
            Chip(
                icon: "clock",
                title: timeRange
            )
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
    }
}

#Preview {
    DoctorCardTimes(
        date: "Friday, 12 July",
        timeRange: "11:40 - 12:30 PM"
    )
}
