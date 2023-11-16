import SwiftUI

struct NearDoctors: View {
    var body: some View {
        VStack (
            alignment: .leading,
            spacing: 12.0
        ) {
            Text("NearDoctor")
                .foregroundColor(Colors.DarkBlue)
                .font(Poppins.Title)

            LazyVStack (
                alignment: .leading,
                spacing: 12.0
            ) {
                ForEach(1...10, id: \.self) { _ in
                    NearDoctorCard()
                }
            }
        }
        .frame(alignment: .topLeading)
        .padding(.top, Sizes.Base.Padding / 2)
    }
}

#Preview {
    NearDoctors()
}
