import SwiftUI

enum TabBarItem: Hashable {
    
    case home, favourites, profile
    
    var icon: String {
        switch self {
        case .home:
            return "house"
        case .favourites:
            return "heart"
        case .profile:
            return "person"
        }
    }
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .favourites:
            return "Favourites"
        case .profile:
            return "Profile"
        }
    }
    
    var color: Color {
        switch self {
        case .home:
            return .orange
        case .favourites:
            return .green
        case .profile:
            return .blue
        }
    }
}
