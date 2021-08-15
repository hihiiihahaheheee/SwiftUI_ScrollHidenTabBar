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
    
    // Hiding Native TabBar...
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View {
        
        // Tab View....
        TabView(selection: $currentTab,
                content:  {
                    Text("Mail").tag("Mail")
                    Text("Meet").tag("Meet")
                })
            .overlay(
                
                // Custom TabBar ...
                CustomTabBar(currentTab: $currentTab),
                alignment: .bottom
            )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
