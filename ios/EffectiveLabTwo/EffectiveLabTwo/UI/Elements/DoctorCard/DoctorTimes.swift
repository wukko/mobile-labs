import SwiftUI

struct DoctorCardTimes: View {
    var body: some View {
        HStack (spacing: Sizes.DoctorCard.TimeSpacing) {
            Chip(
                icon: "calendar",
                title: "Sunday, 12 June"
            )
            Chip(
                icon: "clock",
                title: "11:00 - 12:00 AM"
            )
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
    }
}
