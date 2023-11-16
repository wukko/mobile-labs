import SwiftUI

struct ViewContainer: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeDemoScreen()
            }.tabItem {
                HStack {
                    Image("home")
                    Text("Home")
                }
            }
            NavigationView {
                Text("Calendar").navigationTitle("Calendar")
            }.tabItem {
                Image("calendar_tab")
                Text("Calendar")
            }

            NavigationView {
                Text("Messages").navigationTitle("Messages")
            }.tabItem {
                Image("message")
                Text("Messages")
            }

            NavigationView {
                Text("Profile").navigationTitle("Profile")
            }.tabItem {
                Image("profile")
                Text("Profile")
            }
        }
        .accentColor(Colors.Blue)
    }
}

#Preview {
    ViewContainer()
}
