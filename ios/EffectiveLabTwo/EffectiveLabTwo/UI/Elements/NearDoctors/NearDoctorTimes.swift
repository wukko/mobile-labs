import SwiftUI

struct NearDoctorTimes: View {
    var body: some View {
        HStack (spacing: Sizes.DoctorCard.TimeSpacing) {
            Chip(
                icon: "clock",
                title: "4,8 (120 Reviews)",
                color: Colors.Yellow
            )
            Chip(
                icon: "clock",
                title: "Open at 17.00",
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
    NearDoctorTimes()
}
