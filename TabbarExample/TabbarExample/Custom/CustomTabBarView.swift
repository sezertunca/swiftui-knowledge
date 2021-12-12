import SwiftUI

struct CustomTabBarView<Content: View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs = [TabBarItem]()
    
    public init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            content
                .ignoresSafeArea()
            CustomTabBarItemView(tabs: tabs, selection: $selection, localSelection: selection)

        }
        .onPreferenceChange( TabBarItemPreferenceKey.self) { value in
            self.tabs = value
        }
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
                
        CustomTabBarView(selection: .constant(.home)) {
            Color.red
        }
    }
}
