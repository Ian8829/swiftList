//
//  BookViews.swift
//  listAndData
//
//  Created by ian white on 2021/07/10.
//

import SwiftUI

struct TitleAndAuthorStack: View {
	let book: Book
	let titleFont: Font
	let authorFont: Font
	
	var body: some View {
		VStack(alignment: .leading) {
			Text(book.title)
				.font(titleFont)
			Text(book.author)
				.font(authorFont)
				.foregroundColor(.secondary)
		}
	}
}

extension Book {
	struct Image: View {
		let title: String
		var size: CGFloat?
			
		var body: some View {
				let symbol = SwiftUI.Image(title: title)
						?? .init(systemName: "book")
						
				symbol
					.resizable()
					.scaledToFit()
					.frame(width: size, height: size)
					.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.weight(.light))
					.foregroundColor(.secondary)
		}
}
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Book.Image(title: Book().title)
            Book.Image(title: "")
            Book.Image(title: "🤬")
        }
    }
}

extension Image {
    init?(title: String) {
        guard
            let character = title.first,
            case let symbolName = "\(character.lowercased()).square",
            UIImage(systemName: symbolName) != nil
        else {
            return nil
        }
        
        self.init(systemName: symbolName)
    }
}
