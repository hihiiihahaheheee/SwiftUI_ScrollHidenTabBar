//
//  ContentView.swift
//  ScrollHidenTabBar
//
//  Created by Thuận Nguyễn Văn on 15/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // For Safe Area Bottom ...
        GeometryReader { proxy in
            
            let bottomEdge = proxy.safeAreaInsets.bottom
            
            Home(bottomEdge: (bottomEdge == 0 ? 15 : bottomEdge))
                .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
