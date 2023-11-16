import SwiftUI

struct DoctorCardTimes: View {
    var body: some View {
        HStack {
            Chip(
                icon: "calendar",
                title: "Sunday, 12 June"
            )
            Spacer()
            Chip(
                icon: "clock",
                title: "11:00 - 12:00 AM"
            )
        }
    }
}
