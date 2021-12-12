//
//  CustomTabBarView.swift
//  TabbarExample
//
//  Created by Sezer Tunca on 12/12/2021.
//

import SwiftUI

struct CustomTabBarItemView: View {
    
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace private var namespace
    @State var localSelection: TabBarItem
    
    var body: some View {
        tabBarVersion
            .onChange(of: selection) { newValue in
                withAnimation(.easeInOut) {
                    localSelection = newValue
                }
            }
    }
    
    private func select(tab: TabBarItem) {
        selection = tab
    }
}

struct CustomTabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarItemView(tabs: [.home, .favourites, .profile], selection: .constant(.home), localSelection: .home)
        }
        
    }
}

extension CustomTabBarItemView {
    
    private func tabView(tab: TabBarItem) -> some View {
        
        VStack {
            Image(systemName: tab.icon)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(localSelection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(
            ZStack {
                if localSelection == tab {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(tab.color.opacity(0.2))
                        .matchedGeometryEffect(id: "background_rec", in: namespace)
                }
            }
        )
    }
    
    private var tabBarVersion: some View {
        HStack {
            ForEach(tabs, id:\.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        select(tab: tab)
                    }
            }
        }
        .padding(6)
        .background(Color.white.ignoresSafeArea(edges: .bottom))
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
    }
}

