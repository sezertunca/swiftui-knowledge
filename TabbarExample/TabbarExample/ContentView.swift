import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection: TabBarItem =  .home
        
    var body: some View {

        CustomTabBarView(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: .home, selection: $tabSelection)
            Color.red
                .tabBarItem(tab: .favourites, selection: $tabSelection)

            Color.green
                .tabBarItem(tab: .profile, selection: $tabSelection)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    private var defaultTabView: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
        
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}
