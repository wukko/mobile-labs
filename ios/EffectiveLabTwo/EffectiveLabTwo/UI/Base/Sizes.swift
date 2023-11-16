import Foundation

struct Sizes {
    // base
    struct Default {
        static let ProfilePicSize = 48.0,
                   IconSize = 16.0
    }
    struct Base {
        static let CornerRadius = 12.0,
                   Padding = 24.0
    }
    struct Page {
        static let Spacing = 20.0
    }
    // elements
    
    // reusable
    struct Icons {
        static let Big = 24.0,
                   Regular = 20.0,
                   Small = 16.0
    }
    struct Chip {
        static let Spacing = 8.0
    }
    struct Header {
        static let LineSpacing = 2.0,
                   PhotoScale = 56.0,
                   BottomSpace = 10.0
    }
    struct DoctorCard {
        static let PhotoScale = 48.0,
                   Padding = 20.0,
                   LineSpacing = 4.0

        struct Line {
            static let PaddingTop = 8.0,
                       PaddingBottom = 16.0
        }
    }

    struct SearchBar {
        static let Spacing = 12.0,
                   Padding = 16.0
    }
    
    struct ActionRow {
        static let Spacing = 13.0,
                   ItemSize = 24.0,
                   VSpacing = 8.0,
                   PaddingTop = 4.0
    }
}
