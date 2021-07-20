//
//  ContentView.swift
//  listAndData
//
//  Created by ian white on 2021/07/10.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			List(Library().sortedBooks, id: \.title) { book in
				BookRow(book: book)
			}
			.navigationTitle("My Libaray")
		}
	}
}

struct BookRow: View {
	let book: Book
	
	var body: some View {
		NavigationLink(destination: DetailView(book: book)) {
			HStack {
				Book.Image(title: book.title)
				
				VStack(alignment: .leading) {
					Text(book.title)
						.font(.title2)
					Text(book.author)
						.font(.title3)
						.foregroundColor(.secondary)
				}
				.lineLimit(1)
			}
		}
	}
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
			ContentView()
	}
}
