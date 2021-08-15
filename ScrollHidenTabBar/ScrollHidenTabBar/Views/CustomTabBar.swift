//
//  CustomTabBar.swift
//  ScrollHidenTabBar
//
//  Created by Thuận Nguyễn Văn on 15/08/2021.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var currentTab: String
    var bottomEdge: CGFloat
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(["Mail", "Meet"], id: \.self){ image in
                TabButton(image: image, currentTab: $currentTab)
            }
            .padding(.top, 15)
            .padding(.bottom, bottomEdge)
            .background(Color.white)
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
    
    // Optional Badge ...
    var badge: Int = 0
    
    // Based on Color Scheme changing Color ...
    @Environment(\.colorScheme) var scheme
    
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
                .overlay(
                    Text("\(badge < 100 ? badge : 99)+")
                        .font(.caption.bold())
                        .foregroundColor(scheme == .dark ? .black : .white)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 5)
//                        .background(Color("Pink"), in: Capsule())
                        .background(
                            Capsule()
                                .stroke(scheme == .dark ? Color.black : .white, lineWidth: 4.0)
                        )
                        .offset(x: 20, y: -5)
                        .opacity(badge == 0 ? 0 : 1),
                    alignment: .topTrailing
                )
                .frame(maxWidth: .infinity)
        }
    }
}
