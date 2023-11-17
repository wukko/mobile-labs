import SwiftUI

struct NearDoctors: View {
    let doctors: [NearDoctorData]

    var body: some View {
        VStack (
            alignment: .leading
        ) {
            Text("NearDoctor")
                .foregroundColor(Colors.DarkBlue)
                .font(Poppins.Title)

            LazyVStack (
                alignment: .leading,
                spacing: Sizes.NearDoctors.SpacingV
            ) {
                ForEach(0 ..< doctors.count, id: \.self) { i in
                    NearDoctorCard(
                        image: doctors[i].image,
                        name: doctors[i].name,
                        title: doctors[i].title,
                        distance: doctors[i].distance,
                        rating: doctors[i].rating,
                        freeTime: doctors[i].freeTime
                    )
                }
            }
        }
        .frame(alignment: .topLeading)
        .padding(.top, Sizes.Base.Padding / 2)
    }
}

#Preview {
    NearDoctors(
        doctors: [
            NearDoctorData(
                image: "doctor2",
                name: "Dr. Joseph Brostito",
                title: "Dental Specialist",
                rating: "4,8 (120 Reviews)",
                freeTime: "Free at 13:00",
                distance: "1.2 KM"
            ),
            NearDoctorData(
                image: "doctor1",
                name: "Dr. Joseph Brostito",
                title: "Dental Specialist",
                rating: "4,8 (120 Reviews)",
                freeTime: "Free at 13:00",
                distance: "1.2 KM"
            )
        ]
    )
}
