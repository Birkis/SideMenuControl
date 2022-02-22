//
//  SideMenuViewModel.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 22/05/2021.
//

import SwiftUI


struct ProfileView: View {
    
    
    var body: some View {
    
        Text("Profile View")
    
    
    }
}

struct ListsView: View {
    
    
    var body: some View {
    
        Text("List View")
    
    
    }
}

struct BookmarksView: View {
    
    
    var body: some View {
    
        Text("Bookmarks View")
    
    
    }
}

struct MessagesView: View {
    
    
    var body: some View {
    
        Text("Messages View")
    
    
    }
}

struct NotificationsView: View {
    
    
    var body: some View {
    
        Text("Notifications View")
    
    
    }
}

struct LogoutView: View {
    
    
    var body: some View {
    
        Text("Logout View")
    
    
    }
}

struct ScoreView: View {
    
    var body: some View {
        
        Text("Score View")
        
    }
    
}


enum SideMenuViewModel: Int, CaseIterable, View {
    
    
    // CASE ITERABLE: Looper over alle cases i enum (duh). Bruk .allCases i en ForEach for å hente ut hver case
    
    
    case profile
    case lists
    case bookmarks
    case messages
    case notifications
    case logout
    case score
    
    
    
    // Genererer en variabel string for hver case. Hentes ut med .allCases
    var title: String {
        
        switch self {
            case .profile:
                return "Profile"
            case .lists:
                return "Lists"
            case .bookmarks:
                return "Bookmarks"
            case .messages:
                return "Messages"
            case .notifications:
                return "Notifications"
            case .logout:
                return "Logout"
            case .score:
                return "score"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile:
            return "person"
        case .lists:
            return "list.bullet"
        case .bookmarks:
            return "bookmark"
        case .messages:
            return "bubble.left"
        case .notifications:
            return "bell"
        case .logout:
            return "arrow.left.square"
        case .score:
            return "arrow.right.square"
        }
    }
    
    var color: Color {
        switch self {
        
        case .profile:
            return Color.blue
        case .lists:
            return Color.red
        case .bookmarks:
            return Color.green
        case .messages:
            return Color.pink
        case .notifications:
            return Color.orange
        case .logout:
            return Color.purple
        case .score:
            return Color.blue
        }
    }

    var body: some View {
        switch self {
            
        case .profile:
             ProfileView()
        case .lists:
            ListsView()
        case .bookmarks:
            BookmarksView()
        case .messages:
            MessagesView()
        case .notifications:
            NotificationsView()
        case .logout:
            LogoutView()
        case .score:
            ScoreView()
        }
        
        
    }
    
    
    
}
