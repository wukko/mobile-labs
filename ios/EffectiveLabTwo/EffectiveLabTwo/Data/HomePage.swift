import Foundation
import SwiftUI

struct HomeData: Codable {
    let userName: String
    let doctorCard: DoctorCardData
    let actionButtons: [ActionButtonData]
    let nearDoctors: [NearDoctorData]
}
struct DoctorCardData: Codable {
    let image: String
    let name: String
    let title: String
    let date: String
    let timeRange: String
}
struct ActionButtonData: Codable {
    let name: String
    let icon: String
}
struct NearDoctorData: Codable {
    let image: String
    let name: String
    let title: String
    let rating: String
    let freeTime: String
    let distance: String
}
