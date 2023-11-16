import SwiftUI

struct NearDoctors: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("NearDoctor")
                .foregroundColor(Colors.DarkBlue)
                .font(Poppins.Title)
        }
        .frame(alignment: .topLeading)
        .padding(.top, 12.0)
    }
}

#Preview {
    NearDoctors()
}
