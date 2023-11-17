import SwiftUI

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case calendar
    case messages
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "Calendar"
        case .messages:
            return "Messages"
        case .profile:
            return "Profile"
        }
    }
    
    var icon: String{
        switch self {
        case .home:
            return "home"
        case .calendar:
            return "calendar_tab"
        case .messages:
            return "message"
        case .profile:
            return "profile"
        }
    }
}

struct TabbedView: View {
    @State var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                NavigationView {
                    HomeDemoScreen()
                }.tag(0)

                NavigationView {
                    SubView()
                }.tag(1)

                NavigationView {
                    SubView()
                }.tag(2)

                NavigationView {
                    SubView()
                }.tag(3)
            }

            ZStack (alignment: .leading){
                HStack (spacing: Sizes.Tabs.Spacing){
                    ForEach((TabbedItems.allCases), id: \.self){ item in
                        Button(action: { selectedTab = item.rawValue }) {
                            CustomTabItem(
                                icon: item.icon,
                                title: item.title,
                                isActive: (selectedTab == item.rawValue)
                            )
                        }
                        .frame(
                            maxWidth: .infinity
                        )
                        .buttonStyle(SquishyButton())
                    }
                }
            }
            .padding(.top, Sizes.Tabs.PaddingTop)
            .padding(.horizontal, Sizes.Base.Padding)
            .background(.white)
        }
    }
}

extension TabbedView{
    func CustomTabItem(icon: String, title: String, isActive: Bool) -> some View{
        HStack (spacing: Sizes.Tabs.InnerSpacing){
            if isActive {
                Icon(
                    icon: "\(icon)_fill",
                    size: Sizes.Icons.Big,
                    color: isActive ? Colors.Blue : Colors.Gray
                )
                Text(title)
                    .font(Nunito.TabTitle)
                    .foregroundColor(Colors.Blue)
                    .frame(
                        minWidth: Sizes.Tabs.MinWidth
                    )
            } else {
                Icon(
                    icon: icon,
                    size: Sizes.Icons.Big,
                    color: isActive ? Colors.Blue : Colors.Gray
                )
            }
        }
        .padding(Sizes.Tabs.Spacing)
        .background(isActive ? Colors.Blue.opacity(Colors.TabHighlightOpacity) : .clear)
        .cornerRadius(Sizes.Base.CornerRadius)
        .frame(
            height: Sizes.Tabs.Height
        )
    }
}

#Preview {
    TabbedView()
}
