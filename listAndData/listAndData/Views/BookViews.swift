//
//  BookViews.swift
//  listAndData
//
//  Created by ian white on 2021/07/10.
//

import SwiftUI

extension Book {
    struct Image: View {
        var body: some View {
            SwiftUI.Image(systemName: "book")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.weight(.light))
                .foregroundColor(.secondary)
        }
    }
}
