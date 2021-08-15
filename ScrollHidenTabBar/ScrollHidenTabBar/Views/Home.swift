//
//  Home.swift
//  ScrollHidenTabBar
//
//  Created by Thuận Nguyễn Văn on 15/08/2021.
//

import SwiftUI

struct Home: View {
    
    // Current TabBar ....
    @State var currentTab = "Mail"
    var bottomEdge: CGFloat
    
    // Hiding Native TabBar...
    init(bottomEdge: CGFloat) {
        UITabBar.appearance().isHidden = true
        self.bottomEdge = bottomEdge
    }
    
    
    var body: some View {
        
        // Tab View....
        TabView(selection: $currentTab,
                content:  {
                    Text("Mail")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.primary.opacity(0.05))
                        .tag("Mail")
                    Text("Meet")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.primary.opacity(0.05))
                        .tag("Meet")
                })
            .overlay(
                
                // Custom TabBar ...
                CustomTabBar(currentTab: $currentTab, bottomEdge: bottomEdge),
                alignment: .bottom
            )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
