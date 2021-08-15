//
//  CustomTabBar.swift
//  ScrollHidenTabBar
//
//  Created by Thuận Nguyễn Văn on 15/08/2021.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var currentTab: String
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(["Mail", "Meet"], id: \.self){ image in
                TabButton(image: image, currentTab: $currentTab)
            }
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabButton: View {
    
    var image: String
    @Binding var currentTab: String
    
    var body: some View {
        Button {
            withAnimation{ currentTab = image }
        } label: {
            Image(image)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
                .foregroundColor(currentTab == image ? Color("Pink") : Color.gray.opacity(0.7))
                .frame(maxWidth: .infinity)
        }
    }
}
