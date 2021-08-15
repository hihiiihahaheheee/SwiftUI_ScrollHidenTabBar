//
//  Message.swift
//  ScrollHidenTabBar
//
//  Created by Thuận Nguyễn Văn on 15/08/2021.
//

import Foundation
import SwiftUI

struct Message: Identifiable {
    var id = UUID().uuidString
    var message: String
    var useName: String
    var tintColor: Color
}

var allMessages: [Message] = [
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .pink),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .red),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .black),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .purple),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .orange),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .gray),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .yellow),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .green),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .pink),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .red),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .black),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .purple),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .orange),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .gray),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .yellow),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .green),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .pink),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .red),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .black),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .purple),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .orange),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .gray),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .yellow),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .green),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .pink),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .red),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .black),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .purple),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .orange),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .gray),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .yellow),
    Message(message: "Can we go to the park", useName: "Mr Thuan", tintColor: .green)
]
